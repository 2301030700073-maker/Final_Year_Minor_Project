package defpackage;

import android.annotation.SuppressLint;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: cI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0802cI {

    /* renamed from: do, reason: not valid java name */
    public static long f8519do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Method f8520do;

    @SuppressLint({"NewApi"})
    /* renamed from: do, reason: not valid java name */
    public static boolean m4897do() {
        boolean isEnabled;
        try {
            if (f8520do == null) {
                isEnabled = Trace.isEnabled();
                return isEnabled;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f8520do == null) {
                f8519do = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f8520do = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f8520do.invoke(null, Long.valueOf(f8519do))).booleanValue();
        } catch (Exception e) {
            if (!(e instanceof InvocationTargetException)) {
                return false;
            }
            Throwable cause = e.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }
}
