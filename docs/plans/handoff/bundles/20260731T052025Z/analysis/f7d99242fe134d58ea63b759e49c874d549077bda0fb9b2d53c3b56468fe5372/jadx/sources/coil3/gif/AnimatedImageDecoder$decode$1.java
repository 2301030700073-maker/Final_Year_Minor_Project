package coil3.gif;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.gif.AnimatedImageDecoder", f = "AnimatedImageDecoder.kt", l = {59, 101}, m = "decode", v = 1)
/* loaded from: classes.dex */
public final class AnimatedImageDecoder$decode$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AnimatedImageDecoder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedImageDecoder$decode$1(AnimatedImageDecoder animatedImageDecoder, Continuation continuation) {
        super(continuation);
        this.this$0 = animatedImageDecoder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.decode(this);
    }
}
