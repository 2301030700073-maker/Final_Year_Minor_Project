package kotlinx.coroutines.sync;

import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import com.google.common.base.Joiner;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final TabKt$$ExternalSyntheticLambda1 onCancellationRelease;
    public final int permits;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "The number of acquired permits should be in 0.."));
            throw null;
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i;
        this.onCancellationRelease = new TabKt$$ExternalSyntheticLambda1(this, 9);
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
            kotlin.coroutines.Continuation r5 = kotlin.text.UStringsKt.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.JobKt.getOrCreateCancellableContinuation(r5)
            boolean r1 = r4.addAcquireToQueue(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L31
        L1d:
            int r1 = r0.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3f
            if (r1 > r2) goto L1d
            if (r1 <= 0) goto L2b
            androidx.compose.material3.TabKt$$ExternalSyntheticLambda1 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L3f
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
        Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        long j = tail$volatile$FU$offset;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(semaphoreAndMutexImpl, j);
        long andIncrement = enqIdx$volatile$FU.getAndIncrement(semaphoreAndMutexImpl);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        long j2 = andIncrement / SemaphoreKt.SEGMENT_SIZE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j2, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (InlineList.m695isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m694getSegmentimpl = InlineList.m694getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(semaphoreAndMutexImpl, j);
                if (segment.id >= m694getSegmentimpl.id) {
                    semaphoreAndMutexImpl = this;
                    break loop0;
                }
                if (!m694getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    semaphoreAndMutexImpl = this;
                    if (unsafe.compareAndSwapObject(semaphoreAndMutexImpl, tail$volatile$FU$offset, segment, m694getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                } while (unsafe.getObjectVolatile(semaphoreAndMutexImpl, j) == segment);
                if (m694getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m694getSegmentimpl.remove();
                }
            }
            semaphoreAndMutexImpl = this;
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m694getSegmentimpl(findSegmentInternal);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.acquirers;
        int i = (int) (andIncrement % SemaphoreKt.SEGMENT_SIZE);
        while (!atomicReferenceArray.compareAndSet(i, null, waiter)) {
            if (atomicReferenceArray.get(i) != null) {
                Joiner joiner = SemaphoreKt.PERMIT;
                Joiner joiner2 = SemaphoreKt.TAKEN;
                while (!atomicReferenceArray.compareAndSet(i, joiner, joiner2)) {
                    if (atomicReferenceArray.get(i) != joiner) {
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(i2, "The number of released permits cannot be greater than ");
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
        Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        long j = head$volatile$FU$offset;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(this, j);
        long andIncrement = deqIdx$volatile$FU.getAndIncrement(this);
        long j2 = andIncrement / SemaphoreKt.SEGMENT_SIZE;
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j2, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (InlineList.m695isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m694getSegmentimpl = InlineList.m694getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, j);
                if (segment.id >= m694getSegmentimpl.id) {
                    break loop0;
                }
                if (!m694getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(this, head$volatile$FU$offset, segment, m694getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                } while (unsafe.getObjectVolatile(this, j) == segment);
                if (m694getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m694getSegmentimpl.remove();
                }
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m694getSegmentimpl(findSegmentInternal);
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
                Joiner joiner = SemaphoreKt.PERMIT;
                Joiner joiner2 = SemaphoreKt.BROKEN;
                while (true) {
                    if (atomicReferenceArray.compareAndSet(i, joiner, joiner2)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceArray.get(i) != joiner) {
                        break;
                    }
                }
                return !z;
            }
            if (andSet != SemaphoreKt.CANCELLED) {
                if (!(andSet instanceof CancellableContinuation)) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(andSet, "unexpected: ");
                    return false;
                }
                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                Joiner tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, this.onCancellationRelease);
                if (tryResume != null) {
                    cancellableContinuation.completeResume(tryResume);
                    return true;
                }
            }
        }
        return false;
    }
}
