package androidx.navigation3.ui;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition$$ExternalSyntheticLambda0;
import androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.internal.UndispatchedContextCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavDisplayKt__NavDisplayKt$NavDisplay$16$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ SnapshotStateMap $sceneMap;
    final /* synthetic */ Transition $transition;
    final /* synthetic */ MutableObjectFloatMap $zIndices;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$16$1(Transition transition, SnapshotStateMap snapshotStateMap, MutableObjectFloatMap mutableObjectFloatMap, Continuation continuation) {
        super(2, continuation);
        this.$transition = transition;
        this.$sceneMap = snapshotStateMap;
        this.$zIndices = mutableObjectFloatMap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$16$1(this.$transition, this.$sceneMap, this.$zIndices, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$16$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        Unit unit = Unit.INSTANCE;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return unit;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        SafeFlow safeFlow = new SafeFlow(new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(null, new Transition$$ExternalSyntheticLambda0(this.$transition, 2), null));
        UndispatchedContextCollector undispatchedContextCollector = new UndispatchedContextCollector(2, this.$transition, this.$sceneMap, this.$zIndices);
        this.label = 1;
        Object collect = safeFlow.collect(new NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2(undispatchedContextCollector), this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (collect != coroutineSingletons) {
            collect = unit;
        }
        return collect == coroutineSingletons ? coroutineSingletons : unit;
    }
}
