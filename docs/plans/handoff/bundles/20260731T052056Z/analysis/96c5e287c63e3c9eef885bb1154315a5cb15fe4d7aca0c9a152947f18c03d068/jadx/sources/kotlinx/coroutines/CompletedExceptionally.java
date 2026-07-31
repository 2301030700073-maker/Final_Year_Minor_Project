package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class CompletedExceptionally {
    public static final /* synthetic */ long _handled$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(CompletedExceptionally.class.getDeclaredField("_handled$volatile"));
    private volatile /* synthetic */ int _handled$volatile;
    public final Throwable cause;

    public CompletedExceptionally(Throwable th, boolean z) {
        this.cause = th;
        this._handled$volatile = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.cause + ']';
    }
}
