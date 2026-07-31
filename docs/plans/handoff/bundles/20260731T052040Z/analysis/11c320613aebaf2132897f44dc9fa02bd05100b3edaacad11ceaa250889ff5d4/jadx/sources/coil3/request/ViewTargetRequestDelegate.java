package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.RealImageLoader;
import coil3.RealImageLoader$execute$3;
import coil3.target.ImageViewTarget;
import coil3.util.UtilsKt;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlinx.coroutines.Job;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final RealImageLoader imageLoader;
    public final ImageRequest initialRequest;
    public final Job job;
    public final Lifecycle lifecycle;
    public final ImageViewTarget target;

    public ViewTargetRequestDelegate(RealImageLoader realImageLoader, ImageRequest imageRequest, ImageViewTarget imageViewTarget, Lifecycle lifecycle, Job job) {
        this.imageLoader = realImageLoader;
        this.initialRequest = imageRequest;
        this.target = imageViewTarget;
        this.lifecycle = lifecycle;
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final void assertActive() {
        ImageViewTarget imageViewTarget = this.target;
        if (imageViewTarget.view.isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManager requestManager = Okio.getRequestManager(imageViewTarget.view);
        ViewTargetRequestDelegate viewTargetRequestDelegate = requestManager.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
        requestManager.currentRequest = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil3.request.RequestDelegate
    public final Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
        Lifecycle lifecycle = this.lifecycle;
        return lifecycle != null ? UtilsKt.awaitStarted(lifecycle, realImageLoader$execute$3) : Unit.INSTANCE;
    }

    public final void dispose() {
        this.job.cancel(null);
        ImageViewTarget imageViewTarget = this.target;
        boolean z = imageViewTarget instanceof LifecycleObserver;
        Lifecycle lifecycle = this.lifecycle;
        if (z && lifecycle != null) {
            lifecycle.removeObserver(imageViewTarget);
        }
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        Okio.getRequestManager(this.target.view).dispose();
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        Lifecycle lifecycle = this.lifecycle;
        if (lifecycle != null) {
            lifecycle.addObserver(this);
        }
        ImageViewTarget imageViewTarget = this.target;
        if ((imageViewTarget instanceof LifecycleObserver) && lifecycle != null) {
            ImageViewTarget imageViewTarget2 = imageViewTarget;
            lifecycle.removeObserver(imageViewTarget2);
            lifecycle.addObserver(imageViewTarget2);
        }
        ViewTargetRequestManager requestManager = Okio.getRequestManager(imageViewTarget.view);
        ViewTargetRequestDelegate viewTargetRequestDelegate = requestManager.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
        requestManager.currentRequest = this;
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void complete() {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
    }
}
