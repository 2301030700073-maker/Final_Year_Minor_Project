package androidx.compose.animation.core;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransition.TransitionAnimationState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InfiniteTransition.kt */
/* loaded from: classes.dex */
public abstract class InfiniteTransitionKt {
    public static final InfiniteTransition rememberInfiniteTransition(String str, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            str = "InfiniteTransition";
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1013651573, i, -1, "androidx.compose.animation.core.rememberInfiniteTransition (InfiniteTransition.kt:44)");
        }
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new InfiniteTransition(str);
            composer.updateRememberedValue(rememberedValue);
        }
        InfiniteTransition infiniteTransition = (InfiniteTransition) rememberedValue;
        infiniteTransition.run$animation_core_release(composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return infiniteTransition;
    }

    public static final State animateValue(final InfiniteTransition infiniteTransition, final Object obj, final Object obj2, TwoWayConverter twoWayConverter, final InfiniteRepeatableSpec infiniteRepeatableSpec, String str, Composer composer, int i, int i2) {
        if ((i2 & 16) != 0) {
            str = "ValueAnimation";
        }
        String str2 = str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1062847727, i, -1, "androidx.compose.animation.core.animateValue (InfiniteTransition.kt:260)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = infiniteTransition.new TransitionAnimationState(obj, obj2, twoWayConverter, infiniteRepeatableSpec, str2);
            composer.updateRememberedValue(rememberedValue);
        }
        final InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) rememberedValue;
        boolean z = true;
        boolean z2 = ((((i & 112) ^ 48) > 32 && composer.changedInstance(obj)) || (i & 48) == 32) | ((((i & 896) ^ 384) > 256 && composer.changedInstance(obj2)) || (i & 384) == 256);
        if ((((57344 & i) ^ 24576) <= 16384 || !composer.changedInstance(infiniteRepeatableSpec)) && (i & 24576) != 16384) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object rememberedValue2 = composer.rememberedValue();
        if (z3 || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Function0() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m57invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m57invoke() {
                    if (Intrinsics.areEqual(obj, transitionAnimationState.getInitialValue$animation_core_release()) && Intrinsics.areEqual(obj2, transitionAnimationState.getTargetValue$animation_core_release())) {
                        return;
                    }
                    transitionAnimationState.updateValues$animation_core_release(obj, obj2, infiniteRepeatableSpec);
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.SideEffect((Function0) rememberedValue2, composer, 0);
        boolean changedInstance = composer.changedInstance(infiniteTransition);
        Object rememberedValue3 = composer.rememberedValue();
        if (changedInstance || rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new Function1() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
                    InfiniteTransition.this.addAnimation$animation_core_release(transitionAnimationState);
                    final InfiniteTransition infiniteTransition2 = InfiniteTransition.this;
                    final InfiniteTransition.TransitionAnimationState transitionAnimationState2 = transitionAnimationState;
                    return new DisposableEffectResult() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$2$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            InfiniteTransition.this.removeAnimation$animation_core_release(transitionAnimationState2);
                        }
                    };
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        }
        EffectsKt.DisposableEffect(transitionAnimationState, (Function1) rememberedValue3, composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return transitionAnimationState;
    }

    public static final State animateFloat(InfiniteTransition infiniteTransition, float f, float f2, InfiniteRepeatableSpec infiniteRepeatableSpec, String str, Composer composer, int i, int i2) {
        String str2 = (i2 & 8) != 0 ? "FloatAnimation" : str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-644770905, i, -1, "androidx.compose.animation.core.animateFloat (InfiniteTransition.kt:316)");
        }
        int i3 = i << 3;
        State animateValue = animateValue(infiniteTransition, Float.valueOf(f), Float.valueOf(f2), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), infiniteRepeatableSpec, str2, composer, (i & 1022) | (57344 & i3) | (i3 & 458752), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return animateValue;
    }
}
