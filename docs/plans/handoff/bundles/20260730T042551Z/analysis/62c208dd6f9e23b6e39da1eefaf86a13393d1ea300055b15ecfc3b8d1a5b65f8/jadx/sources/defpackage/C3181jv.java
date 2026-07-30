package defpackage;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;

/* renamed from: jv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3181jv {

    /* renamed from: do, reason: not valid java name */
    public final NotificationManager f13854do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f13855do;

    /* renamed from: jv$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static boolean m7178do(NotificationManager notificationManager) {
            boolean areNotificationsEnabled;
            areNotificationsEnabled = notificationManager.areNotificationsEnabled();
            return areNotificationsEnabled;
        }

        /* renamed from: if, reason: not valid java name */
        public static int m7179if(NotificationManager notificationManager) {
            int importance;
            importance = notificationManager.getImportance();
            return importance;
        }
    }

    static {
        new HashSet();
    }

    public C3181jv(Context context) {
        this.f13855do = context;
        this.f13854do = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7177do() {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cdo.m7178do(this.f13854do);
        }
        Context context = this.f13855do;
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }
}
