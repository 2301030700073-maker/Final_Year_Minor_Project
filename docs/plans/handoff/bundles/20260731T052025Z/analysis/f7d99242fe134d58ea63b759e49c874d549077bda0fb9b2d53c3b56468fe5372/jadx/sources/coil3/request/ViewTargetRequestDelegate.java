package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.ImageLoader;
import coil3.target.ViewTarget;
import coil3.util.LifecyclesKt;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    private final ImageLoader imageLoader;
    private final ImageRequest initialRequest;
    private final Job job;
    private final Lifecycle lifecycle;
    private final ViewTarget<?> target;

    public ViewTargetRequestDelegate(ImageLoader imageLoader, ImageRequest imageRequest, ViewTarget<?> viewTarget, Lifecycle lifecycle, Job job) {
        this.imageLoader = imageLoader;
        this.initialRequest = imageRequest;
        this.target = viewTarget;
        this.lifecycle = lifecycle;
        this.job = job;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    @Override // coil3.request.RequestDelegate
    public void assertActive() {
        if (this.target.getView().isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManagerKt.getRequestManager(this.target.getView()).setRequest(this);
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil3.request.RequestDelegate
    public Object awaitStarted(Continuation continuation) {
        Object awaitStarted;
        Lifecycle lifecycle = this.lifecycle;
        return (lifecycle == null || (awaitStarted = LifecyclesKt.awaitStarted(lifecycle, continuation)) != CoroutineSingletons.COROUTINE_SUSPENDED) ? Unit.INSTANCE : awaitStarted;
    }

    @Override // coil3.request.RequestDelegate
    public void dispose() {
        Lifecycle lifecycle;
        this.job.cancel(null);
        ViewTarget<?> viewTarget = this.target;
        if ((viewTarget instanceof LifecycleObserver) && (lifecycle = this.lifecycle) != null) {
            lifecycle.removeObserver((LifecycleObserver) viewTarget);
        }
        Lifecycle lifecycle2 = this.lifecycle;
        if (lifecycle2 != null) {
            lifecycle2.removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View] */
    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        ViewTargetRequestManagerKt.getRequestManager(this.target.getView()).dispose();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    public final void restart() {
        this.imageLoader.enqueue(this.initialRequest);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View] */
    @Override // coil3.request.RequestDelegate
    public void start() {
        Lifecycle lifecycle;
        Lifecycle lifecycle2 = this.lifecycle;
        if (lifecycle2 != null) {
            lifecycle2.addObserver(this);
        }
        ViewTarget<?> viewTarget = this.target;
        if ((viewTarget instanceof LifecycleObserver) && (lifecycle = this.lifecycle) != null) {
            LifecyclesKt.removeAndAddObserver(lifecycle, (LifecycleObserver) viewTarget);
        }
        ViewTargetRequestManagerKt.getRequestManager(this.target.getView()).setRequest(this);
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void complete() {
    }
}
