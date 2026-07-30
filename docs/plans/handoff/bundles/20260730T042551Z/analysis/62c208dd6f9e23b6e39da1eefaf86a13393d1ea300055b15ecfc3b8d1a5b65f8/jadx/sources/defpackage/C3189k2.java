package defpackage;

import android.app.AppOpsManager;
import android.content.Context;

/* renamed from: k2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3189k2 {
    /* renamed from: do, reason: not valid java name */
    public static int m7210do(AppOpsManager appOpsManager, String str, int i, String str2) {
        if (appOpsManager == null) {
            return 1;
        }
        return appOpsManager.checkOpNoThrow(str, i, str2);
    }

    /* renamed from: for, reason: not valid java name */
    public static AppOpsManager m7211for(Context context) {
        Object systemService;
        systemService = context.getSystemService((Class<Object>) AppOpsManager.class);
        return (AppOpsManager) systemService;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m7212if(Context context) {
        String opPackageName;
        opPackageName = context.getOpPackageName();
        return opPackageName;
    }
}
