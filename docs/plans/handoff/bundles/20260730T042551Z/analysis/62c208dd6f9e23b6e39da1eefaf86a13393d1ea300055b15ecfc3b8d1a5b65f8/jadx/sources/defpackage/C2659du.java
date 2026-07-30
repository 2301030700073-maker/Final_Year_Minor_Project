package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;

/* renamed from: du, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2659du {
    /* renamed from: do, reason: not valid java name */
    public static Intent m6469do(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String m6470for = m6470for(activity, activity.getComponentName());
            if (m6470for == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, m6470for);
            try {
                return m6470for(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m6470for(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i >= 29 ? 269222528 : i >= 24 ? 787072 : 640);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m6471if(Context context, ComponentName componentName) {
        String m6470for = m6470for(context, componentName);
        if (m6470for == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m6470for);
        return m6470for(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }
}
