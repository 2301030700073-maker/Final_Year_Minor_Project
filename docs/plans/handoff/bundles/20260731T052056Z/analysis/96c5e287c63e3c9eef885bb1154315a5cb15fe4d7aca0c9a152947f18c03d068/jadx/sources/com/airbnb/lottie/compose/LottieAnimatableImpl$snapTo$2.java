package com.airbnb.lottie.compose;

import com.airbnb.lottie.LottieComposition;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieAnimatableImpl$snapTo$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ LottieComposition $composition;
    public final /* synthetic */ float $progress;
    public final /* synthetic */ boolean $resetLastFrameNanos;
    public final /* synthetic */ LottieAnimatableImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LottieAnimatableImpl$snapTo$2(LottieAnimatableImpl lottieAnimatableImpl, LottieComposition lottieComposition, float f, boolean z, Continuation continuation) {
        super(1, continuation);
        this.this$0 = lottieAnimatableImpl;
        this.$composition = lottieComposition;
        this.$progress = f;
        this.$resetLastFrameNanos = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float f = this.$progress;
        boolean z = this.$resetLastFrameNanos;
        LottieAnimatableImpl$snapTo$2 lottieAnimatableImpl$snapTo$2 = new LottieAnimatableImpl$snapTo$2(this.this$0, this.$composition, f, z, (Continuation) obj);
        Unit unit = Unit.INSTANCE;
        lottieAnimatableImpl$snapTo$2.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        LottieComposition lottieComposition = this.$composition;
        LottieAnimatableImpl lottieAnimatableImpl = this.this$0;
        lottieAnimatableImpl.composition$delegate.setValue(lottieComposition);
        lottieAnimatableImpl.updateProgress(this.$progress);
        lottieAnimatableImpl.setIteration(1);
        lottieAnimatableImpl.setPlaying(false);
        if (this.$resetLastFrameNanos) {
            lottieAnimatableImpl.lastFrameNanos$delegate.setValue(Long.MIN_VALUE);
        }
        return Unit.INSTANCE;
    }
}
