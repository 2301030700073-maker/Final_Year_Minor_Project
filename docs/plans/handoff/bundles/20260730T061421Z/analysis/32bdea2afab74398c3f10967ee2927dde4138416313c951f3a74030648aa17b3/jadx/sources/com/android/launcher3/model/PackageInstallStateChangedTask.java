package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class PackageInstallStateChangedTask extends BaseModelUpdateTask {
    public final PackageInstallInfo mInstallInfo;

    public PackageInstallStateChangedTask(PackageInstallInfo packageInstallInfo) {
        this.mInstallInfo = packageInstallInfo;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        if (this.mInstallInfo.state == 0) {
            try {
                ApplicationInfo applicationInfo = launcherAppState.mContext.getPackageManager().getApplicationInfo(this.mInstallInfo.packageName, 0);
                if (InstantAppResolver.newInstance(launcherAppState.mContext).isInstantApp(applicationInfo)) {
                    launcherAppState.mModel.onPackageAdded(applicationInfo.packageName, this.mInstallInfo.user);
                    return;
                }
                return;
            } catch (PackageManager.NameNotFoundException unused) {
                return;
            }
        }
        synchronized (allAppsList) {
            final PromiseAppInfo updatePromiseInstallInfo = allAppsList.updatePromiseInstallInfo(this.mInstallInfo);
            if (updatePromiseInstallInfo != null) {
                scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.S
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        callbacks.bindPromiseAppProgressUpdated(PromiseAppInfo.this);
                    }
                });
            }
            bindApplicationsIfNeeded();
        }
        synchronized (bgDataModel) {
            final HashSet hashSet = new HashSet();
            IntSparseArrayMap intSparseArrayMap = bgDataModel.itemsIdMap;
            Objects.requireNonNull(intSparseArrayMap);
            int i = 0;
            while (true) {
                if (!(i < intSparseArrayMap.size())) {
                    break;
                }
                int i2 = i + 1;
                ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i);
                if (itemInfo instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    ComponentName targetComponent = workspaceItemInfo.getTargetComponent();
                    if (workspaceItemInfo.hasPromiseIconUi() && targetComponent != null && this.mInstallInfo.packageName.equals(targetComponent.getPackageName())) {
                        workspaceItemInfo.setInstallProgress(this.mInstallInfo.progress);
                        if (this.mInstallInfo.state == 2) {
                            workspaceItemInfo.status &= -5;
                        }
                        hashSet.add(workspaceItemInfo);
                    }
                }
                i = i2;
            }
            Iterator it = bgDataModel.appWidgets.iterator();
            while (it.hasNext()) {
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) it.next();
                if (launcherAppWidgetInfo.providerName.getPackageName().equals(this.mInstallInfo.packageName)) {
                    launcherAppWidgetInfo.installProgress = this.mInstallInfo.progress;
                    hashSet.add(launcherAppWidgetInfo);
                }
            }
            if (!hashSet.isEmpty()) {
                scheduleCallbackTask(new LauncherModel.CallbackTask(this) { // from class: com.android.launcher3.model.PackageInstallStateChangedTask.1
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public void execute(BgDataModel.Callbacks callbacks) {
                        callbacks.bindRestoreItemsChange(hashSet);
                    }
                });
            }
        }
    }
}
