package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.material3.internal.AnchoredDraggableState;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SheetState {
    public final AnchoredDraggableState anchoredDraggableState;
    public final Function1 confirmValueChange;
    public AnimationSpec anchoredDraggableMotionSpec = SheetDefaultsKt.BottomSheetAnimationSpec;
    public FiniteAnimationSpec showMotionSpec = ArcSplineKt.snap$default();
    public FiniteAnimationSpec hideMotionSpec = ArcSplineKt.snap$default();

    public SheetState(Function0 function0, Function0 function02, SheetValue sheetValue, Function1 function1) {
        this.confirmValueChange = function1;
        this.anchoredDraggableState = new AnchoredDraggableState(sheetValue, new AppBarKt$$ExternalSyntheticLambda0(5, function0), function02, new ImageLoader$Builder$$ExternalSyntheticLambda1(4, this), function1);
    }

    public static Object animateTo$material3$default(SheetState sheetState, SheetValue sheetValue, FiniteAnimationSpec finiteAnimationSpec, SuspendLambda suspendLambda) {
        Object anchoredDrag = sheetState.anchoredDraggableState.anchoredDrag(sheetValue, MutatePriority.Default, new SheetState$animateTo$2(sheetState, sheetState.anchoredDraggableState.lastVelocity$delegate.getFloatValue(), finiteAnimationSpec, null), suspendLambda);
        return anchoredDrag == CoroutineSingletons.COROUTINE_SUSPENDED ? anchoredDrag : Unit.INSTANCE;
    }

    public final Object expand(SuspendLambda suspendLambda) {
        Object animateTo$material3$default;
        Function1 function1 = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.Expanded;
        return (((Boolean) function1.invoke(sheetValue)).booleanValue() && (animateTo$material3$default = animateTo$material3$default(this, sheetValue, this.showMotionSpec, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? animateTo$material3$default : Unit.INSTANCE;
    }

    public final Object hide(SuspendLambda suspendLambda) {
        Object animateTo$material3$default;
        Function1 function1 = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.Hidden;
        return (((Boolean) function1.invoke(sheetValue)).booleanValue() && (animateTo$material3$default = animateTo$material3$default(this, sheetValue, this.hideMotionSpec, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? animateTo$material3$default : Unit.INSTANCE;
    }

    public final boolean isVisible() {
        return this.anchoredDraggableState.currentValue$delegate.getValue() != SheetValue.Hidden;
    }

    public final Object partialExpand(SuspendLambda suspendLambda) {
        Object animateTo$material3$default;
        Function1 function1 = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.PartiallyExpanded;
        return (((Boolean) function1.invoke(sheetValue)).booleanValue() && (animateTo$material3$default = animateTo$material3$default(this, sheetValue, this.hideMotionSpec, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? animateTo$material3$default : Unit.INSTANCE;
    }

    public final Object show(SuspendLambda suspendLambda) {
        Object animateTo$material3$default;
        Map map = this.anchoredDraggableState.getAnchors().anchors;
        SheetValue sheetValue = SheetValue.PartiallyExpanded;
        if (!map.containsKey(sheetValue)) {
            sheetValue = SheetValue.Expanded;
        }
        return (((Boolean) this.confirmValueChange.invoke(sheetValue)).booleanValue() && (animateTo$material3$default = animateTo$material3$default(this, sheetValue, this.showMotionSpec, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? animateTo$material3$default : Unit.INSTANCE;
    }
}
