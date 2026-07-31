package okio;

import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ForwardingTimeout extends Timeout {
    public Timeout delegate;

    public ForwardingTimeout(Timeout timeout) {
        timeout.getClass();
        this.delegate = timeout;
    }

    @Override // okio.Timeout
    public final Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    public final Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    public final long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @Override // okio.Timeout
    public final boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    @Override // okio.Timeout
    public final void throwIfReached() {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    public final Timeout timeout(long j) {
        TimeUnit.MILLISECONDS.getClass();
        return this.delegate.timeout(j);
    }

    @Override // okio.Timeout
    public final Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }
}
