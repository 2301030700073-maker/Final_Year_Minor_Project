package com.android.launcher3.pm;

import android.content.pm.PackageInstaller;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.SparseArray;
import c.a.a.a1.l;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.CacheDataUpdatedTask;
import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.PackageUserKey;
import java.util.HashSet;
import java.util.Objects;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class InstallSessionTracker extends PackageInstaller.SessionCallback {
    public SparseArray mActiveSessions = null;
    public final Callback mCallback;
    public final InstallSessionHelper mInstallerCompat;

    public interface Callback {
    }

    public InstallSessionTracker(InstallSessionHelper installSessionHelper, Callback callback) {
        this.mInstallerCompat = installSessionHelper;
        this.mCallback = callback;
    }

    public final SparseArray getActiveSessionMap() {
        if (this.mActiveSessions == null) {
            this.mActiveSessions = new SparseArray();
            this.mInstallerCompat.getActiveSessions().forEach(new BiConsumer() { // from class: c.a.a.Q0.b
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    InstallSessionTracker.this.mActiveSessions.put(((PackageInstaller.SessionInfo) obj2).getSessionId(), (PackageUserKey) obj);
                }
            });
        }
        return this.mActiveSessions;
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onActiveChanged(int i, boolean z) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onBadgingChanged(int i) {
        PackageInstaller.SessionInfo pushSessionDisplayToLauncher = pushSessionDisplayToLauncher(i);
        if (pushSessionDisplayToLauncher != null) {
            this.mInstallerCompat.tryQueuePromiseAppIcon(pushSessionDisplayToLauncher);
        }
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onCreated(int i) {
        PackageInstaller.SessionInfo pushSessionDisplayToLauncher = pushSessionDisplayToLauncher(i);
        if (pushSessionDisplayToLauncher != null) {
            Callback callback = this.mCallback;
            PackageInstallInfo packageInstallInfo = new PackageInstallInfo(pushSessionDisplayToLauncher);
            LauncherModel launcherModel = (LauncherModel) callback;
            Objects.requireNonNull(launcherModel);
            if (FeatureFlags.PROMISE_APPS_IN_ALL_APPS.get()) {
                launcherModel.enqueueModelUpdateTask(new BaseModelUpdateTask(launcherModel, packageInstallInfo) { // from class: com.android.launcher3.LauncherModel.2
                    public final /* synthetic */ PackageInstallInfo val$sessionInfo;

                    public AnonymousClass2(LauncherModel launcherModel2, PackageInstallInfo packageInstallInfo2) {
                        this.val$sessionInfo = packageInstallInfo2;
                    }

                    @Override // com.android.launcher3.model.BaseModelUpdateTask
                    public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                        allAppsList.addPromiseApp(launcherAppState.mContext, this.val$sessionInfo);
                        bindApplicationsIfNeeded();
                    }
                });
            }
        }
        this.mInstallerCompat.tryQueuePromiseAppIcon(pushSessionDisplayToLauncher);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onFinished(int i, boolean z) {
        String str;
        SparseArray activeSessionMap = getActiveSessionMap();
        PackageUserKey packageUserKey = (PackageUserKey) activeSessionMap.get(i);
        activeSessionMap.remove(i);
        if (packageUserKey == null || (str = packageUserKey.mPackageName) == null) {
            return;
        }
        PackageInstallInfo packageInstallInfo = new PackageInstallInfo(str, z ? 0 : 2, 0, packageUserKey.mUser);
        LauncherModel launcherModel = (LauncherModel) this.mCallback;
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new PackageInstallStateChangedTask(packageInstallInfo));
        if (z || !this.mInstallerCompat.mPromiseIconIds.contains(i)) {
            return;
        }
        Callback callback = this.mCallback;
        UserHandle userHandle = packageUserKey.mUser;
        LauncherModel launcherModel2 = (LauncherModel) callback;
        Objects.requireNonNull(launcherModel2);
        if (FeatureFlags.PROMISE_APPS_NEW_INSTALLS.get()) {
            launcherModel2.enqueueModelUpdateTask(new BaseModelUpdateTask(launcherModel2, userHandle, str) { // from class: com.android.launcher3.LauncherModel.3
                public final /* synthetic */ String val$packageName;
                public final /* synthetic */ UserHandle val$user;

                public AnonymousClass3(LauncherModel launcherModel22, UserHandle userHandle2, String str2) {
                    this.val$user = userHandle2;
                    this.val$packageName = str2;
                }

                @Override // com.android.launcher3.model.BaseModelUpdateTask
                public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                    IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
                    synchronized (bgDataModel) {
                        IntSparseArrayMap intSparseArrayMap2 = bgDataModel.itemsIdMap;
                        Objects.requireNonNull(intSparseArrayMap2);
                        int i2 = 0;
                        while (true) {
                            if (!(i2 < intSparseArrayMap2.size())) {
                                break;
                            }
                            int i3 = i2 + 1;
                            ItemInfo itemInfo = (ItemInfo) intSparseArrayMap2.valueAt(i2);
                            if ((itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasPromiseIconUi() && this.val$user.equals(itemInfo.user) && itemInfo.getIntent() != null && TextUtils.equals(this.val$packageName, itemInfo.getIntent().getPackage())) {
                                intSparseArrayMap.put(itemInfo.id, Boolean.TRUE);
                            }
                            i2 = i3;
                        }
                    }
                    if (intSparseArrayMap.size() <= 0) {
                        return;
                    }
                    deleteAndBindComponentsRemoved(new l(intSparseArrayMap, Boolean.FALSE));
                }
            });
        }
        InstallSessionHelper installSessionHelper = this.mInstallerCompat;
        if (installSessionHelper.mPromiseIconIds.contains(i)) {
            installSessionHelper.mPromiseIconIds.mArray.removeValue(i);
            installSessionHelper.updatePromiseIconPrefs();
        }
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onProgressChanged(int i, float f) {
        InstallSessionHelper installSessionHelper = this.mInstallerCompat;
        PackageInstaller.SessionInfo verify = installSessionHelper.verify(installSessionHelper.mInstaller.getSessionInfo(i));
        if (verify == null || verify.getAppPackageName() == null) {
            return;
        }
        Callback callback = this.mCallback;
        PackageInstallInfo packageInstallInfo = new PackageInstallInfo(verify);
        LauncherModel launcherModel = (LauncherModel) callback;
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new PackageInstallStateChangedTask(packageInstallInfo));
    }

    public final PackageInstaller.SessionInfo pushSessionDisplayToLauncher(int i) {
        InstallSessionHelper installSessionHelper = this.mInstallerCompat;
        PackageInstaller.SessionInfo verify = installSessionHelper.verify(installSessionHelper.mInstaller.getSessionInfo(i));
        if (verify == null || verify.getAppPackageName() == null) {
            return null;
        }
        PackageUserKey packageUserKey = new PackageUserKey(verify.getAppPackageName(), InstallSessionHelper.getUserHandle(verify));
        getActiveSessionMap().put(verify.getSessionId(), packageUserKey);
        LauncherModel launcherModel = (LauncherModel) this.mCallback;
        launcherModel.mApp.mIconCache.updateSessionCache(packageUserKey, verify);
        HashSet hashSet = new HashSet();
        hashSet.add(packageUserKey.mPackageName);
        launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(2, packageUserKey.mUser, hashSet));
        return verify;
    }
}
