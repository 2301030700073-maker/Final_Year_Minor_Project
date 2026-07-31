package androidx.compose.animation.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Animatable$snapTo$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Object $targetValue;
    int label;
    final /* synthetic */ Animatable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$snapTo$2(Animatable animatable, Object obj, Continuation continuation) {
        super(1, continuation);
        this.this$0 = animatable;
        this.$targetValue = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Animatable$snapTo$2 animatable$snapTo$2 = new Animatable$snapTo$2(this.this$0, this.$targetValue, (Continuation) obj);
        Unit unit = Unit.INSTANCE;
        animatable$snapTo$2.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Animatable.access$endAnimation(this.this$0);
        Object access$clampToBounds = Animatable.access$clampToBounds(this.this$0, this.$targetValue);
        this.this$0.internalState.value$delegate.setValue(access$clampToBounds);
        this.this$0.targetValue$delegate.setValue(access$clampToBounds);
        return Unit.INSTANCE;
    }
}
