package com.android.launcher3.pm;

import android.content.ComponentName;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;

/* loaded from: classes.dex */
public final class PackageInstallInfo {
    public final ComponentName componentName;
    public final String packageName;
    public final int progress;
    public final int state;
    public final UserHandle user;

    public PackageInstallInfo(PackageInstaller.SessionInfo sessionInfo) {
        this.state = 1;
        this.packageName = sessionInfo.getAppPackageName();
        this.componentName = new ComponentName(this.packageName, "");
        this.progress = (int) (sessionInfo.getProgress() * 100.0f);
        this.user = InstallSessionHelper.getUserHandle(sessionInfo);
    }

    public PackageInstallInfo(String str, int i, int i2, UserHandle userHandle) {
        this.state = i;
        this.packageName = str;
        this.componentName = new ComponentName(str, "");
        this.progress = i2;
        this.user = userHandle;
    }
}
