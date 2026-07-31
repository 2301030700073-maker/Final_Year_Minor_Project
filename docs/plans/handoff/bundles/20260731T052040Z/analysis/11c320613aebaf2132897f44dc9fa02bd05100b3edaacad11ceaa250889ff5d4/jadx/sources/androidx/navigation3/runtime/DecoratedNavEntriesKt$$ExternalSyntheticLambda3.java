package androidx.navigation3.runtime;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DecoratedNavEntriesKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ DecoratedNavEntriesKt$$ExternalSyntheticLambda3(Set set, Object obj, Set set2, MutableState mutableState) {
        this.$r8$classId = 0;
        this.f$0 = set;
        this.f$1 = obj;
        this.f$2 = set2;
        this.f$3 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        final Object obj3 = this.f$1;
        Object obj4 = this.f$2;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                final Set set = (Set) obj5;
                final Set set2 = (Set) obj4;
                final MutableState mutableState = (MutableState) obj2;
                set.add(obj3);
                break;
            case 1:
                Animatable animatable = (Animatable) obj5;
                AnimationState animationState = (AnimationState) obj4;
                Function1 function1 = (Function1) obj3;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                ArcSplineKt.updateState(animationScope, animatable.internalState);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = animationScope.value$delegate;
                Object access$clampToBounds = Animatable.access$clampToBounds(animatable, parcelableSnapshotMutableState.getValue());
                if (!Intrinsics.areEqual(access$clampToBounds, parcelableSnapshotMutableState.getValue())) {
                    animatable.internalState.value$delegate.setValue(access$clampToBounds);
                    animationState.value$delegate.setValue(access$clampToBounds);
                    if (function1 != null) {
                        function1.invoke(animatable);
                    }
                    animationScope.cancelAnimation();
                    ref$BooleanRef.element = true;
                    break;
                } else if (function1 != null) {
                    function1.invoke(animatable);
                    break;
                }
                break;
            case 2:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                DefaultFlingBehavior defaultFlingBehavior = (DefaultFlingBehavior) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float floatValue = ((Number) animationScope2.value$delegate.getValue()).floatValue() - ref$FloatRef.element;
                float scrollBy = ((ScrollScope) obj4).scrollBy(floatValue);
                ref$FloatRef.element = ((Number) animationScope2.value$delegate.getValue()).floatValue();
                ((Ref$FloatRef) obj3).element = ((Number) animationScope2.typeConverter.convertFromVector.invoke(animationScope2.velocityVector)).floatValue();
                if (Math.abs(floatValue - scrollBy) > 0.5f) {
                    animationScope2.cancelAnimation();
                }
                defaultFlingBehavior.getClass();
                break;
            default:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj5;
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj4;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                DecoratedNavEntriesKt$$ExternalSyntheticLambda1 decoratedNavEntriesKt$$ExternalSyntheticLambda1 = (DecoratedNavEntriesKt$$ExternalSyntheticLambda1) obj2;
                AnimationScope animationScope3 = (AnimationScope) obj;
                float floatValue2 = ((Number) animationScope3.value$delegate.getValue()).floatValue() - ref$FloatRef2.element;
                if (!ScrollableKt.access$isLowScrollingDelta(floatValue2)) {
                    if (!ScrollableKt.access$isLowScrollingDelta(floatValue2 - mouseWheelScrollingLogic.dispatchMouseWheelScroll(scrollingLogic$nestedScrollScope$1, floatValue2))) {
                        animationScope3.cancelAnimation();
                        break;
                    } else {
                        ref$FloatRef2.element += floatValue2;
                    }
                }
                if (((Boolean) decoratedNavEntriesKt$$ExternalSyntheticLambda1.invoke(Float.valueOf(ref$FloatRef2.element))).booleanValue()) {
                    animationScope3.cancelAnimation();
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ DecoratedNavEntriesKt$$ExternalSyntheticLambda3(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = obj3;
        this.f$3 = obj4;
    }
}
