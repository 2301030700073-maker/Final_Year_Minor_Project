package coil3.network.internal;

import android.content.Context;
import android.os.Looper;
import android.os.NetworkOnMainThreadException;
import androidx.tracing.TraceApi29Impl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Utils_androidKt {
    public static final void assertNotOnMainThread() {
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            throw new NetworkOnMainThreadException();
        }
    }

    public static final boolean isPermissionGranted(Context context, String str) {
        return TraceApi29Impl.checkSelfPermission(context, str) == 0;
    }
}
