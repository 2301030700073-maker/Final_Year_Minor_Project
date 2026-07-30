package com.android.launcher3.pm;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import android.widget.Toast;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class ShortcutConfigActivityInfo implements ComponentWithLabelAndIcon {
    public final ComponentName mCn;
    public final UserHandle mUser;

    public class ShortcutConfigActivityInfoVL extends ShortcutConfigActivityInfo {
        public final ActivityInfo mInfo;

        public ShortcutConfigActivityInfoVL(ActivityInfo activityInfo) {
            super(new ComponentName(activityInfo.packageName, activityInfo.name), Process.myUserHandle());
            this.mInfo = activityInfo;
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
        public Drawable getFullResIcon(IconCache iconCache) {
            ActivityInfo activityInfo = this.mInfo;
            Objects.requireNonNull(iconCache);
            try {
                Resources resourcesForApplication = iconCache.mPackageManager.getResourcesForApplication(activityInfo.applicationInfo);
                int iconResource = activityInfo.getIconResource();
                if (resourcesForApplication != null && iconResource != 0) {
                    try {
                        return resourcesForApplication.getDrawableForDensity(iconResource, iconCache.mIconDpi);
                    } catch (Resources.NotFoundException unused) {
                    }
                }
                return BaseIconFactory.getFullResDefaultActivityIcon(iconCache.mIconDpi);
            } catch (PackageManager.NameNotFoundException unused2) {
                return BaseIconFactory.getFullResDefaultActivityIcon(iconCache.mIconDpi);
            }
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel
        public CharSequence getLabel(PackageManager packageManager) {
            return this.mInfo.loadLabel(packageManager);
        }
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public class ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo {
        public final LauncherActivityInfo mInfo;

        public ShortcutConfigActivityInfoVO(LauncherActivityInfo launcherActivityInfo) {
            super(launcherActivityInfo.getComponentName(), launcherActivityInfo.getUser());
            this.mInfo = launcherActivityInfo;
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
        public Drawable getFullResIcon(IconCache iconCache) {
            return iconCache.mIconProvider.getIcon(this.mInfo, iconCache.mIconDpi);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel
        public CharSequence getLabel(PackageManager packageManager) {
            return this.mInfo.getLabel();
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
        public boolean startConfigActivity(Activity activity, int i) {
            if (this.mUser.equals(Process.myUserHandle())) {
                return super.startConfigActivity(activity, i);
            }
            try {
                activity.startIntentSenderForResult(((LauncherApps) activity.getSystemService(LauncherApps.class)).getShortcutConfigActivityIntent(this.mInfo), i, null, 0, 0, 0);
                return true;
            } catch (IntentSender.SendIntentException unused) {
                Toast.makeText(activity, R.string.activity_not_found, 0).show();
                return false;
            }
        }
    }

    public ShortcutConfigActivityInfo(ComponentName componentName, UserHandle userHandle) {
        this.mCn = componentName;
        this.mUser = userHandle;
    }

    public static List queryList(Context context, PackageUserKey packageUserKey) {
        String str;
        List<UserHandle> list;
        ArrayList arrayList = new ArrayList();
        UserHandle myUserHandle = Process.myUserHandle();
        if (Utilities.ATLEAST_OREO) {
            if (packageUserKey == null) {
                list = ((UserCache) UserCache.INSTANCE.b(context)).getUserProfiles();
                str = null;
            } else {
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(packageUserKey.mUser);
                str = packageUserKey.mPackageName;
                list = arrayList2;
            }
            LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
            for (UserHandle userHandle : list) {
                boolean equals = myUserHandle.equals(userHandle);
                for (LauncherActivityInfo launcherActivityInfo : launcherApps.getShortcutConfigActivityList(str, userHandle)) {
                    if (equals || launcherActivityInfo.getApplicationInfo().targetSdkVersion >= 26) {
                        arrayList.add(new ShortcutConfigActivityInfoVO(launcherActivityInfo));
                    }
                }
            }
        } else if (packageUserKey == null || packageUserKey.mUser.equals(myUserHandle)) {
            Intent intent = new Intent("android.intent.action.CREATE_SHORTCUT");
            if (packageUserKey != null) {
                intent.setPackage(packageUserKey.mPackageName);
            }
            Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutConfigActivityInfoVL(it.next().activityInfo));
            }
        }
        return arrayList;
    }

    public WorkspaceItemInfo createWorkspaceItemInfo() {
        return null;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public ComponentName getComponent() {
        return this.mCn;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public abstract Drawable getFullResIcon(IconCache iconCache);

    public int getItemType() {
        return 1;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public UserHandle getUser() {
        return this.mUser;
    }

    public boolean isPersistable() {
        return true;
    }

    public boolean startConfigActivity(Activity activity, int i) {
        Intent component = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(this.mCn);
        try {
            activity.startActivityForResult(component, i);
            return true;
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            return false;
        } catch (SecurityException e) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            Log.e("SCActivityInfo", "Launcher does not have the permission to launch " + component + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e);
            return false;
        }
    }
}
