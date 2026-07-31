package coil3.request;

import android.view.View;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public final synchronized void dispose() {
        try {
            StandaloneCoroutine standaloneCoroutine = this.pendingClear;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            GlobalScope globalScope = GlobalScope.INSTANCE;
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            this.pendingClear = JobKt.launch$default(globalScope, MainDispatcherLoader.dispatcher.immediate, null, new ViewTargetRequestManager$dispose$1(this, null), 2);
            this.currentDisposable = null;
        } catch (Throwable th) {
            throw th;
        }
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
