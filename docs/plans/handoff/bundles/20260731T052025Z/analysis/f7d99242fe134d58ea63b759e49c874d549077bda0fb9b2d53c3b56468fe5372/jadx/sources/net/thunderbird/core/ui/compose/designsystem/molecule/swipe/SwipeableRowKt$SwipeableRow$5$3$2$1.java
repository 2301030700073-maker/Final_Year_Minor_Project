package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeableRowKt$SwipeableRow$5$3$2$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ HapticFeedback $hapticFeedback;
    public final /* synthetic */ Function1 $onSwipeEnd;
    public final /* synthetic */ SwipeableRowState $state;
    public /* synthetic */ float F$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableRowKt$SwipeableRow$5$3$2$1(SwipeableRowState swipeableRowState, HapticFeedback hapticFeedback, Function1 function1, Continuation continuation) {
        super(3, continuation);
        this.$state = swipeableRowState;
        this.$hapticFeedback = hapticFeedback;
        this.$onSwipeEnd = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        float floatValue = ((Number) obj2).floatValue();
        HapticFeedback hapticFeedback = this.$hapticFeedback;
        Function1 function1 = this.$onSwipeEnd;
        SwipeableRowKt$SwipeableRow$5$3$2$1 swipeableRowKt$SwipeableRow$5$3$2$1 = new SwipeableRowKt$SwipeableRow$5$3$2$1(this.$state, hapticFeedback, function1, (Continuation) obj3);
        swipeableRowKt$SwipeableRow$5$3$2$1.F$0 = floatValue;
        Unit unit = Unit.INSTANCE;
        swipeableRowKt$SwipeableRow$5$3$2$1.invokeSuspend(unit);
        return unit;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$SwipeableRow$5$3$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
