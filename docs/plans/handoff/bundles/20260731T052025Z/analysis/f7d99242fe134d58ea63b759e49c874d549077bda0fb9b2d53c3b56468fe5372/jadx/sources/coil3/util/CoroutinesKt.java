package coil3.util;

import kotlinx.coroutines.Deferred;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoroutinesKt {
    public static final <T> T getCompletedOrNull(Deferred deferred) {
        try {
            return (T) deferred.getCompleted();
        } catch (Throwable unused) {
            return null;
        }
    }
}
