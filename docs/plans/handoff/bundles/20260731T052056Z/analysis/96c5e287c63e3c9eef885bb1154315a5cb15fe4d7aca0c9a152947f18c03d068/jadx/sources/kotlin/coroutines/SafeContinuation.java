package kotlin.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SafeContinuation implements Continuation, CoroutineStackFrame {
    public static final /* synthetic */ long RESULT$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(SafeContinuation.class.getDeclaredField("result"));
    public final Continuation delegate;
    private volatile Object result;

    public SafeContinuation(Continuation continuation, CoroutineSingletons coroutineSingletons) {
        this.delegate = continuation;
        this.result = coroutineSingletons;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.delegate.getContext();
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        SafeContinuation safeContinuation;
        Unsafe unsafe;
        long j;
        while (true) {
            Object obj2 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
            if (obj2 == coroutineSingletons) {
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    long j2 = RESULT$offset;
                    safeContinuation = this;
                    if (unsafe2.compareAndSwapObject(safeContinuation, j2, coroutineSingletons, obj)) {
                        return;
                    }
                    if (unsafe2.getObjectVolatile(safeContinuation, j2) != coroutineSingletons) {
                        break;
                    } else {
                        this = safeContinuation;
                    }
                }
            } else {
                safeContinuation = this;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj2 != coroutineSingletons2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already resumed");
                    return;
                }
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.RESUMED;
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    j = RESULT$offset;
                    if (unsafe.compareAndSwapObject(safeContinuation, j, coroutineSingletons2, coroutineSingletons3)) {
                        safeContinuation.delegate.resumeWith(obj);
                        return;
                    }
                } while (unsafe.getObjectVolatile(safeContinuation, j) == coroutineSingletons2);
            }
            this = safeContinuation;
        }
    }

    public final String toString() {
        return "SafeContinuation for " + this.delegate;
    }
}
