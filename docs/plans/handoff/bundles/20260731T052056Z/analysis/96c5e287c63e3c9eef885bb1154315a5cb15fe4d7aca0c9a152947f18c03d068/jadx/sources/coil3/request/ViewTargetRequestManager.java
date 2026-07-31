package coil3.request;

import android.view.View;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {
    public ViewTargetDisposable currentDisposable;
    public ViewTargetRequestDelegate currentRequest;
    public boolean isRestart;
    public StandaloneCoroutine pendingClear;
    public final View view;

    public ViewTargetRequestManager(View view) {
        this.view = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.isRestart = true;
        viewTargetRequestDelegate.imageLoader.enqueue(viewTargetRequestDelegate.initialRequest);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
    }
}
