package defpackage;

import android.os.Build;
import android.os.Trace;

@Deprecated
/* renamed from: dI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2626dI {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f12469do = 0;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception unused) {
            }
        }
    }
}
