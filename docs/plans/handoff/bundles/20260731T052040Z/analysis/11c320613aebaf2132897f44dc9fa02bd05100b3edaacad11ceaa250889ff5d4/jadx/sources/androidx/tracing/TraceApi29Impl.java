package androidx.tracing;

import android.os.Trace;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TraceApi29Impl {
    public static void beginAsyncSection(int i, String str) {
        Trace.beginAsyncSection(str, i);
    }

    public static void endAsyncSection(int i, String str) {
        Trace.endAsyncSection(str, i);
    }

    public static boolean isEnabled() {
        return Trace.isEnabled();
    }
}
