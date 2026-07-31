package androidx.glance.appwidget;

import android.os.Trace;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TracingApi29Impl {
    public static final TracingApi29Impl INSTANCE = new TracingApi29Impl();

    public final void beginAsyncSection(String str, int i) {
        Trace.beginAsyncSection(str, i);
    }

    public final void endAsyncSection(String str, int i) {
        Trace.endAsyncSection(str, i);
    }
}
