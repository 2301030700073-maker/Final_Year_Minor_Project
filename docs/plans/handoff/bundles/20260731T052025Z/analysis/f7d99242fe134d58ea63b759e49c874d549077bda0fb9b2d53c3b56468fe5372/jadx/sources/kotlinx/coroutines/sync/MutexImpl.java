package kotlinx.coroutines.sync;

import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater owner$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long owner$volatile$FU$offset = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.objectFieldOffset(MutexImpl.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0 = new AbstractMap$$ExternalSyntheticLambda0(mutexImpl, this);
            CancellableContinuationImpl cancellableContinuationImpl = this.cont;
            cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core((Unit) obj, cancellableContinuationImpl.resumeMode, new MovableContentKt$$ExternalSyntheticLambda0(6, abstractMap$$ExternalSyntheticLambda0));
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            this.cont.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final LocalStore.AnonymousClass8 tryResume(Object obj, Function3 function3) {
            MutexImpl mutexImpl = MutexImpl.this;
            MovableContentKt$$ExternalSyntheticLambda0 movableContentKt$$ExternalSyntheticLambda0 = new MovableContentKt$$ExternalSyntheticLambda0(mutexImpl, this);
            LocalStore.AnonymousClass8 tryResumeImpl = this.cont.tryResumeImpl((Unit) obj, movableContentKt$$ExternalSyntheticLambda0);
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
        return Math.max(SemaphoreAndMutexImpl._availablePermits$volatile$FU.get(this), 0) == 0;
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
            kotlin.coroutines.Continuation r5 = kotlinx.atomicfu.AtomicFU.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.JobKt.getOrCreateCancellableContinuation(r5)
            kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner r0 = new kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner     // Catch: java.lang.Throwable -> L3c
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L3c
        L16:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.sync.SemaphoreAndMutexImpl._availablePermits$volatile$FU     // Catch: java.lang.Throwable -> L3c
            int r2 = r2.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3c
            int r3 = r4.permits     // Catch: java.lang.Throwable -> L3c
            if (r2 > r3) goto L16
            if (r2 <= 0) goto L28
            androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L3c
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
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(JobKt.getHexAddress(this));
        sb.append("[isLocked=");
        sb.append(isLocked());
        sb.append(",owner=");
        owner$volatile$FU.getClass();
        sb.append(AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, owner$volatile$FU$offset));
        sb.append(']');
        return sb.toString();
    }

    public final boolean tryLock() {
        int tryLockImpl = tryLockImpl();
        if (tryLockImpl == 0) {
            return true;
        }
        if (tryLockImpl == 1) {
            return false;
        }
        if (tryLockImpl != 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected");
            return false;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "This mutex is already locked by the specified owner: null");
        return false;
    }

    public final int tryLockImpl() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = SemaphoreAndMutexImpl._availablePermits$volatile$FU;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.permits;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return 1;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    owner$volatile$FU.getClass();
                    AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, owner$volatile$FU$offset, (Object) null);
                    return 0;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void unlock(Object obj) {
        while (this.isLocked()) {
            owner$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = owner$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            LocalStore.AnonymousClass8 anonymousClass8 = MutexKt.NO_OWNER;
            if (objectVolatile != anonymousClass8) {
                if (objectVolatile != obj && obj != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    MutexImpl mutexImpl = this;
                    if (unsafe2.compareAndSwapObject(mutexImpl, owner$volatile$FU$offset, objectVolatile, anonymousClass8)) {
                        mutexImpl.release();
                        return;
                    } else {
                        if (unsafe2.getObjectVolatile(mutexImpl, j) != objectVolatile) {
                            this = mutexImpl;
                            break;
                        }
                        this = mutexImpl;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This mutex is not locked");
    }
}
