package coil3.request;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaseRequestDelegate implements RequestDelegate {
    private final Job job;

    private /* synthetic */ BaseRequestDelegate(Job job) {
        this.job = job;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BaseRequestDelegate m893boximpl(Job job) {
        return new BaseRequestDelegate(job);
    }

    /* renamed from: dispose-impl, reason: not valid java name */
    public static void m895disposeimpl(Job job) {
        job.cancel(null);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m896equalsimpl(Job job, Object obj) {
        return (obj instanceof BaseRequestDelegate) && Intrinsics.areEqual(job, ((BaseRequestDelegate) obj).m900unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m897equalsimpl0(Job job, Job job2) {
        return Intrinsics.areEqual(job, job2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m898hashCodeimpl(Job job) {
        return job.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m899toStringimpl(Job job) {
        return "BaseRequestDelegate(job=" + job + ")";
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ Object awaitStarted(Continuation continuation) {
        return Unit.INSTANCE;
    }

    @Override // coil3.request.RequestDelegate
    public void dispose() {
        m895disposeimpl(this.job);
    }

    public boolean equals(Object obj) {
        return m896equalsimpl(this.job, obj);
    }

    public int hashCode() {
        return m898hashCodeimpl(this.job);
    }

    public String toString() {
        return m899toStringimpl(this.job);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Job m900unboximpl() {
        return this.job;
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

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Job m894constructorimpl(Job job) {
        return job;
    }
}
