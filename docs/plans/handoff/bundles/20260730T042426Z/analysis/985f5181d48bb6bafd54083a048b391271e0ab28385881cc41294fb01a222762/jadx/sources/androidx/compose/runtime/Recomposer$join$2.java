package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: Recomposer.kt */
/* loaded from: classes.dex */
final class Recomposer$join$2 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    Recomposer$join$2(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Recomposer$join$2 recomposer$join$2 = new Recomposer$join$2(continuation);
        recomposer$join$2.L$0 = obj;
        return recomposer$join$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Recomposer.State state, Continuation continuation) {
        return ((Recomposer$join$2) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(((Recomposer.State) this.L$0) == Recomposer.State.ShutDown);
    }
}
