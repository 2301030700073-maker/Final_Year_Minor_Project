package com.android.launcher3.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.AppInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PackageManagerHelper {
    public final Context mContext;
    public final LauncherApps mLauncherApps;
    public final PackageManager mPm;

    public PackageManagerHelper(Context context) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mLauncherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
    }

    public static Pair findSystemApk(String str, PackageManager packageManager) {
        Iterator<ResolveInfo> it = packageManager.queryBroadcastReceivers(new Intent(str), FrameProtoTracer.BUFFER_CAPACITY).iterator();
        while (it.hasNext()) {
            String str2 = it.next().activityInfo.packageName;
            try {
                return Pair.create(str2, packageManager.getResourcesForApplication(str2));
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("PackageManagerHelper", "Failed to find resources for " + str2);
            }
        }
        return null;
    }

    public static Intent getMarketSearchIntent(Context context, String str) {
        try {
            Intent parseUri = Intent.parseUri(context.getString(R.string.market_search_intent), 0);
            if (!TextUtils.isEmpty(str)) {
                parseUri.setData(parseUri.getData().buildUpon().appendQueryParameter("q", str).build());
            }
            return parseUri;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public static IntentFilter getPackageFilter(String str, String... strArr) {
        IntentFilter intentFilter = new IntentFilter();
        for (String str2 : strArr) {
            intentFilter.addAction(str2);
        }
        intentFilter.addDataScheme("package");
        intentFilter.addDataSchemeSpecificPart(str, 0);
        return intentFilter;
    }

    public static boolean hasShortcutsPermission(Context context) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).hasShortcutHostPermission();
        } catch (IllegalStateException | SecurityException e) {
            Log.e("PackageManagerHelper", "Failed to make shortcut manager call", e);
            return false;
        }
    }

    public static boolean isLauncherAppTarget(Intent intent) {
        if (intent == null || !"android.intent.action.MAIN".equals(intent.getAction()) || intent.getComponent() == null || intent.getCategories() == null || intent.getCategories().size() != 1 || !intent.hasCategory("android.intent.category.LAUNCHER") || !TextUtils.isEmpty(intent.getDataString())) {
            return false;
        }
        Bundle extras = intent.getExtras();
        return extras == null || extras.keySet().isEmpty();
    }

    public static boolean isSystemApp(Context context, Intent intent) {
        String packageName;
        ActivityInfo activityInfo;
        PackageManager packageManager = context.getPackageManager();
        ComponentName component = intent.getComponent();
        if (component == null) {
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            packageName = (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null) ? null : activityInfo.packageName;
        } else {
            packageName = component.getPackageName();
        }
        if (packageName == null) {
            packageName = intent.getPackage();
        }
        if (packageName == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            if (packageInfo == null || packageInfo.applicationInfo == null) {
                return false;
            }
            return (packageInfo.applicationInfo.flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public Intent getAppLaunchIntent(String str, UserHandle userHandle) {
        List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(str, userHandle);
        if (activityList.isEmpty()) {
            return null;
        }
        return AppInfo.makeLaunchIntent(activityList.get(0));
    }

    public ApplicationInfo getApplicationInfo(String str, UserHandle userHandle, int i) {
        if (Utilities.ATLEAST_OREO) {
            try {
                ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(str, i, userHandle);
                if ((applicationInfo.flags & 8388608) == 0) {
                    return null;
                }
                if (applicationInfo.enabled) {
                    return applicationInfo;
                }
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        boolean equals = Process.myUserHandle().equals(userHandle);
        if (!equals && i == 0) {
            List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(str, userHandle);
            if (activityList.size() > 0) {
                return activityList.get(0).getApplicationInfo();
            }
            return null;
        }
        try {
            ApplicationInfo applicationInfo2 = this.mPm.getApplicationInfo(str, i);
            if (!equals || (applicationInfo2.flags & 8388608) != 0) {
                if (applicationInfo2.enabled) {
                    return applicationInfo2;
                }
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public boolean isAppOnSdcard(String str, UserHandle userHandle) {
        ApplicationInfo applicationInfo = getApplicationInfo(str, userHandle, QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
        return (applicationInfo == null || (applicationInfo.flags & 262144) == 0) ? false : true;
    }

    public boolean isAppSuspended(String str, UserHandle userHandle) {
        ApplicationInfo applicationInfo = getApplicationInfo(str, userHandle, 0);
        if (applicationInfo != null) {
            return (applicationInfo.flags & 1073741824) != 0;
        }
        return false;
    }

    public boolean isSafeMode() {
        return this.mContext.getPackageManager().isSafeMode();
    }
}
