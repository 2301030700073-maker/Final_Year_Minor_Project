package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final transient Job coroutine;

    public TimeoutCancellationException(String str, TimeoutCoroutine timeoutCoroutine) {
        super(str);
        this.coroutine = timeoutCoroutine;
    }
}
