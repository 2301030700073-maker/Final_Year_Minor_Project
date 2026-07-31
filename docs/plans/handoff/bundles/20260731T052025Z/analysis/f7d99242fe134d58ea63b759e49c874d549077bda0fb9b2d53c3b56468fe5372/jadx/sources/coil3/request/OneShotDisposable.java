package coil3.request;

import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OneShotDisposable implements Disposable {
    private final Deferred job;

    public OneShotDisposable(Deferred deferred) {
        this.job = deferred;
    }

    @Override // coil3.request.Disposable
    public void dispose() {
        if (isDisposed()) {
            return;
        }
        ((JobSupport) getJob()).cancel(null);
    }

    @Override // coil3.request.Disposable
    public Deferred getJob() {
        return this.job;
    }

    @Override // coil3.request.Disposable
    public boolean isDisposed() {
        return !getJob().isActive();
    }
}
