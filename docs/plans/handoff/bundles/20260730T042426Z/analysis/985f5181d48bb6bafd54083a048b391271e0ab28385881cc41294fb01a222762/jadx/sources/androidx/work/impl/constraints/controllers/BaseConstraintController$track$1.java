package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: ContraintControllers.kt */
/* loaded from: classes.dex */
final class BaseConstraintController$track$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BaseConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseConstraintController$track$1(BaseConstraintController baseConstraintController, Continuation continuation) {
        super(2, continuation);
        this.this$0 = baseConstraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BaseConstraintController$track$1 baseConstraintController$track$1 = new BaseConstraintController$track$1(this.this$0, continuation);
        baseConstraintController$track$1.L$0 = obj;
        return baseConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope producerScope, Continuation continuation) {
        return ((BaseConstraintController$track$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.constraints.ConstraintListener, androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConstraintTracker constraintTracker;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final BaseConstraintController baseConstraintController = this.this$0;
            final ?? r1 = new ConstraintListener() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1
                @Override // androidx.work.impl.constraints.ConstraintListener
                public void onConstraintChanged(Object obj2) {
                    producerScope.getChannel().mo2833trySendJP2dKIU(BaseConstraintController.this.isConstrained(obj2) ? new ConstraintsState.ConstraintsNotMet(BaseConstraintController.this.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE);
                }
            };
            constraintTracker = this.this$0.tracker;
            constraintTracker.addListener(r1);
            final BaseConstraintController baseConstraintController2 = this.this$0;
            Function0 function0 = new Function0() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m2571invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m2571invoke() {
                    ConstraintTracker constraintTracker2;
                    constraintTracker2 = BaseConstraintController.this.tracker;
                    constraintTracker2.removeListener(r1);
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
