package kotlinx.coroutines.sync;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class SemaphoreAndMutexImpl {
    public static final /* synthetic */ AtomicIntegerFieldUpdater _availablePermits$volatile$FU;
    public static final /* synthetic */ long _availablePermits$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater deqIdx$volatile$FU;
    public static final /* synthetic */ AtomicLongFieldUpdater enqIdx$volatile$FU;
    public static final /* synthetic */ long head$volatile$FU$offset;
    public static final /* synthetic */ long tail$volatile$FU$offset;
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    public final CommunityContentTabKt$$ExternalSyntheticLambda47 onCancellationRelease;
    public final int permits;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        head$volatile$FU$offset = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("head$volatile"));
        deqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
        tail$volatile$FU$offset = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("tail$volatile"));
        enqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
        _availablePermits$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
        _availablePermits$volatile$FU$offset = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("_availablePermits$volatile"));
    }

    public SemaphoreAndMutexImpl(int i) {
        this.permits = i;
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "The number of acquired permits should be in 0.."));
            throw null;
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i;
        this.onCancellationRelease = new CommunityContentTabKt$$ExternalSyntheticLambda47(8, this);
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
            kotlin.coroutines.Continuation r5 = kotlin.ExceptionsKt.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.AwaitKt.getOrCreateCancellableContinuation(r5)
            boolean r1 = r4.addAcquireToQueue(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L31
        L1d:
            int r1 = r0.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3f
            if (r1 > r2) goto L1d
            if (r1 <= 0) goto L2b
            org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L3f
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
        Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
        long j = tail$volatile$FU$offset;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(semaphoreAndMutexImpl, j);
        long andIncrement = enqIdx$volatile$FU.getAndIncrement(semaphoreAndMutexImpl);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        long j2 = andIncrement / SemaphoreKt.SEGMENT_SIZE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j2, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (InlineList.m868isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m867getSegmentimpl = InlineList.m867getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(semaphoreAndMutexImpl, j);
                if (segment.id >= m867getSegmentimpl.id) {
                    semaphoreAndMutexImpl = this;
                    break loop0;
                }
                if (!m867getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    semaphoreAndMutexImpl = this;
                    if (unsafe.compareAndSwapObject(semaphoreAndMutexImpl, tail$volatile$FU$offset, segment, m867getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                } while (unsafe.getObjectVolatile(semaphoreAndMutexImpl, j) == segment);
                if (m867getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m867getSegmentimpl.remove();
                }
            }
            semaphoreAndMutexImpl = this;
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m867getSegmentimpl(findSegmentInternal);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.acquirers;
        int i = (int) (andIncrement % SemaphoreKt.SEGMENT_SIZE);
        while (!atomicReferenceArray.compareAndSet(i, null, waiter)) {
            if (atomicReferenceArray.get(i) != null) {
                Symbol symbol = SemaphoreKt.PERMIT;
                Symbol symbol2 = SemaphoreKt.TAKEN;
                while (!atomicReferenceArray.compareAndSet(i, symbol, symbol2)) {
                    if (atomicReferenceArray.get(i) != symbol) {
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
        Unsafe unsafe;
        long j;
        int intVolatile;
        int i;
        Object findSegmentInternal;
        boolean z;
        Unsafe unsafe2;
        do {
            int andIncrement = _availablePermits$volatile$FU.getAndIncrement(this);
            int i2 = this.permits;
            if (andIncrement >= i2) {
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    j = _availablePermits$volatile$FU$offset;
                    intVolatile = unsafe.getIntVolatile(this, j);
                    i = this.permits;
                    if (intVolatile <= i) {
                        break;
                    }
                } while (!unsafe.compareAndSwapInt(this, j, intVolatile, i));
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(i2, "The number of released permits cannot be greater than ");
                return;
            }
            if (andIncrement >= 0) {
                return;
            }
            Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
            long j2 = head$volatile$FU$offset;
            SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe3.getObjectVolatile(this, j2);
            long andIncrement2 = deqIdx$volatile$FU.getAndIncrement(this);
            long j3 = andIncrement2 / SemaphoreKt.SEGMENT_SIZE;
            SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
            while (true) {
                findSegmentInternal = InlineList.findSegmentInternal(semaphoreSegment, j3, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
                if (InlineList.m868isClosedimpl(findSegmentInternal)) {
                    break;
                }
                Segment m867getSegmentimpl = InlineList.m867getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, j2);
                    if (segment.id >= m867getSegmentimpl.id) {
                        break;
                    }
                    if (!m867getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe2.compareAndSwapObject(this, head$volatile$FU$offset, segment, m867getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe2.getObjectVolatile(this, j2) == segment);
                    if (m867getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m867getSegmentimpl.remove();
                    }
                }
            }
            SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) InlineList.m867getSegmentimpl(findSegmentInternal);
            AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.acquirers;
            semaphoreSegment2.cleanPrev();
            z = false;
            if (semaphoreSegment2.id <= j3) {
                int i3 = (int) (andIncrement2 % SemaphoreKt.SEGMENT_SIZE);
                Object andSet = atomicReferenceArray.getAndSet(i3, SemaphoreKt.PERMIT);
                if (andSet == null) {
                    int i4 = SemaphoreKt.MAX_SPIN_CYCLES;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (atomicReferenceArray.get(i3) == SemaphoreKt.TAKEN) {
                            z = true;
                            break;
                        }
                    }
                    Symbol symbol = SemaphoreKt.PERMIT;
                    Symbol symbol2 = SemaphoreKt.BROKEN;
                    while (true) {
                        if (!atomicReferenceArray.compareAndSet(i3, symbol, symbol2)) {
                            if (atomicReferenceArray.get(i3) != symbol) {
                                break;
                            }
                        } else {
                            z = true;
                            break;
                        }
                    }
                    z = !z;
                } else if (andSet != SemaphoreKt.CANCELLED) {
                    boolean z2 = andSet instanceof CancellableContinuation;
                    Unit unit = Unit.INSTANCE;
                    if (!z2) {
                        if (!(andSet instanceof SelectImplementation)) {
                            Gson$$ExternalSyntheticBUOutline0.m$8("unexpected: ", andSet);
                            return;
                        }
                        if (((SelectImplementation) andSet).trySelectInternal(this, unit) != 0) {
                        }
                        z = true;
                        break;
                        break;
                    }
                    CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                    Symbol tryResume = cancellableContinuation.tryResume(unit, this.onCancellationRelease);
                    if (tryResume != null) {
                        cancellableContinuation.completeResume(tryResume);
                        z = true;
                        break;
                        break;
                    }
                }
            }
        } while (!z);
    }
}
