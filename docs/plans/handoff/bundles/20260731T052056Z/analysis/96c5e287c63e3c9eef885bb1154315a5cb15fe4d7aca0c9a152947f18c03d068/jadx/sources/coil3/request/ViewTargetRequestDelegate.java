package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.work.OperationKt;
import coil3.RealImageLoader;
import coil3.RealImageLoader$execute$3;
import coil3.disk.DiskLruCache$launchCleanup$1;
import coil3.target.ImageViewTarget;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final RealImageLoader imageLoader;
    public final ImageRequest initialRequest;
    public final Job job;
    public final LifecycleRegistry lifecycle;
    public final ImageViewTarget target;

    public ViewTargetRequestDelegate(RealImageLoader realImageLoader, ImageRequest imageRequest, ImageViewTarget imageViewTarget, LifecycleRegistry lifecycleRegistry, Job job) {
        this.imageLoader = realImageLoader;
        this.initialRequest = imageRequest;
        this.target = imageViewTarget;
        this.lifecycle = lifecycleRegistry;
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final void assertActive() {
        ImageViewTarget imageViewTarget = this.target;
        if (imageViewTarget.view.isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManager requestManager = OperationKt.getRequestManager(imageViewTarget.view);
        ViewTargetRequestDelegate viewTargetRequestDelegate = requestManager.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
        requestManager.currentRequest = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil3.request.RequestDelegate
    public final Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
        Object awaitStarted;
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        return (lifecycleRegistry == null || (awaitStarted = UnsignedKt.awaitStarted(lifecycleRegistry, realImageLoader$execute$3)) != CoroutineSingletons.COROUTINE_SUSPENDED) ? Unit.INSTANCE : awaitStarted;
    }

    public final void dispose() {
        this.job.cancel(null);
        ImageViewTarget imageViewTarget = this.target;
        boolean z = imageViewTarget instanceof LifecycleObserver;
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (z && lifecycleRegistry != null) {
            lifecycleRegistry.removeObserver(imageViewTarget);
        }
        if (lifecycleRegistry != null) {
            lifecycleRegistry.removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        ViewTargetRequestManager requestManager = OperationKt.getRequestManager(this.target.view);
        synchronized (requestManager) {
            try {
                StandaloneCoroutine standaloneCoroutine = requestManager.pendingClear;
                Continuation continuation = null;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                GlobalScope globalScope = GlobalScope.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                requestManager.pendingClear = AwaitKt.launch$default(globalScope, MainDispatcherLoader.dispatcher.immediate, null, new DiskLruCache$launchCleanup$1(6, requestManager, continuation), 2);
                requestManager.currentDisposable = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (lifecycleRegistry != null) {
            lifecycleRegistry.addObserver(this);
        }
        ImageViewTarget imageViewTarget = this.target;
        if ((imageViewTarget instanceof LifecycleObserver) && lifecycleRegistry != null) {
            ImageViewTarget imageViewTarget2 = imageViewTarget;
            lifecycleRegistry.removeObserver(imageViewTarget2);
            lifecycleRegistry.addObserver(imageViewTarget2);
        }
        ViewTargetRequestManager requestManager = OperationKt.getRequestManager(imageViewTarget.view);
        ViewTargetRequestDelegate viewTargetRequestDelegate = requestManager.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
        requestManager.currentRequest = this;
    }

    @Override // coil3.request.RequestDelegate
    public final void complete() {
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
