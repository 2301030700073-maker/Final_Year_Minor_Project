package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.ExceptionsKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.ScopeCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DispatchedCoroutine extends ScopeCoroutine {
    public static final /* synthetic */ long _decision$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(DispatchedCoroutine.class.getDeclaredField("_decision$volatile"));
    private volatile /* synthetic */ int _decision$volatile;

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public final void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public final void afterResume(Object obj) {
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _decision$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile != 0) {
                if (intVolatile != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already resumed");
                    return;
                } else {
                    InlineList.resumeCancellableWith(AwaitKt.recoverResult(obj), ExceptionsKt.intercepted(this.uCont));
                    return;
                }
            }
            DispatchedCoroutine dispatchedCoroutine = this;
            if (unsafe.compareAndSwapInt(dispatchedCoroutine, j, 0, 2)) {
                return;
            } else {
                this = dispatchedCoroutine;
            }
        }
    }
}
