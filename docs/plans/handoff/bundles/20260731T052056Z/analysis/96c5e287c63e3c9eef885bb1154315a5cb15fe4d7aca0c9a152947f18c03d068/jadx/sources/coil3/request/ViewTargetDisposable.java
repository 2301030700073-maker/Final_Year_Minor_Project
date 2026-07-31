package coil3.request;

import android.view.View;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewTargetDisposable implements Disposable {
    public volatile Object job;
    public final Object view;

    public ViewTargetDisposable() {
        this.view = new CopyOnWriteArraySet();
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
