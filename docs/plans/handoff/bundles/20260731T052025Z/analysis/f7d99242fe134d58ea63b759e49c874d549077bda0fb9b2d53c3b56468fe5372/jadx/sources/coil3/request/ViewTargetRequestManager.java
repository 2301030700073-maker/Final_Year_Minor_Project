package coil3.request;

import android.view.View;
import coil3.util.CoroutinesKt;
import coil3.util.Utils_androidKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {
    private ViewTargetDisposable currentDisposable;
    private ViewTargetRequestDelegate currentRequest;
    private boolean isRestart;
    private Job pendingClear;
    private final View view;

    public ViewTargetRequestManager(View view) {
        this.view = view;
    }

    public final synchronized void dispose() {
        try {
            Job job = this.pendingClear;
            if (job != null) {
                job.cancel(null);
            }
            GlobalScope globalScope = GlobalScope.INSTANCE;
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            this.pendingClear = JobKt.launch$default(globalScope, MainDispatcherLoader.dispatcher.immediate, null, new ViewTargetRequestManager$dispose$1(this, null), 2);
            this.currentDisposable = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ViewTargetDisposable getDisposable(Deferred deferred) {
        ViewTargetDisposable viewTargetDisposable = this.currentDisposable;
        if (viewTargetDisposable != null && Utils_androidKt.isMainThread() && this.isRestart) {
            this.isRestart = false;
            viewTargetDisposable.setJob(deferred);
            return viewTargetDisposable;
        }
        Job job = this.pendingClear;
        if (job != null) {
            job.cancel(null);
        }
        this.pendingClear = null;
        ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(this.view, deferred);
        this.currentDisposable = viewTargetDisposable2;
        return viewTargetDisposable2;
    }

    public final synchronized ImageResult getResult() {
        ViewTargetDisposable viewTargetDisposable;
        Deferred job;
        viewTargetDisposable = this.currentDisposable;
        return (viewTargetDisposable == null || (job = viewTargetDisposable.getJob()) == null) ? null : (ImageResult) CoroutinesKt.getCompletedOrNull(job);
    }

    public final synchronized boolean isDisposed(ViewTargetDisposable viewTargetDisposable) {
        return viewTargetDisposable != this.currentDisposable;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.isRestart = true;
        viewTargetRequestDelegate.restart();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
    }

    public final void setRequest(ViewTargetRequestDelegate viewTargetRequestDelegate) {
        ViewTargetRequestDelegate viewTargetRequestDelegate2 = this.currentRequest;
        if (viewTargetRequestDelegate2 != null) {
            viewTargetRequestDelegate2.dispose();
        }
        this.currentRequest = viewTargetRequestDelegate;
    }
}
