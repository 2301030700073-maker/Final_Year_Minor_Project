package androidx.activity.compose;

import androidx.compose.ui.geometry.Offset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadPreferencesSideEffect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposePredictiveBackHandler$launchNewGesture$1$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ Object $completed;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ComposePredictiveBackHandler$launchNewGesture$1$1(Object obj, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.$completed = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.$completed;
        switch (i) {
            case 0:
                new ComposePredictiveBackHandler$launchNewGesture$1$1((Ref$BooleanRef) obj4, (Continuation) obj3, 0).invokeSuspend(unit);
                break;
            case 1:
                long j = ((Offset) obj2).packedValue;
                new ComposePredictiveBackHandler$launchNewGesture$1$1((SwipeableRowState) obj4, (Continuation) obj3, 1).invokeSuspend(unit);
                break;
            case 2:
                new ComposePredictiveBackHandler$launchNewGesture$1$1((LoadPreferencesSideEffect) obj4, (Continuation) obj3, 2).invokeSuspend(unit);
                break;
            case 3:
                new ComposePredictiveBackHandler$launchNewGesture$1$1((LoadPreferencesSideEffect) obj4, (Continuation) obj3, 3).invokeSuspend(unit);
                break;
            default:
                new ComposePredictiveBackHandler$launchNewGesture$1$1((LoadPreferencesSideEffect) obj4, (Continuation) obj3, 4).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$completed;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                ((Ref$BooleanRef) obj2).element = true;
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                SwipeableRowState swipeableRowState = (SwipeableRowState) obj2;
                if (swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem() == SwipeState.Settled) {
                    swipeableRowState.swipeState$delegate.setValue(SwipeState.Swiping);
                    break;
                }
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                ((LoadPreferencesSideEffect) obj2).runningFlow = null;
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                ((LoadPreferencesSideEffect) obj2).runningFlow = null;
                break;
            default:
                ResultKt.throwOnFailure(obj);
                ((LoadPreferencesSideEffect) obj2).runningFlow = null;
                break;
        }
        return unit;
    }
}
