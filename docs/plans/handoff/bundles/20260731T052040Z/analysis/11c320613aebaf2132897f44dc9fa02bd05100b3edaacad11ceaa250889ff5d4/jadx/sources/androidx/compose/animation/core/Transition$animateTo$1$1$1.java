package androidx.compose.animation.core;

import androidx.compose.material3.TabIndicatorOffsetNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Updater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Transition$animateTo$1$1$1 extends SuspendLambda implements Function2 {
    float F$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Transition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transition$animateTo$1$1$1(Transition transition, Continuation continuation) {
        super(2, continuation);
        this.this$0 = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Transition$animateTo$1$1$1 transition$animateTo$1$1$1 = new Transition$animateTo$1$1$1(this.this$0, continuation);
        transition$animateTo$1$1$1.L$0 = obj;
        return transition$animateTo$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Transition$animateTo$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float durationScale;
        CoroutineScope coroutineScope;
        int i = this.label;
        int i2 = 1;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            durationScale = ArcSplineKt.getDurationScale(coroutineScope2.getCoroutineContext());
            coroutineScope = coroutineScope2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            durationScale = this.F$0;
            coroutineScope = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (JobKt.isActive(coroutineScope)) {
            TabIndicatorOffsetNode$$ExternalSyntheticLambda0 tabIndicatorOffsetNode$$ExternalSyntheticLambda0 = new TabIndicatorOffsetNode$$ExternalSyntheticLambda0(this.this$0, durationScale, i2);
            this.L$0 = coroutineScope;
            this.F$0 = durationScale;
            this.label = 1;
            Object withFrameNanos = Updater.getMonotonicFrameClock(getContext()).withFrameNanos(tabIndicatorOffsetNode$$ExternalSyntheticLambda0, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (withFrameNanos == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
