package androidx.glance.session;

import androidx.compose.animation.core.Animatable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorker$doWork$2$1 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $$this$withTimerOrNull;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SessionWorker$doWork$2$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.$$this$withTimerOrNull = obj;
        this.this$0 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        Object obj3 = this.$$this$withTimerOrNull;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                new SessionWorker$doWork$2$1((TimerScopeKt$withTimer$2$1$blockScope$1) obj3, (SessionWorker) obj2, continuation, 0).invokeSuspend(unit);
                break;
            default:
                new SessionWorker$doWork$2$1((Animatable) obj3, obj2, continuation, 1).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        Object obj3 = this.$$this$withTimerOrNull;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                ((TimerScopeKt$withTimer$2$1$blockScope$1) obj3).m751startTimerLRDsOJo(((SessionWorker) obj2).timeouts.idleTimeout);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Animatable animatable = (Animatable) obj3;
                animatable.endAnimation();
                Object clampToBounds = animatable.clampToBounds(obj2);
                animatable.internalState.value$delegate.setValue(clampToBounds);
                animatable.targetValue$delegate.setValue(clampToBounds);
                break;
        }
        return unit;
    }
}
