package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class JobImpl extends JobSupport {
    public final boolean handlesException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobImpl(Job job) {
        super(true);
        boolean z = true;
        initParentJob(job);
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = JobSupport._parentHandle$volatile$FU$offset;
        ChildHandle childHandle = (ChildHandle) unsafe.getObjectVolatile(this, j);
        ChildHandleNode childHandleNode = childHandle instanceof ChildHandleNode ? (ChildHandleNode) childHandle : null;
        if (childHandleNode != null) {
            JobSupport job2 = childHandleNode.getJob();
            while (!job2.getHandlesException$kotlinx_coroutines_core()) {
                ChildHandle childHandle2 = (ChildHandle) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(job2, j);
                ChildHandleNode childHandleNode2 = childHandle2 instanceof ChildHandleNode ? (ChildHandleNode) childHandle2 : null;
                if (childHandleNode2 != null) {
                    job2 = childHandleNode2.getJob();
                }
            }
            this.handlesException = z;
        }
        z = false;
        this.handlesException = z;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getHandlesException$kotlinx_coroutines_core() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
