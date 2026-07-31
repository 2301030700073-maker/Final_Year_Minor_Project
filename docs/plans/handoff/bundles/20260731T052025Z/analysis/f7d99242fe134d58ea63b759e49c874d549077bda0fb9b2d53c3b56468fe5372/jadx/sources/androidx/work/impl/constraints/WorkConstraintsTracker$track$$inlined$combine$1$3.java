package androidx.work.impl.constraints;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.work.impl.constraints.ConstraintsState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker$track$$inlined$combine$1$3 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId = 0;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTracker$track$$inlined$combine$1$3(CardView.AnonymousClass1 anonymousClass1, Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.L$0 = anonymousClass1;
        this.L$1 = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                WorkConstraintsTracker$track$$inlined$combine$1$3 workConstraintsTracker$track$$inlined$combine$1$3 = new WorkConstraintsTracker$track$$inlined$combine$1$3(3, (Continuation) obj3);
                workConstraintsTracker$track$$inlined$combine$1$3.L$0 = (FlowCollector) obj;
                workConstraintsTracker$track$$inlined$combine$1$3.L$1 = (Object[]) obj2;
                return workConstraintsTracker$track$$inlined$combine$1$3.invokeSuspend(unit);
            default:
                return new WorkConstraintsTracker$track$$inlined$combine$1$3((CardView.AnonymousClass1) this.L$0, (Function2) this.L$1, (Continuation) obj3).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConstraintsState constraintsState;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ConstraintsState constraintsState2 = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                    int length = constraintsStateArr.length;
                    int i3 = 0;
                    while (true) {
                        constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                        if (i3 < length) {
                            ConstraintsState constraintsState3 = constraintsStateArr[i3];
                            if (Intrinsics.areEqual(constraintsState3, constraintsState)) {
                                i3++;
                            } else {
                                constraintsState2 = constraintsState3;
                            }
                        }
                    }
                    if (constraintsState2 != null) {
                        constraintsState = constraintsState2;
                    }
                    this.label = 1;
                    if (flowCollector.emit(constraintsState, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultDraggableState$dragScope$1 defaultDraggableState$dragScope$1 = (DefaultDraggableState$dragScope$1) ((CardView.AnonymousClass1) this.L$0).mCardBackground;
                    Function2 function2 = (Function2) this.L$1;
                    this.label = 1;
                    if (function2.invoke(defaultDraggableState$dragScope$1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }

    public /* synthetic */ WorkConstraintsTracker$track$$inlined$combine$1$3(int i, Continuation continuation) {
        super(i, continuation);
    }
}
