package com.android.launcher3.model;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class CacheDataUpdatedTask extends BaseModelUpdateTask {
    public final int mOp;
    public final HashSet mPackages;
    public final UserHandle mUser;

    public CacheDataUpdatedTask(int i, UserHandle userHandle, HashSet hashSet) {
        this.mOp = i;
        this.mUser = userHandle;
        this.mPackages = hashSet;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        IconCache iconCache = launcherAppState.mIconCache;
        ArrayList arrayList = new ArrayList();
        synchronized (bgDataModel) {
            IntSparseArrayMap intSparseArrayMap = bgDataModel.itemsIdMap;
            Objects.requireNonNull(intSparseArrayMap);
            int i = 0;
            while (true) {
                if (i < intSparseArrayMap.size()) {
                    int i2 = i + 1;
                    ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i);
                    if ((itemInfo instanceof WorkspaceItemInfo) && this.mUser.equals(itemInfo.user)) {
                        WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                        ComponentName targetComponent = workspaceItemInfo.getTargetComponent();
                        if (workspaceItemInfo.itemType == 0) {
                            int i3 = this.mOp;
                            if ((i3 != 1 ? i3 != 2 ? false : workspaceItemInfo.hasPromiseIconUi() : true) && targetComponent != null && this.mPackages.contains(targetComponent.getPackageName())) {
                                iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                                arrayList.add(workspaceItemInfo);
                            }
                        }
                    }
                    i = i2;
                } else {
                    allAppsList.updateIconsAndLabels(this.mPackages, this.mUser);
                }
            }
        }
        bindUpdatedWorkspaceItems(arrayList);
        bindApplicationsIfNeeded();
    }
}
