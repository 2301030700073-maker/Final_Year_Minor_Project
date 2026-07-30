package com.android.launcher3.model.data;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import c.a.a.N0.h0.b;
import com.android.launcher3.Utilities;
import java.util.Comparator;

/* loaded from: classes.dex */
public class AppInfo extends ItemInfoWithIcon {
    public ComponentName componentName;
    public Intent intent;
    public String sectionName;
    public static final AppInfo[] EMPTY_ARRAY = new AppInfo[0];
    public static final Comparator COMPONENT_KEY_COMPARATOR = b.f1529a;

    public AppInfo() {
        this.sectionName = "";
        this.itemType = 0;
    }

    public static /* synthetic */ int e(AppInfo appInfo, AppInfo appInfo2) {
        int hashCode = appInfo.user.hashCode() - appInfo2.user.hashCode();
        return hashCode != 0 ? hashCode : appInfo.componentName.compareTo(appInfo2.componentName);
    }

    public static Intent makeLaunchIntent(LauncherActivityInfo launcherActivityInfo) {
        return makeLaunchIntent(launcherActivityInfo.getComponentName());
    }

    public static void updateRuntimeFlagsForActivityTarget(ItemInfoWithIcon itemInfoWithIcon, LauncherActivityInfo launcherActivityInfo) {
        ApplicationInfo applicationInfo = launcherActivityInfo.getApplicationInfo();
        if ((applicationInfo.flags & 1073741824) != 0) {
            itemInfoWithIcon.runtimeStatusFlags |= 4;
        }
        itemInfoWithIcon.runtimeStatusFlags |= (1 & applicationInfo.flags) == 0 ? 128 : 64;
        if (Utilities.ATLEAST_OREO && applicationInfo.targetSdkVersion >= 26 && Process.myUserHandle().equals(launcherActivityInfo.getUser())) {
            itemInfoWithIcon.runtimeStatusFlags |= 256;
        }
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public ItemInfoWithIcon mo1clone() {
        return new AppInfo(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public Intent getIntent() {
        return this.intent;
    }

    public WorkspaceItemInfo makeWorkspaceItem() {
        return new WorkspaceItemInfo(this);
    }

    public static Intent makeLaunchIntent(ComponentName componentName) {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(componentName).setFlags(270532608);
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone, reason: collision with other method in class */
    public Object mo1clone() {
        return new AppInfo(this);
    }

    public AppInfo(Context context, LauncherActivityInfo launcherActivityInfo, UserHandle userHandle) {
        this(launcherActivityInfo, userHandle, ((UserManager) context.getSystemService(UserManager.class)).isQuietModeEnabled(userHandle));
    }

    public AppInfo(LauncherActivityInfo launcherActivityInfo, UserHandle userHandle, boolean z) {
        this.sectionName = "";
        this.componentName = launcherActivityInfo.getComponentName();
        this.container = -104;
        this.user = userHandle;
        this.intent = makeLaunchIntent(launcherActivityInfo.getComponentName());
        if (z) {
            this.runtimeStatusFlags |= 8;
        }
        updateRuntimeFlagsForActivityTarget(this, launcherActivityInfo);
    }

    public AppInfo(AppInfo appInfo) {
        super(appInfo);
        this.sectionName = "";
        this.componentName = appInfo.componentName;
        this.title = Utilities.trim(appInfo.title);
        this.intent = new Intent(appInfo.intent);
        this.user = appInfo.user;
        this.runtimeStatusFlags = appInfo.runtimeStatusFlags;
    }

    public AppInfo(ComponentName componentName, CharSequence charSequence, UserHandle userHandle, Intent intent) {
        this.sectionName = "";
        this.componentName = componentName;
        this.title = charSequence;
        this.user = userHandle;
        this.intent = intent;
    }
}
