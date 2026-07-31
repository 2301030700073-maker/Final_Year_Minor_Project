package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import coil3.RealImageLoader$execute$3;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecycleRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final Job job;
    public final LifecycleRegistry lifecycle;

    public LifecycleRequestDelegate(LifecycleRegistry lifecycleRegistry, Job job) {
        this.lifecycle = lifecycleRegistry;
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
        Object awaitStarted = UnsignedKt.awaitStarted(this.lifecycle, realImageLoader$execute$3);
        return awaitStarted == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitStarted : Unit.INSTANCE;
    }

    @Override // coil3.request.RequestDelegate
    public final void complete() {
        this.lifecycle.removeObserver(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.job.cancel(null);
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        this.lifecycle.addObserver(this);
    }

    @Override // coil3.request.RequestDelegate
    public final void assertActive() {
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
