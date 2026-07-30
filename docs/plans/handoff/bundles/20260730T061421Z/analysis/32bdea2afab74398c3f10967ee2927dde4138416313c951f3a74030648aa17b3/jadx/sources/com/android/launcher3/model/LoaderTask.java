package com.android.launcher3.model;

import android.app.PendingIntent;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.os.LocaleList;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import android.util.TimingLogger;
import b.l.W;
import c.a.a.N0.C0209f;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherModel.LoaderTransaction;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherActivityCachingLogic;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.icons.cache.IconCacheUpdateHandler;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.CacheDataUpdatedTask;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class LoaderTask implements Runnable {
    public final LauncherAppState mApp;
    public final AllAppsList mBgAllAppsList;
    public final BgDataModel mBgDataModel;
    public FirstScreenBroadcast mFirstScreenBroadcast;
    public final IconCache mIconCache;
    public final LauncherApps mLauncherApps;
    public final LoaderResults mResults;
    public final InstallSessionHelper mSessionHelper;
    public boolean mStopped;
    public final UserCache mUserCache;
    public final UserManager mUserManager;
    public final UserManagerState mUserManagerState = new UserManagerState();

    public LoaderTask(LauncherAppState launcherAppState, AllAppsList allAppsList, BgDataModel bgDataModel, LoaderResults loaderResults) {
        this.mApp = launcherAppState;
        this.mBgAllAppsList = allAppsList;
        this.mBgDataModel = bgDataModel;
        this.mResults = loaderResults;
        this.mLauncherApps = (LauncherApps) launcherAppState.mContext.getSystemService(LauncherApps.class);
        this.mUserManager = (UserManager) this.mApp.mContext.getSystemService(UserManager.class);
        this.mUserCache = (UserCache) UserCache.INSTANCE.b(this.mApp.mContext);
        this.mSessionHelper = (InstallSessionHelper) InstallSessionHelper.INSTANCE.b(this.mApp.mContext);
        this.mIconCache = this.mApp.mIconCache;
    }

    public static boolean isValidProvider(AppWidgetProviderInfo appWidgetProviderInfo) {
        ComponentName componentName;
        return (appWidgetProviderInfo == null || (componentName = appWidgetProviderInfo.provider) == null || componentName.getPackageName() == null) ? false : true;
    }

    public final List loadAllApps() {
        List<UserHandle> userProfiles = this.mUserCache.getUserProfiles();
        ArrayList arrayList = new ArrayList();
        AllAppsList allAppsList = this.mBgAllAppsList;
        allAppsList.data.clear();
        allAppsList.mDataChanged = false;
        allAppsList.mIndex = new AlphabeticIndexCompat(LocaleList.getDefault());
        for (UserHandle userHandle : userProfiles) {
            List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(null, userHandle);
            if (activityList == null || activityList.isEmpty()) {
                return arrayList;
            }
            boolean isUserQuiet = this.mUserManagerState.isUserQuiet(userHandle);
            for (int i = 0; i < activityList.size(); i++) {
                LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                this.mBgAllAppsList.add(new AppInfo(launcherActivityInfo, userHandle, isUserQuiet), launcherActivityInfo);
            }
            arrayList.addAll(activityList);
        }
        if (FeatureFlags.PROMISE_APPS_IN_ALL_APPS.get()) {
            Iterator it = ((ArrayList) this.mSessionHelper.getAllVerifiedSessions()).iterator();
            while (it.hasNext()) {
                this.mBgAllAppsList.addPromiseApp(this.mApp.mContext, new PackageInstallInfo((PackageInstaller.SessionInfo) it.next()));
            }
        }
        Iterator it2 = this.mBgDataModel.cachedPredictedItems.iterator();
        while (it2.hasNext()) {
            AppInfo appInfo = (AppInfo) it2.next();
            for (LauncherActivityInfo launcherActivityInfo2 : this.mLauncherApps.getActivityList(appInfo.componentName.getPackageName(), appInfo.user)) {
                this.mBgAllAppsList.add(new AppInfo(launcherActivityInfo2, appInfo.user, this.mUserManagerState.isUserQuiet(appInfo.user)), launcherActivityInfo2);
            }
        }
        this.mBgAllAppsList.setFlags(2, this.mUserManagerState.isAnyProfileQuietModeEnabled());
        this.mBgAllAppsList.setFlags(1, PackageManagerHelper.hasShortcutsPermission(this.mApp.mContext));
        this.mBgAllAppsList.setFlags(4, this.mApp.mContext.checkSelfPermission("android.permission.MODIFY_QUIET_MODE") == 0);
        AllAppsList allAppsList2 = this.mBgAllAppsList;
        boolean z = allAppsList2.mDataChanged;
        allAppsList2.mDataChanged = false;
        return arrayList;
    }

    public final void loadCachedPredictions() {
        synchronized (this.mBgDataModel) {
            List predictionComponentKeys = this.mApp.mPredictionModel.getPredictionComponentKeys();
            this.mBgDataModel.cachedPredictedItems.clear();
            Iterator it = ((ArrayList) predictionComponentKeys).iterator();
            while (it.hasNext()) {
                ComponentKey componentKey = (ComponentKey) it.next();
                List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(componentKey.componentName.getPackageName(), componentKey.user);
                if (activityList.size() != 0) {
                    AppInfo appInfo = new AppInfo(activityList.get(0), componentKey.user, this.mUserManagerState.mQuietUsersHashCodeMap.get(componentKey.user.hashCode()));
                    this.mBgDataModel.cachedPredictedItems.add(appInfo);
                    this.mIconCache.getTitleAndIcon(appInfo, false);
                }
            }
        }
    }

    public final List loadDeepShortcuts() {
        ShortcutRequest.QueryResult queryResult;
        ArrayList arrayList = new ArrayList();
        this.mBgDataModel.deepShortcutMap.clear();
        if ((this.mBgAllAppsList.mFlags & 1) != 0) {
            for (UserHandle userHandle : this.mUserCache.getUserProfiles()) {
                if (this.mUserManager.isUserUnlocked(userHandle)) {
                    Context context = this.mApp.mContext;
                    LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
                    shortcutQuery.setQueryFlags(11);
                    try {
                        queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
                    } catch (IllegalStateException | SecurityException e) {
                        Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                        queryResult = ShortcutRequest.QueryResult.DEFAULT;
                    }
                    arrayList.addAll(queryResult);
                    this.mBgDataModel.updateDeepShortcutCounts(null, userHandle, queryResult);
                }
            }
        }
        return arrayList;
    }

    public final void loadFolderNames() {
        Context context = this.mApp.mContext;
        ArrayList arrayList = this.mBgAllAppsList.data;
        IntSparseArrayMap intSparseArrayMap = this.mBgDataModel.folders;
        FolderNameProvider folderNameProvider = (FolderNameProvider) W.getObject(FolderNameProvider.class, context.getApplicationContext(), R.string.folder_name_provider_class);
        folderNameProvider.mAppInfos = arrayList;
        folderNameProvider.mFolderInfos = intSparseArrayMap;
        synchronized (this.mBgDataModel) {
            for (int i = 0; i < this.mBgDataModel.folders.size(); i++) {
                FolderNameInfos folderNameInfos = new FolderNameInfos();
                FolderInfo folderInfo = (FolderInfo) this.mBgDataModel.folders.valueAt(i);
                if (folderInfo.suggestedFolderNames == null) {
                    folderNameProvider.getSuggestedFolderName(this.mApp.mContext, folderInfo.contents, folderNameInfos);
                    folderInfo.suggestedFolderNames = folderNameInfos;
                }
            }
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public void loadWorkspace(java.util.List r36, android.net.Uri r37) {
        /*
            Method dump skipped, instructions count: 2594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.LoaderTask.loadWorkspace(java.util.List, android.net.Uri):void");
    }

    @Override // java.lang.Runnable
    public void run() {
        LauncherModel.LoaderTransaction loaderTransaction;
        synchronized (this) {
            if (this.mStopped) {
                return;
            }
            Trace.beginSection("LoaderTask");
            TimingLogger timingLogger = new TimingLogger("LoaderTask", "run");
            try {
                try {
                    LauncherModel launcherModel = this.mApp.mModel;
                    Objects.requireNonNull(launcherModel);
                    loaderTransaction = launcherModel.new LoaderTransaction(this, null);
                } catch (CancellationException unused) {
                    timingLogger.addSplit("Cancelled");
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    loadWorkspace(arrayList, LauncherSettings$Favorites.CONTENT_URI);
                    loadCachedPredictions();
                    timingLogger.addSplit("loadWorkspace");
                    verifyNotStopped();
                    this.mResults.bindWorkspace();
                    timingLogger.addSplit("bindWorkspace");
                    sendFirstScreenActiveInstallsBroadcast();
                    timingLogger.addSplit("sendFirstScreenActiveInstallsBroadcast");
                    waitForIdle();
                    timingLogger.addSplit("step 1 complete");
                    verifyNotStopped();
                    List loadAllApps = loadAllApps();
                    timingLogger.addSplit("loadAllApps");
                    verifyNotStopped();
                    LoaderResults loaderResults = this.mResults;
                    loaderResults.executeCallbacksTask(new C0209f(loaderResults.mBgAllAppsList.copyData(), loaderResults.mBgAllAppsList.mFlags), loaderResults.mUiExecutor);
                    timingLogger.addSplit("bindAllApps");
                    verifyNotStopped();
                    IconCache iconCache = this.mIconCache;
                    iconCache.updateSystemState();
                    IconCacheUpdateHandler iconCacheUpdateHandler = new IconCacheUpdateHandler(iconCache);
                    setIgnorePackages(iconCacheUpdateHandler);
                    LauncherActivityCachingLogic launcherActivityCachingLogic = (LauncherActivityCachingLogic) W.getObject(LauncherActivityCachingLogic.class, this.mApp.mContext, R.string.launcher_activity_logic_class);
                    final LauncherModel launcherModel2 = this.mApp.mModel;
                    Objects.requireNonNull(launcherModel2);
                    iconCacheUpdateHandler.updateIcons(loadAllApps, launcherActivityCachingLogic, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: c.a.a.N0.x
                        @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                        public final void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle) {
                            LauncherModel launcherModel3 = LauncherModel.this;
                            Objects.requireNonNull(launcherModel3);
                            launcherModel3.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                        }
                    });
                    timingLogger.addSplit("update icon cache");
                    if (FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) {
                        verifyNotStopped();
                        timingLogger.addSplit("save shortcuts in icon cache");
                        ShortcutCachingLogic shortcutCachingLogic = new ShortcutCachingLogic();
                        final LauncherModel launcherModel3 = this.mApp.mModel;
                        Objects.requireNonNull(launcherModel3);
                        iconCacheUpdateHandler.updateIcons(arrayList, shortcutCachingLogic, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: c.a.a.N0.x
                            @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                            public final void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle) {
                                LauncherModel launcherModel32 = LauncherModel.this;
                                Objects.requireNonNull(launcherModel32);
                                launcherModel32.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                            }
                        });
                    }
                    waitForIdle();
                    timingLogger.addSplit("step 2 complete");
                    verifyNotStopped();
                    List loadDeepShortcuts = loadDeepShortcuts();
                    timingLogger.addSplit("loadDeepShortcuts");
                    verifyNotStopped();
                    this.mResults.bindDeepShortcuts();
                    timingLogger.addSplit("bindDeepShortcuts");
                    if (FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) {
                        verifyNotStopped();
                        timingLogger.addSplit("save deep shortcuts in icon cache");
                        iconCacheUpdateHandler.updateIcons(loadDeepShortcuts, new ShortcutCachingLogic(), new IconCacheUpdateHandler.OnUpdateCallback() { // from class: c.a.a.N0.A
                            @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                            public final void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle) {
                            }
                        });
                    }
                    waitForIdle();
                    timingLogger.addSplit("step 3 complete");
                    verifyNotStopped();
                    List update = this.mBgDataModel.widgetsModel.update(this.mApp, null);
                    timingLogger.addSplit("load widgets");
                    verifyNotStopped();
                    this.mResults.bindWidgets();
                    timingLogger.addSplit("bindWidgets");
                    verifyNotStopped();
                    ComponentWithLabelAndIcon.ComponentWithIconCachingLogic componentWithIconCachingLogic = new ComponentWithLabelAndIcon.ComponentWithIconCachingLogic(this.mApp.mContext, true);
                    final LauncherModel launcherModel4 = this.mApp.mModel;
                    Objects.requireNonNull(launcherModel4);
                    iconCacheUpdateHandler.updateIcons(update, componentWithIconCachingLogic, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: c.a.a.N0.f0
                        @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                        public final void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle) {
                            LauncherModel launcherModel5 = LauncherModel.this;
                            Objects.requireNonNull(launcherModel5);
                            launcherModel5.enqueueModelUpdateTask(new BaseModelUpdateTask(launcherModel5, hashSet, userHandle) { // from class: com.android.launcher3.LauncherModel.4
                                public final /* synthetic */ HashSet val$updatedPackages;
                                public final /* synthetic */ UserHandle val$user;

                                public AnonymousClass4(LauncherModel launcherModel52, HashSet hashSet2, UserHandle userHandle2) {
                                    this.val$updatedPackages = hashSet2;
                                    this.val$user = userHandle2;
                                }

                                @Override // com.android.launcher3.model.BaseModelUpdateTask
                                public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                                    WidgetsModel widgetsModel = bgDataModel.widgetsModel;
                                    HashSet hashSet2 = this.val$updatedPackages;
                                    UserHandle userHandle2 = this.val$user;
                                    for (Map.Entry entry : widgetsModel.mWidgetsList.entrySet()) {
                                        if (hashSet2.contains(((PackageItemInfo) entry.getKey()).packageName)) {
                                            ArrayList arrayList2 = (ArrayList) entry.getValue();
                                            int size = arrayList2.size();
                                            for (int i = 0; i < size; i++) {
                                                WidgetItem widgetItem = (WidgetItem) arrayList2.get(i);
                                                if (widgetItem.user.equals(userHandle2)) {
                                                    ShortcutConfigActivityInfo shortcutConfigActivityInfo = widgetItem.activityInfo;
                                                    if (shortcutConfigActivityInfo != null) {
                                                        arrayList2.set(i, new WidgetItem(shortcutConfigActivityInfo, launcherAppState.mIconCache, launcherAppState.mContext.getPackageManager()));
                                                    } else {
                                                        arrayList2.set(i, new WidgetItem(widgetItem.widgetInfo, launcherAppState.mInvariantDeviceProfile, launcherAppState.mIconCache));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    bindUpdatedWidgets(bgDataModel);
                                }
                            });
                        }
                    });
                    timingLogger.addSplit("save widgets in icon cache");
                    if (FeatureFlags.FOLDER_NAME_SUGGEST.get()) {
                        loadFolderNames();
                    }
                    verifyNotStopped();
                    iconCacheUpdateHandler.finish();
                    timingLogger.addSplit("finish icon update");
                    synchronized (LauncherModel.this.mLock) {
                        LauncherModel.this.mModelLoaded = true;
                    }
                    loaderTransaction.close();
                    timingLogger.dumpToLog();
                    Trace.endSection();
                } catch (Throwable th) {
                    try {
                        loaderTransaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                timingLogger.dumpToLog();
                throw th3;
            }
        }
    }

    public final void sendFirstScreenActiveInstallsBroadcast() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        synchronized (this.mBgDataModel) {
            arrayList2.addAll(this.mBgDataModel.workspaceItems);
            arrayList2.addAll(this.mBgDataModel.appWidgets);
        }
        W.filterCurrentWorkspaceItems(this.mBgDataModel.collectWorkspaceScreens().get(0), arrayList2, arrayList, new ArrayList());
        FirstScreenBroadcast firstScreenBroadcast = this.mFirstScreenBroadcast;
        Context context = this.mApp.mContext;
        for (Map.Entry entry : firstScreenBroadcast.mPackagesForInstaller.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            HashSet hashSet4 = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                if (itemInfo instanceof FolderInfo) {
                    Iterator it2 = ((FolderInfo) itemInfo).contents.iterator();
                    while (it2.hasNext()) {
                        String packageName = FirstScreenBroadcast.getPackageName((ItemInfo) it2.next());
                        if (packageName != null && list.contains(packageName)) {
                            hashSet.add(packageName);
                        }
                    }
                }
                String packageName2 = FirstScreenBroadcast.getPackageName(itemInfo);
                if (packageName2 != null && list.contains(packageName2)) {
                    if (itemInfo instanceof LauncherAppWidgetInfo) {
                        hashSet4.add(packageName2);
                    } else {
                        int i = itemInfo.container;
                        if (i == -101) {
                            hashSet3.add(packageName2);
                        } else if (i == -100) {
                            hashSet2.add(packageName2);
                        }
                    }
                }
            }
            context.sendBroadcast(new Intent("com.android.launcher3.action.FIRST_SCREEN_ACTIVE_INSTALLS").setPackage(str).putStringArrayListExtra("folderItem", new ArrayList<>(hashSet)).putStringArrayListExtra("workspaceItem", new ArrayList<>(hashSet2)).putStringArrayListExtra("hotseatItem", new ArrayList<>(hashSet3)).putStringArrayListExtra("widgetItem", new ArrayList<>(hashSet4)).putExtra("verificationToken", PendingIntent.getActivity(context, 0, new Intent(), 1140850688)));
        }
    }

    public final void setIgnorePackages(IconCacheUpdateHandler iconCacheUpdateHandler) {
        synchronized (this.mBgDataModel) {
            IntSparseArrayMap intSparseArrayMap = this.mBgDataModel.itemsIdMap;
            Objects.requireNonNull(intSparseArrayMap);
            int i = 0;
            while (true) {
                if (i < intSparseArrayMap.size()) {
                    int i2 = i + 1;
                    ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i);
                    if (itemInfo instanceof WorkspaceItemInfo) {
                        WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                        if (workspaceItemInfo.isPromise() && workspaceItemInfo.getTargetComponent() != null) {
                            iconCacheUpdateHandler.addPackagesToIgnore(workspaceItemInfo.user, workspaceItemInfo.getTargetComponent().getPackageName());
                        }
                    } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                        if (launcherAppWidgetInfo.hasRestoreFlag(2)) {
                            iconCacheUpdateHandler.addPackagesToIgnore(launcherAppWidgetInfo.user, launcherAppWidgetInfo.providerName.getPackageName());
                        }
                    }
                    i = i2;
                }
            }
        }
    }

    public final synchronized void verifyNotStopped() {
        if (this.mStopped) {
            throw new CancellationException("Loader stopped");
        }
    }

    public synchronized void waitForIdle() {
        LoaderResults loaderResults = this.mResults;
        LooperIdleLock looperIdleLock = new LooperIdleLock(this, loaderResults.mUiExecutor.getLooper());
        if (loaderResults.mUiExecutor.getLooper().getQueue().isIdle()) {
            looperIdleLock.queueIdle();
        }
        while (!this.mStopped) {
            if (looperIdleLock.mIsLocked) {
                try {
                    looperIdleLock.mLock.wait(1000L);
                } catch (InterruptedException unused) {
                }
            }
            if (!looperIdleLock.mIsLocked) {
                break;
            }
        }
    }
}
