package com.android.launcher3.model.data;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.android.launcher3.pm.PackageInstallInfo;

/* loaded from: classes.dex */
public class PromiseAppInfo extends AppInfo {
    public int level = 0;

    public PromiseAppInfo(PackageInstallInfo packageInstallInfo) {
        this.componentName = packageInstallInfo.componentName;
        this.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(this.componentName).setFlags(270532608);
    }

    public Intent getMarketIntent(Context context) {
        context.getPackageManager();
        return new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", this.componentName.getPackageName()).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(context.getPackageName()).build());
    }

    @Override // com.android.launcher3.model.data.AppInfo
    public WorkspaceItemInfo makeWorkspaceItem() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this);
        workspaceItemInfo.setInstallProgress(this.level);
        int i = workspaceItemInfo.status | 2;
        workspaceItemInfo.status = i;
        workspaceItemInfo.status = i | 8;
        return workspaceItemInfo;
    }
}
