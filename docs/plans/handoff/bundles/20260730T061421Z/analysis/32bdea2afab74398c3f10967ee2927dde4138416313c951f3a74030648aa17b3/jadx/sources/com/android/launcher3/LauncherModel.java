package com.android.launcher3;

import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import c.a.a.N0.C0209f;
import c.a.c.a.a;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.PackageUpdatedTask;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class LauncherModel extends LauncherApps.Callback implements InstallSessionTracker.Callback {
    public final LauncherAppState mApp;
    public final AllAppsList mBgAllAppsList;
    public boolean mIsLoaderTaskRunning;
    public LoaderTask mLoaderTask;
    public boolean mModelLoaded;
    public final Object mLock = new Object();
    public final LooperExecutor mMainExecutor = Executors.MAIN_EXECUTOR;
    public final ArrayList mCallbacksList = new ArrayList(1);
    public final BgDataModel mBgDataModel = new BgDataModel();
    public final Runnable mShortcutPermissionCheckRunnable = new Runnable() { // from class: com.android.launcher3.LauncherModel.1
        @Override // java.lang.Runnable
        public void run() {
            LauncherModel launcherModel = LauncherModel.this;
            if (launcherModel.mModelLoaded) {
                if (PackageManagerHelper.hasShortcutsPermission(launcherModel.mApp.mContext) != ((LauncherModel.this.mBgAllAppsList.mFlags & 1) != 0)) {
                    LauncherModel.this.forceReload();
                }
            }
        }
    };

    /* renamed from: com.android.launcher3.LauncherModel$5, reason: invalid class name */
    public class AnonymousClass5 extends BaseModelUpdateTask {
        public final /* synthetic */ Supplier val$itemProvider;

        public AnonymousClass5(LauncherModel launcherModel, Supplier supplier) {
            this.val$itemProvider = supplier;
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) this.val$itemProvider.get();
            getModelWriter().updateItemInDatabase(workspaceItemInfo);
            ArrayList arrayList = new ArrayList();
            arrayList.add(workspaceItemInfo);
            bindUpdatedWorkspaceItems(arrayList);
        }
    }

    /* renamed from: com.android.launcher3.LauncherModel$6, reason: invalid class name */
    public class AnonymousClass6 extends BaseModelUpdateTask {
        public final /* synthetic */ PackageUserKey val$packageUser;

        public AnonymousClass6(LauncherModel launcherModel, PackageUserKey packageUserKey) {
            this.val$packageUser = packageUserKey;
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            bgDataModel.widgetsModel.update(launcherAppState, this.val$packageUser);
            bindUpdatedWidgets(bgDataModel);
        }
    }

    public interface CallbackTask {
        void execute(BgDataModel.Callbacks callbacks);
    }

    public class LoaderTransaction implements AutoCloseable {
        public final LoaderTask mTask;

        public LoaderTransaction(LoaderTask loaderTask, AnonymousClass1 anonymousClass1) {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask != loaderTask) {
                    throw new CancellationException("Loader already stopped");
                }
                this.mTask = loaderTask;
                LauncherModel.this.mIsLoaderTaskRunning = true;
                LauncherModel.this.mModelLoaded = false;
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == this.mTask) {
                    LauncherModel.this.mLoaderTask = null;
                }
                LauncherModel.this.mIsLoaderTaskRunning = false;
            }
        }
    }

    public interface ModelUpdateTask extends Runnable {
        void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor);
    }

    public LauncherModel(LauncherAppState launcherAppState, IconCache iconCache, AppFilter appFilter) {
        this.mApp = launcherAppState;
        this.mBgAllAppsList = new AllAppsList(iconCache, appFilter);
    }

    public boolean addCallbacksAndLoad(BgDataModel.Callbacks callbacks) {
        boolean startLoader;
        synchronized (this.mLock) {
            synchronized (this.mCallbacksList) {
                this.mCallbacksList.add(callbacks);
            }
            startLoader = startLoader();
        }
        return startLoader;
    }

    public void dumpState(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr.length > 0 && TextUtils.equals(strArr[0], "--all")) {
            StringBuilder g = a.g(str, "All apps list: size=");
            g.append(this.mBgAllAppsList.data.size());
            printWriter.println(g.toString());
            Iterator it = this.mBgAllAppsList.data.iterator();
            while (it.hasNext()) {
                AppInfo appInfo = (AppInfo) it.next();
                StringBuilder g2 = a.g(str, "   title=\"");
                g2.append((Object) appInfo.title);
                g2.append("\" bitmapIcon=");
                g2.append(appInfo.bitmap.icon);
                g2.append(" componentName=");
                g2.append(appInfo.componentName.getPackageName());
                printWriter.println(g2.toString());
            }
        }
        BgDataModel bgDataModel = this.mBgDataModel;
        synchronized (bgDataModel) {
            printWriter.println(str + "Data Model:");
            printWriter.println(str + " ---- workspace items ");
            for (int i = 0; i < bgDataModel.workspaceItems.size(); i++) {
                printWriter.println(str + '\t' + ((ItemInfo) bgDataModel.workspaceItems.get(i)).toString());
            }
            printWriter.println(str + " ---- appwidget items ");
            for (int i2 = 0; i2 < bgDataModel.appWidgets.size(); i2++) {
                printWriter.println(str + '\t' + ((LauncherAppWidgetInfo) bgDataModel.appWidgets.get(i2)).toString());
            }
            printWriter.println(str + " ---- folder items ");
            for (int i3 = 0; i3 < bgDataModel.folders.size(); i3++) {
                printWriter.println(str + '\t' + ((FolderInfo) bgDataModel.folders.valueAt(i3)).toString());
            }
            printWriter.println(str + " ---- items id map ");
            for (int i4 = 0; i4 < bgDataModel.itemsIdMap.size(); i4++) {
                printWriter.println(str + '\t' + ((ItemInfo) bgDataModel.itemsIdMap.valueAt(i4)).toString());
            }
            if (strArr.length > 0 && TextUtils.equals(strArr[0], "--all")) {
                printWriter.println(str + "shortcut counts ");
                Iterator it2 = bgDataModel.deepShortcutMap.values().iterator();
                while (it2.hasNext()) {
                    printWriter.print(((Integer) it2.next()) + ", ");
                }
                printWriter.println();
            }
        }
    }

    public void enqueueModelUpdateTask(ModelUpdateTask modelUpdateTask) {
        modelUpdateTask.init(this.mApp, this, this.mBgDataModel, this.mBgAllAppsList, this.mMainExecutor);
        Executors.MODEL_EXECUTOR.execute(modelUpdateTask);
    }

    public void forceReload() {
        synchronized (this.mLock) {
            stopLoader();
            this.mModelLoaded = false;
        }
        if (hasCallbacks()) {
            startLoader();
        }
    }

    public BgDataModel.Callbacks[] getCallbacks() {
        BgDataModel.Callbacks[] callbacksArr;
        synchronized (this.mCallbacksList) {
            callbacksArr = (BgDataModel.Callbacks[]) this.mCallbacksList.toArray(new BgDataModel.Callbacks[this.mCallbacksList.size()]);
        }
        return callbacksArr;
    }

    public boolean hasCallbacks() {
        boolean z;
        synchronized (this.mCallbacksList) {
            z = !this.mCallbacksList.isEmpty();
        }
        return z;
    }

    public boolean isModelLoaded() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mModelLoaded && this.mLoaderTask == null;
        }
        return z;
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageAdded(String str, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(1, userHandle, str));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageChanged(String str, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, str));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageRemoved(String str, UserHandle userHandle) {
        onPackagesRemoved(userHandle, str);
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesAvailable(String[] strArr, UserHandle userHandle, boolean z) {
        enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, strArr));
    }

    public void onPackagesRemoved(UserHandle userHandle, String... strArr) {
        StringBuilder f = a.f("package removed received ");
        f.append(TextUtils.join(",", strArr));
        FileLog.d("Launcher.Model", f.toString());
        enqueueModelUpdateTask(new PackageUpdatedTask(3, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesSuspended(String[] strArr, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(5, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesUnavailable(String[] strArr, UserHandle userHandle, boolean z) {
        if (z) {
            return;
        }
        enqueueModelUpdateTask(new PackageUpdatedTask(4, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesUnsuspended(String[] strArr, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(6, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onShortcutsChanged(String str, List list, UserHandle userHandle) {
        enqueueModelUpdateTask(new ShortcutsChangedTask(str, list, userHandle, true));
    }

    public void removeCallbacks(BgDataModel.Callbacks callbacks) {
        synchronized (this.mCallbacksList) {
            if (this.mCallbacksList.remove(callbacks) && stopLoader()) {
                startLoader();
            }
        }
    }

    public boolean startLoader() {
        InstallShortcutReceiver.enableInstallQueue(2);
        synchronized (this.mLock) {
            BgDataModel.Callbacks[] callbacks = getCallbacks();
            if (callbacks.length > 0) {
                for (final BgDataModel.Callbacks callbacks2 : callbacks) {
                    LooperExecutor looperExecutor = this.mMainExecutor;
                    Objects.requireNonNull(callbacks2);
                    looperExecutor.execute(new Runnable() { // from class: c.a.a.A0
                        @Override // java.lang.Runnable
                        public final void run() {
                            BgDataModel.Callbacks.this.clearPendingBinds();
                        }
                    });
                }
                stopLoader();
                LoaderResults loaderResults = new LoaderResults(this.mApp, this.mBgDataModel, this.mBgAllAppsList, callbacks, this.mMainExecutor);
                if (this.mModelLoaded && !this.mIsLoaderTaskRunning) {
                    loaderResults.bindWorkspace();
                    loaderResults.executeCallbacksTask(new C0209f(loaderResults.mBgAllAppsList.copyData(), loaderResults.mBgAllAppsList.mFlags), loaderResults.mUiExecutor);
                    loaderResults.bindDeepShortcuts();
                    loaderResults.bindWidgets();
                    return true;
                }
                startLoaderForResults(loaderResults);
            }
            return false;
        }
    }

    public void startLoaderForResults(LoaderResults loaderResults) {
        synchronized (this.mLock) {
            stopLoader();
            LoaderTask loaderTask = new LoaderTask(this.mApp, this.mBgAllAppsList, this.mBgDataModel, loaderResults);
            this.mLoaderTask = loaderTask;
            Executors.MODEL_EXECUTOR.mHandler.post(loaderTask);
        }
    }

    public boolean stopLoader() {
        synchronized (this.mLock) {
            LoaderTask loaderTask = this.mLoaderTask;
            this.mLoaderTask = null;
            if (loaderTask == null) {
                return false;
            }
            synchronized (loaderTask) {
                loaderTask.mStopped = true;
                loaderTask.notify();
            }
            return true;
        }
    }

    public void updateAndBindWorkspaceItem(final WorkspaceItemInfo workspaceItemInfo, final ShortcutInfo shortcutInfo) {
        enqueueModelUpdateTask(new AnonymousClass5(this, new Supplier() { // from class: c.a.a.T
            @Override // java.util.function.Supplier
            public final Object get() {
                LauncherModel launcherModel = LauncherModel.this;
                WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
                ShortcutInfo shortcutInfo2 = shortcutInfo;
                workspaceItemInfo2.updateFromDeepShortcutInfo(shortcutInfo2, launcherModel.mApp.mContext);
                IconCache iconCache = launcherModel.mApp.mIconCache;
                iconCache.getShortcutIcon(workspaceItemInfo2, shortcutInfo2, true, iconCache.mIsUsingFallbackIconCheck);
                return workspaceItemInfo2;
            }
        }));
    }
}
