package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final transient Job coroutine;

    public TimeoutCancellationException(String str, TimeoutCoroutine timeoutCoroutine) {
        super(str);
        this.coroutine = timeoutCoroutine;
    }
}
