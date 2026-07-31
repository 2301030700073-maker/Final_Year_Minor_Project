package coil3.request;

import coil3.RealImageLoader$execute$3;
import kotlin.Unit;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BaseRequestDelegate implements RequestDelegate {
    public final Job job;

    public /* synthetic */ BaseRequestDelegate(Job job) {
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
        return Unit.INSTANCE;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BaseRequestDelegate) {
            return this.job.equals(((BaseRequestDelegate) obj).job);
        }
        return false;
    }

    public final int hashCode() {
        return this.job.hashCode();
    }

    public final String toString() {
        return "BaseRequestDelegate(job=" + this.job + ")";
    }

    @Override // coil3.request.RequestDelegate
    public final void assertActive() {
    }

    @Override // coil3.request.RequestDelegate
    public final void complete() {
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
    }
}
