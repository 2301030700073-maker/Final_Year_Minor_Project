package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.RealImageLoader$execute$3;
import coil3.util.UtilsKt;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LifecycleRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {
    public final Job job;
    public final Lifecycle lifecycle;

    public LifecycleRequestDelegate(Lifecycle lifecycle, Job job) {
        this.lifecycle = lifecycle;
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
        return UtilsKt.awaitStarted(this.lifecycle, realImageLoader$execute$3);
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
    public final /* synthetic */ void assertActive() {
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
