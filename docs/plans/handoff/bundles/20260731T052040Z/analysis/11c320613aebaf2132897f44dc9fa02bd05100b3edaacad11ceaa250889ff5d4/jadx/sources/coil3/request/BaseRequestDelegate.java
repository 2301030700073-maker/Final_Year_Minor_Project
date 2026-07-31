package coil3.request;

import coil3.RealImageLoader$execute$3;
import kotlin.Unit;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BaseRequestDelegate implements RequestDelegate {
    public final Job job;

    public /* synthetic */ BaseRequestDelegate(Job job) {
        this.job = job;
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3) {
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
    public final /* synthetic */ void assertActive() {
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void complete() {
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void start() {
    }
}
