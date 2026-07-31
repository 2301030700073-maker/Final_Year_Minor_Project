package kotlinx.coroutines.sync;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SemaphoreAndMutexImpl {
    public static final /* synthetic */ AtomicIntegerFieldUpdater _availablePermits$volatile$FU;
    public static final /* synthetic */ AtomicLongFieldUpdater deqIdx$volatile$FU;
    public static final /* synthetic */ AtomicLongFieldUpdater enqIdx$volatile$FU;
    public static final /* synthetic */ AtomicReferenceFieldUpdater head$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");
    public static final /* synthetic */ long head$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater tail$volatile$FU;
    public static final /* synthetic */ long tail$volatile$FU$offset;
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    public final MovableContentKt$$ExternalSyntheticLambda0 onCancellationRelease;
    public final int permits;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        head$volatile$FU$offset = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("head$volatile"));
        deqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
        tail$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
        tail$volatile$FU$offset = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("tail$volatile"));
        enqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
        _availablePermits$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    }

    public SemaphoreAndMutexImpl(int i) {
        this.permits = i;
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Semaphore should have at least 1 permit, but had ", i));
            throw null;
        }
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("The number of acquired permits should be in 0..", i));
            throw null;
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i;
        this.onCancellationRelease = new MovableContentKt$$ExternalSyntheticLambda0(9, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0025, code lost:
    
        r5.resume(r3, r4.onCancellationRelease);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquire(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
        L0:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.sync.SemaphoreAndMutexImpl._availablePermits$volatile$FU
            int r1 = r0.getAndDecrement(r4)
            int r2 = r4.permits
            if (r1 > r2) goto L0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            if (r1 <= 0) goto Lf
            goto L3e
        Lf:
            kotlin.coroutines.Continuation r5 = kotlinx.atomicfu.AtomicFU.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.JobKt.getOrCreateCancellableContinuation(r5)
            boolean r1 = r4.addAcquireToQueue(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L31
        L1d:
            int r1 = r0.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3f
            if (r1 > r2) goto L1d
            if (r1 <= 0) goto L2b
            androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L3f
            r5.resume(r3, r4)     // Catch: java.lang.Throwable -> L3f
            goto L31
        L2b:
            boolean r1 = r4.addAcquireToQueue(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L1d
        L31:
            java.lang.Object r4 = r5.getResult()
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L3a
            goto L3b
        L3a:
            r4 = r3
        L3b:
            if (r4 != r5) goto L3e
            return r4
        L3e:
            return r3
        L3f:
            r4 = move-exception
            r5.releaseClaimedReusableContinuation$kotlinx_coroutines_core()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreAndMutexImpl.acquire(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean addAcquireToQueue(Waiter waiter) {
        Object findSegmentInternal;
        Unsafe unsafe;
        SemaphoreAndMutexImpl semaphoreAndMutexImpl = this;
        tail$volatile$FU.getClass();
        Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        long j = tail$volatile$FU$offset;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(semaphoreAndMutexImpl, j);
        long andIncrement = enqIdx$volatile$FU.getAndIncrement(semaphoreAndMutexImpl);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        long j2 = andIncrement / SemaphoreKt.SEGMENT_SIZE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j2, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (InlineList.m1021isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m1020getSegmentimpl = InlineList.m1020getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(semaphoreAndMutexImpl, j);
                if (segment.id >= m1020getSegmentimpl.id) {
                    semaphoreAndMutexImpl = this;
                    break loop0;
                }
                if (!m1020getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                do {
                    unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    semaphoreAndMutexImpl = this;
                    if (unsafe.compareAndSwapObject(semaphoreAndMutexImpl, tail$volatile$FU$offset, segment, m1020getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                } while (unsafe.getObjectVolatile(semaphoreAndMutexImpl, j) == segment);
                if (m1020getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m1020getSegmentimpl.remove();
                }
            }
            semaphoreAndMutexImpl = this;
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m1020getSegmentimpl(findSegmentInternal);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.acquirers;
        int i = (int) (andIncrement % SemaphoreKt.SEGMENT_SIZE);
        while (!atomicReferenceArray.compareAndSet(i, null, waiter)) {
            if (atomicReferenceArray.get(i) != null) {
                LocalStore.AnonymousClass8 anonymousClass8 = SemaphoreKt.PERMIT;
                LocalStore.AnonymousClass8 anonymousClass82 = SemaphoreKt.TAKEN;
                while (!atomicReferenceArray.compareAndSet(i, anonymousClass8, anonymousClass82)) {
                    if (atomicReferenceArray.get(i) != anonymousClass8) {
                        return false;
                    }
                }
                ((CancellableContinuation) waiter).resume(Unit.INSTANCE, semaphoreAndMutexImpl.onCancellationRelease);
                return true;
            }
        }
        waiter.invokeOnCancellation(semaphoreSegment2, i);
        return true;
    }

    public final void release() {
        int i;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _availablePermits$volatile$FU;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.permits;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("The number of released permits cannot be greater than ", i2);
                return;
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!tryResumeNextFromQueue());
    }

    public final boolean tryResumeNextFromQueue() {
        Object findSegmentInternal;
        Unsafe unsafe;
        head$volatile$FU.getClass();
        Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        long j = head$volatile$FU$offset;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(this, j);
        long andIncrement = deqIdx$volatile$FU.getAndIncrement(this);
        long j2 = andIncrement / SemaphoreKt.SEGMENT_SIZE;
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j2, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (InlineList.m1021isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m1020getSegmentimpl = InlineList.m1020getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, j);
                if (segment.id >= m1020getSegmentimpl.id) {
                    break loop0;
                }
                if (!m1020getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                do {
                    unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(this, head$volatile$FU$offset, segment, m1020getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                } while (unsafe.getObjectVolatile(this, j) == segment);
                if (m1020getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m1020getSegmentimpl.remove();
                }
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m1020getSegmentimpl(findSegmentInternal);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.acquirers;
        semaphoreSegment2.cleanPrev();
        boolean z = false;
        if (semaphoreSegment2.id <= j2) {
            int i = (int) (andIncrement % SemaphoreKt.SEGMENT_SIZE);
            Object andSet = atomicReferenceArray.getAndSet(i, SemaphoreKt.PERMIT);
            if (andSet == null) {
                int i2 = SemaphoreKt.MAX_SPIN_CYCLES;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (atomicReferenceArray.get(i) == SemaphoreKt.TAKEN) {
                        return true;
                    }
                }
                LocalStore.AnonymousClass8 anonymousClass8 = SemaphoreKt.PERMIT;
                LocalStore.AnonymousClass8 anonymousClass82 = SemaphoreKt.BROKEN;
                while (true) {
                    if (atomicReferenceArray.compareAndSet(i, anonymousClass8, anonymousClass82)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceArray.get(i) != anonymousClass8) {
                        break;
                    }
                }
                return !z;
            }
            if (andSet != SemaphoreKt.CANCELLED) {
                boolean z2 = andSet instanceof CancellableContinuation;
                Unit unit = Unit.INSTANCE;
                if (!z2) {
                    if (andSet instanceof SelectImplementation) {
                        return ((SelectImplementation) andSet).trySelectInternal(this, unit) == 0;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(andSet, "unexpected: ");
                    return false;
                }
                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                LocalStore.AnonymousClass8 tryResume = cancellableContinuation.tryResume(unit, this.onCancellationRelease);
                if (tryResume != null) {
                    cancellableContinuation.completeResume(tryResume);
                    return true;
                }
            }
        }
        return false;
    }
}
