package coil3.request;

import android.view.View;
import kotlinx.coroutines.Deferred;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewTargetDisposable implements Disposable {
    private volatile Deferred job;
    private final View view;

    public ViewTargetDisposable(View view, Deferred deferred) {
        this.view = view;
        this.job = deferred;
    }

    @Override // coil3.request.Disposable
    public void dispose() {
        if (isDisposed()) {
            return;
        }
        ViewTargetRequestManagerKt.getRequestManager(this.view).dispose();
    }

    @Override // coil3.request.Disposable
    public Deferred getJob() {
        return this.job;
    }

    @Override // coil3.request.Disposable
    public boolean isDisposed() {
        return ViewTargetRequestManagerKt.getRequestManager(this.view).isDisposed(this);
    }

    public void setJob(Deferred deferred) {
        this.job = deferred;
    }
}
