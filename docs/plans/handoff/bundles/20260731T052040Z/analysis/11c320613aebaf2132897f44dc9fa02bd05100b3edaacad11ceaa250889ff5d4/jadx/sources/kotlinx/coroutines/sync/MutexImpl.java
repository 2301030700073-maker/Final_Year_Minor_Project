package kotlinx.coroutines.sync;

import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import com.google.common.base.Joiner;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater owner$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long owner$volatile$FU$offset = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.objectFieldOffset(MutexImpl.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            RxAwaitKt$$ExternalSyntheticLambda0 rxAwaitKt$$ExternalSyntheticLambda0 = new RxAwaitKt$$ExternalSyntheticLambda0(mutexImpl, this);
            CancellableContinuationImpl cancellableContinuationImpl = this.cont;
            cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core((Unit) obj, cancellableContinuationImpl.resumeMode, new TabKt$$ExternalSyntheticLambda1(rxAwaitKt$$ExternalSyntheticLambda0, 7));
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            this.cont.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Joiner tryResume(Object obj, Function3 function3) {
            MutexImpl mutexImpl = MutexImpl.this;
            TabKt$$ExternalSyntheticLambda1 tabKt$$ExternalSyntheticLambda1 = new TabKt$$ExternalSyntheticLambda1(mutexImpl, this);
            Joiner tryResumeImpl = this.cont.tryResumeImpl((Unit) obj, tabKt$$ExternalSyntheticLambda1);
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

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0035, code lost:
    
        r0.resume(r1, r4.onCancellationRelease);
     */
    @Override // kotlinx.coroutines.sync.Mutex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object lock(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            int r0 = r4.tryLockImpl()
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            if (r0 == 0) goto L53
            r2 = 1
            if (r0 == r2) goto L1c
            r4 = 2
            r5 = 0
            if (r0 == r4) goto L16
            java.lang.String r4 = "unexpected"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r5
        L16:
            java.lang.String r4 = "This mutex is already locked by the specified owner: null"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m(r4)
            return r5
        L1c:
            kotlin.coroutines.Continuation r5 = kotlin.text.UStringsKt.intercepted(r5)
            kotlinx.coroutines.CancellableContinuationImpl r5 = kotlinx.coroutines.JobKt.getOrCreateCancellableContinuation(r5)
            kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner r0 = new kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner     // Catch: java.lang.Throwable -> L4e
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L4e
        L29:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.sync.SemaphoreAndMutexImpl._availablePermits$volatile$FU     // Catch: java.lang.Throwable -> L4e
            int r2 = r2.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L4e
            int r3 = r4.permits     // Catch: java.lang.Throwable -> L4e
            if (r2 > r3) goto L29
            if (r2 <= 0) goto L3b
            androidx.compose.material3.TabKt$$ExternalSyntheticLambda1 r4 = r4.onCancellationRelease     // Catch: java.lang.Throwable -> L4e
            r0.resume(r1, r4)     // Catch: java.lang.Throwable -> L4e
            goto L41
        L3b:
            boolean r2 = r4.addAcquireToQueue(r0)     // Catch: java.lang.Throwable -> L4e
            if (r2 == 0) goto L29
        L41:
            java.lang.Object r4 = r5.getResult()
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L4a
            goto L4b
        L4a:
            r4 = r1
        L4b:
            if (r4 != r5) goto L53
            return r4
        L4e:
            r4 = move-exception
            r5.releaseClaimedReusableContinuation$kotlinx_coroutines_core()
            throw r4
        L53:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexImpl.lock(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(JobKt.getHexAddress(this));
        sb.append("[isLocked=");
        sb.append(isLocked());
        sb.append(",owner=");
        owner$volatile$FU.getClass();
        sb.append(CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, owner$volatile$FU$offset));
        sb.append(']');
        return sb.toString();
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
                    CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, owner$volatile$FU$offset, (Object) null);
                    return 0;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void unlock(Object obj) {
        while (this.isLocked()) {
            owner$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = owner$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            Joiner joiner = MutexKt.NO_OWNER;
            if (objectVolatile != joiner) {
                if (objectVolatile != obj && obj != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    MutexImpl mutexImpl = this;
                    if (unsafe2.compareAndSwapObject(mutexImpl, owner$volatile$FU$offset, objectVolatile, joiner)) {
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
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This mutex is not locked");
    }
}
