package androidx.biometric;

import android.os.CancellationSignal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CancellationSignalProvider$Api16Impl {
    public static void cancel(CancellationSignal cancellationSignal) {
        cancellationSignal.cancel();
    }

    public static CancellationSignal create() {
        return new CancellationSignal();
    }
}
