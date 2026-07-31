package androidx.work.impl.constraints;

import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.flow.internal.FlowCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker$track$$inlined$combine$1 implements Flow {
    public final /* synthetic */ Object $flowArray$inlined;
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
    public final class AnonymousClass3 extends SuspendLambda implements Function3 {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(3, (Continuation) obj3);
            anonymousClass3.L$0 = (FlowCollector) obj;
            anonymousClass3.L$1 = (Object[]) obj2;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ConstraintsState constraintsState;
            int i = this.label;
            ConstraintsState constraintsState2 = null;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                int length = constraintsStateArr.length;
                int i2 = 0;
                while (true) {
                    constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                    if (i2 >= length) {
                        break;
                    }
                    ConstraintsState constraintsState3 = constraintsStateArr[i2];
                    if (!Intrinsics.areEqual(constraintsState3, constraintsState)) {
                        constraintsState2 = constraintsState3;
                        break;
                    }
                    i2++;
                }
                if (constraintsState2 != null) {
                    constraintsState = constraintsState2;
                }
                this.label = 1;
                Object emit = flowCollector.emit(constraintsState, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (emit == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ WorkConstraintsTracker$track$$inlined$combine$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$flowArray$inlined = obj;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Object obj = this.$flowArray$inlined;
        switch (i) {
            case 0:
                Flow[] flowArr = (Flow[]) obj;
                CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(flowArr, new GapPending$keyMap$2(flowArr, 2), new AnonymousClass3(3, null), flowCollector, null);
                FlowCoroutine flowCoroutine = new FlowCoroutine(continuation, continuation.getContext());
                Object startUndispatched = Options.Companion.startUndispatched(flowCoroutine, true, flowCoroutine, combineKt$combineInternal$2);
                if (startUndispatched != coroutineSingletons) {
                    startUndispatched = unit;
                }
                return startUndispatched == coroutineSingletons ? startUndispatched : unit;
            case 1:
                Object collect = ((FlowKt__MergeKt$flatMapMerge$$inlined$map$1) obj).collect(new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2(flowCollector), continuation);
                return collect == coroutineSingletons ? collect : unit;
            default:
                Object collect2 = ((FlowUtil$createFlow$$inlined$map$1) obj).collect(new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2(flowCollector), continuation);
                return collect2 == coroutineSingletons ? collect2 : unit;
        }
    }
}
