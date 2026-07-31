package kotlinx.coroutines.sync;

import _COROUTINE.ArtificialStackFramesUnsafe;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater owner$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long owner$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(MutexImpl.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CancellableContinuationWithOwner implements CancellableContinuation, Waiter {
        public final CancellableContinuationImpl cont;

        public CancellableContinuationWithOwner(CancellableContinuationImpl cancellableContinuationImpl) {
            this.cont = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final boolean cancel(Throwable th) {
            return this.cont.cancel(th);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void completeResume(Object obj) {
            this.cont.completeResume(obj);
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext getContext() {
            return this.cont.context;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void invokeOnCancellation(Segment segment, int i) {
            this.cont.invokeOnCancellation(segment, i);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void resume(Object obj, Function3 function3) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.owner$volatile$FU;
            MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, null);
            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(24, mutexImpl, this);
            CancellableContinuationImpl cancellableContinuationImpl = this.cont;
            cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core((Unit) obj, cancellableContinuationImpl.resumeMode, new CommunityContentTabKt$$ExternalSyntheticLambda47(6, diskLruCache$$ExternalSyntheticLambda0));
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            this.cont.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Symbol tryResume(Object obj, Function3 function3) {
            MutexImpl mutexImpl = MutexImpl.this;
            CommunityContentTabKt$$ExternalSyntheticLambda47 communityContentTabKt$$ExternalSyntheticLambda47 = new CommunityContentTabKt$$ExternalSyntheticLambda47(mutexImpl, this);
            Symbol tryResumeImpl = this.cont.tryResumeImpl((Unit) obj, communityContentTabKt$$ExternalSyntheticLambda47);
            if (tryResumeImpl != null) {
                MutexImpl.owner$volatile$FU.set(mutexImpl, null);
            }
            return tryResumeImpl;
        }
    }

    public MutexImpl() {
        super(1);
        this.owner$volatile = MutexKt.NO_OWNER;
    }

    public final boolean isLocked() {
        return Math.max(ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, SemaphoreAndMutexImpl._availablePermits$volatile$FU$offset), 0) == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        r0.resume(r1, r4.onCancellationRelease);
     */
    @Override // kotlinx.coroutines.sync.Mutex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object lock(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r4.tryLock()
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            if (r0 == 0) goto L9
            goto L3b
        L9:
            kotlin.coroutines.Continuation r5 = kotlin.ExceptionsKt.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.AwaitKt.getOrCreateCancellableContinuation(r5)
            kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner r0 = new kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner     // Catch: java.lang.Throwable -> L3c
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L3c
        L16:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.sync.SemaphoreAndMutexImpl._availablePermits$volatile$FU     // Catch: java.lang.Throwable -> L3c
            int r2 = r2.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3c
            int r3 = r4.permits     // Catch: java.lang.Throwable -> L3c
            if (r2 > r3) goto L16
            if (r2 <= 0) goto L28
            org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L3c
            r0.resume(r1, r4)     // Catch: java.lang.Throwable -> L3c
            goto L2e
        L28:
            boolean r2 = r4.addAcquireToQueue(r0)     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L16
        L2e:
            java.lang.Object r4 = r5.getResult()
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L37
            goto L38
        L37:
            r4 = r1
        L38:
            if (r4 != r5) goto L3b
            return r4
        L3b:
            return r1
        L3c:
            r4 = move-exception
            r5.releaseClaimedReusableContinuation$kotlinx_coroutines_core()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexImpl.lock(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String toString() {
        return "Mutex@" + AwaitKt.getHexAddress(this) + "[isLocked=" + isLocked() + ",owner=" + ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, owner$volatile$FU$offset) + ']';
    }

    public final boolean tryLock() {
        MutexImpl mutexImpl;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = SemaphoreAndMutexImpl._availablePermits$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile > this.permits) {
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    long j2 = SemaphoreAndMutexImpl._availablePermits$volatile$FU$offset;
                    int intVolatile2 = unsafe2.getIntVolatile(this, j2);
                    int i = this.permits;
                    if (intVolatile2 <= i) {
                        mutexImpl = this;
                        break;
                    }
                    MutexImpl mutexImpl2 = this;
                    mutexImpl = mutexImpl2;
                    if (unsafe2.compareAndSwapInt(mutexImpl2, j2, intVolatile2, i)) {
                        break;
                    }
                    this = mutexImpl;
                }
            } else {
                mutexImpl = this;
                if (intVolatile <= 0) {
                    return false;
                }
                if (unsafe.compareAndSwapInt(mutexImpl, j, intVolatile, intVolatile - 1)) {
                    unsafe.putObjectVolatile(mutexImpl, owner$volatile$FU$offset, (Object) null);
                    return true;
                }
            }
            this = mutexImpl;
        }
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void unlock(Object obj) {
        while (this.isLocked()) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = owner$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            Symbol symbol = MutexKt.NO_OWNER;
            if (objectVolatile != symbol) {
                if (objectVolatile != obj && obj != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    MutexImpl mutexImpl = this;
                    if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapObject(mutexImpl, owner$volatile$FU$offset, objectVolatile, symbol)) {
                        mutexImpl.release();
                        return;
                    } else {
                        if (ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(mutexImpl, j) != objectVolatile) {
                            this = mutexImpl;
                            break;
                        }
                        this = mutexImpl;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This mutex is not locked");
    }
}
