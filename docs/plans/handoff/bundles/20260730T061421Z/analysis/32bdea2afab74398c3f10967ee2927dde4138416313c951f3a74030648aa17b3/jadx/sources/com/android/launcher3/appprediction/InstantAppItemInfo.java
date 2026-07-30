package com.android.launcher3.appprediction;

import android.content.ComponentName;
import android.content.Intent;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.quickstep.InstantAppResolverImpl;

/* loaded from: classes.dex */
public class InstantAppItemInfo extends AppInfo {
    public InstantAppItemInfo(Intent intent, String str) {
        this.intent = intent;
        this.componentName = new ComponentName(str, InstantAppResolverImpl.COMPONENT_CLASS_MARKER);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        return this.componentName;
    }

    @Override // com.android.launcher3.model.data.AppInfo
    public WorkspaceItemInfo makeWorkspaceItem() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this);
        workspaceItemInfo.itemType = 0;
        workspaceItemInfo.status = 26;
        workspaceItemInfo.intent.setPackage(this.componentName.getPackageName());
        return workspaceItemInfo;
    }
}
