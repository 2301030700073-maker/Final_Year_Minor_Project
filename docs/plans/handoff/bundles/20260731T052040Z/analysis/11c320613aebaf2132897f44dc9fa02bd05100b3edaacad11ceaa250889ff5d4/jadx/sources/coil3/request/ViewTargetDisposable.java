package coil3.request;

import android.view.View;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewTargetDisposable implements Disposable {
    public volatile Object job;
    public final Object view;

    public ViewTargetDisposable() {
        this.view = new CopyOnWriteArraySet();
    }

    @Override // coil3.request.Disposable
    public void dispose() {
        boolean z;
        ViewTargetRequestManager requestManager = Okio.getRequestManager((View) this.view);
        synchronized (requestManager) {
            z = this != requestManager.currentDisposable;
        }
        if (z) {
            return;
        }
        Okio.getRequestManager((View) this.view).dispose();
    }

    @Override // coil3.request.Disposable
    public Deferred getJob() {
        return (DeferredCoroutine) this.job;
    }

    public ViewTargetDisposable(View view, DeferredCoroutine deferredCoroutine) {
        this.view = view;
        this.job = deferredCoroutine;
    }
}
