package defpackage;

import android.os.Build;
import android.util.Log;

/* renamed from: Yq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0636Yq {
    /* renamed from: do, reason: not valid java name */
    public static void m2960do(String str, Object obj, String str2) {
        if (Log.isLoggable(m2961if(str), 3)) {
            String.format(str2, obj);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2961if(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String concat = "TRuntime.".concat(str);
        return concat.length() > 23 ? concat.substring(0, 23) : concat;
    }
}
