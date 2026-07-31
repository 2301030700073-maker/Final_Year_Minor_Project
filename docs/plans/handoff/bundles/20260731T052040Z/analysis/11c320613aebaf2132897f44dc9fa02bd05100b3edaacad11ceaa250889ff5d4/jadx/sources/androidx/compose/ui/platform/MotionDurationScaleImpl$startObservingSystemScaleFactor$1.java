package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.rx3.RxConvertKt$asObservable$1$job$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MotionDurationScaleImpl$startObservingSystemScaleFactor$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ StateFlow $durationScaleStateFlow;
    int label;
    final /* synthetic */ MotionDurationScaleImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MotionDurationScaleImpl$startObservingSystemScaleFactor$1(StateFlow stateFlow, MotionDurationScaleImpl motionDurationScaleImpl, Continuation continuation) {
        super(2, continuation);
        this.$durationScaleStateFlow = stateFlow;
        this.this$0 = motionDurationScaleImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MotionDurationScaleImpl$startObservingSystemScaleFactor$1(this.$durationScaleStateFlow, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((MotionDurationScaleImpl$startObservingSystemScaleFactor$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            StateFlow stateFlow = this.$durationScaleStateFlow;
            RxConvertKt$asObservable$1$job$1.AnonymousClass1 anonymousClass1 = new RxConvertKt$asObservable$1$job$1.AnonymousClass1(this.this$0, 2);
            this.label = 1;
            Object collect = stateFlow.collect(anonymousClass1, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (collect == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        LayoutNode$$ExternalSyntheticBUOutline0.m322m();
        return null;
    }
}
