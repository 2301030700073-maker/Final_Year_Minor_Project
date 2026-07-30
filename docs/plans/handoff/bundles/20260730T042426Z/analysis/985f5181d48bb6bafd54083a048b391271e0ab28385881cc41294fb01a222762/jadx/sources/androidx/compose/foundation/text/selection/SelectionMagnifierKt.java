package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: SelectionMagnifier.kt */
/* loaded from: classes.dex */
public abstract class SelectionMagnifierKt {
    private static final SpringSpec MagnifierSpringSpec;
    private static final long OffsetDisplacementThreshold;
    private static final AnimationVector2D UnspecifiedAnimationVector2D = new AnimationVector2D(Float.NaN, Float.NaN);
    private static final TwoWayConverter UnspecifiedSafeOffsetVectorConverter = VectorConvertersKt.TwoWayConverter(new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m550invokek4lQ0M(((Offset) obj).m1176unboximpl());
        }

        /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
        public final AnimationVector2D m550invokek4lQ0M(long j) {
            AnimationVector2D animationVector2D;
            if (!OffsetKt.m1181isSpecifiedk4lQ0M(j)) {
                animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                return animationVector2D;
            }
            return new AnimationVector2D(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
        }
    }, new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return Offset.m1158boximpl(m551invoketuRUvjQ((AnimationVector2D) obj));
        }

        /* renamed from: invoke-tuRUvjQ, reason: not valid java name */
        public final long m551invoketuRUvjQ(AnimationVector2D animationVector2D) {
            return OffsetKt.Offset(animationVector2D.getV1(), animationVector2D.getV2());
        }
    });

    static {
        long Offset = OffsetKt.Offset(0.01f, 0.01f);
        OffsetDisplacementThreshold = Offset;
        MagnifierSpringSpec = new SpringSpec(0.0f, 0.0f, Offset.m1158boximpl(Offset), 3, null);
    }

    public static final SpringSpec getMagnifierSpringSpec() {
        return MagnifierSpringSpec;
    }

    public static final Modifier animatedSelectionMagnifier(Modifier modifier, Function0 function0, Function1 function1) {
        return ComposedModifierKt.composed$default(modifier, null, new SelectionMagnifierKt$animatedSelectionMagnifier$1(function0, function1), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final State rememberAnimatedMagnifierPosition(Function0 function0, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1589795249, i, -1, "androidx.compose.foundation.text.selection.rememberAnimatedMagnifierPosition (SelectionMagnifier.kt:76)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt.derivedStateOf(function0);
            composer.updateRememberedValue(rememberedValue);
        }
        State state = (State) rememberedValue;
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Animatable(Offset.m1158boximpl(rememberAnimatedMagnifierPosition$lambda$1(state)), UnspecifiedSafeOffsetVectorConverter, Offset.m1158boximpl(OffsetDisplacementThreshold), null, 8, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        Animatable animatable = (Animatable) rememberedValue2;
        Unit unit = Unit.INSTANCE;
        boolean changedInstance = composer.changedInstance(animatable);
        Object rememberedValue3 = composer.rememberedValue();
        if (changedInstance || rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(state, animatable, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue3, composer, 6);
        State asState = animatable.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return asState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long rememberAnimatedMagnifierPosition$lambda$1(State state) {
        return ((Offset) state.getValue()).m1176unboximpl();
    }
}
