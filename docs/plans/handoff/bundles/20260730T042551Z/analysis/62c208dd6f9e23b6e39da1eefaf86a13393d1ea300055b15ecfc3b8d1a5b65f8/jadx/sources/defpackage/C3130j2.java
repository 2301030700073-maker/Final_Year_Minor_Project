package defpackage;

import android.app.AppOpsManager;
import android.content.Context;

/* renamed from: j2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3130j2 {
    /* renamed from: do, reason: not valid java name */
    public static <T> T m7029do(Context context, Class<T> cls) {
        Object systemService;
        systemService = context.getSystemService(cls);
        return (T) systemService;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m7030for(AppOpsManager appOpsManager, String str, String str2) {
        int noteProxyOpNoThrow;
        noteProxyOpNoThrow = appOpsManager.noteProxyOpNoThrow(str, str2);
        return noteProxyOpNoThrow;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m7031if(AppOpsManager appOpsManager, String str, String str2) {
        int noteProxyOp;
        noteProxyOp = appOpsManager.noteProxyOp(str, str2);
        return noteProxyOp;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m7032new(String str) {
        String permissionToOp;
        permissionToOp = AppOpsManager.permissionToOp(str);
        return permissionToOp;
    }
}
