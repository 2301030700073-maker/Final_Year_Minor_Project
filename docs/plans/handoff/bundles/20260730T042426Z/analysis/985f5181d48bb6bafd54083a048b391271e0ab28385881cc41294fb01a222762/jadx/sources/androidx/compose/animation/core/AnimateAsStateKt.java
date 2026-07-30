package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: AnimateAsState.kt */
/* loaded from: classes.dex */
public abstract class AnimateAsStateKt {
    private static final SpringSpec defaultAnimation = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
    private static final SpringSpec dpDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Dp.m2422boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Dp.Companion)), 3, null);
    private static final SpringSpec sizeDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Size.m1198boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Size.Companion)), 3, null);
    private static final SpringSpec offsetDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Offset.m1158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Offset.Companion)), 3, null);
    private static final SpringSpec rectDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 3, null);
    private static final SpringSpec intDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Integer.valueOf(VisibilityThresholdsKt.getVisibilityThreshold(IntCompanionObject.INSTANCE)), 3, null);
    private static final SpringSpec intOffsetDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m2459boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
    private static final SpringSpec intSizeDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, IntSize.m2479boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 3, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 animateValueAsState$lambda$4(State state) {
        return (Function1) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec animateValueAsState$lambda$6(State state) {
        return (AnimationSpec) state.getValue();
    }

    /* renamed from: animateDpAsState-AjpBEmI, reason: not valid java name */
    public static final State m47animateDpAsStateAjpBEmI(float f, AnimationSpec animationSpec, String str, Function1 function1, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            animationSpec = dpDefaultSpring;
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i2 & 4) != 0) {
            str = "DpAnimation";
        }
        String str2 = str;
        if ((i2 & 8) != 0) {
            function1 = null;
        }
        Function1 function12 = function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1407150062, i, -1, "androidx.compose.animation.core.animateDpAsState (AnimateAsState.kt:113)");
        }
        int i3 = i << 6;
        State animateValueAsState = animateValueAsState(Dp.m2422boximpl(f), VectorConvertersKt.getVectorConverter(Dp.Companion), animationSpec2, null, str2, function12, composer, (i & 14) | ((i << 3) & 896) | (57344 & i3) | (i3 & 458752), 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return animateValueAsState;
    }

    public static final State animateValueAsState(final Object obj, TwoWayConverter twoWayConverter, AnimationSpec animationSpec, Object obj2, String str, Function1 function1, Composer composer, int i, int i2) {
        AnimationSpec animationSpec2;
        if ((i2 & 4) != 0) {
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                composer.updateRememberedValue(rememberedValue);
            }
            animationSpec2 = (SpringSpec) rememberedValue;
        } else {
            animationSpec2 = animationSpec;
        }
        Object obj3 = (i2 & 8) != 0 ? null : obj2;
        String str2 = (i2 & 16) != 0 ? "ValueAnimation" : str;
        Function1 function12 = (i2 & 32) != 0 ? null : function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1994373980, i, -1, "androidx.compose.animation.core.animateValueAsState (AnimateAsState.kt:397)");
        }
        Object rememberedValue2 = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        MutableState mutableState = (MutableState) rememberedValue2;
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new Animatable(obj, twoWayConverter, obj3, str2);
            composer.updateRememberedValue(rememberedValue3);
        }
        Animatable animatable = (Animatable) rememberedValue3;
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function12, composer, (i >> 15) & 14);
        if (obj3 != null && (animationSpec2 instanceof SpringSpec)) {
            SpringSpec springSpec = (SpringSpec) animationSpec2;
            if (!Intrinsics.areEqual(springSpec.getVisibilityThreshold(), obj3)) {
                animationSpec2 = AnimationSpecKt.spring(springSpec.getDampingRatio(), springSpec.getStiffness(), obj3);
            }
        }
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(animationSpec2, composer, 0);
        Object rememberedValue4 = composer.rememberedValue();
        if (rememberedValue4 == companion.getEmpty()) {
            rememberedValue4 = ChannelKt.Channel$default(-1, null, null, 6, null);
            composer.updateRememberedValue(rememberedValue4);
        }
        final Channel channel = (Channel) rememberedValue4;
        boolean changedInstance = ((((i & 14) ^ 6) > 4 && composer.changedInstance(obj)) || (i & 6) == 4) | composer.changedInstance(channel);
        Object rememberedValue5 = composer.rememberedValue();
        if (changedInstance || rememberedValue5 == companion.getEmpty()) {
            rememberedValue5 = new Function0() { // from class: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m48invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m48invoke() {
                    Channel.this.mo2833trySendJP2dKIU(obj);
                }
            };
            composer.updateRememberedValue(rememberedValue5);
        }
        EffectsKt.SideEffect((Function0) rememberedValue5, composer, 0);
        boolean changedInstance2 = composer.changedInstance(channel) | composer.changedInstance(animatable) | composer.changed(rememberUpdatedState2) | composer.changed(rememberUpdatedState);
        Object rememberedValue6 = composer.rememberedValue();
        if (changedInstance2 || rememberedValue6 == companion.getEmpty()) {
            rememberedValue6 = new AnimateAsStateKt$animateValueAsState$3$1(channel, animatable, rememberUpdatedState2, rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue6);
        }
        EffectsKt.LaunchedEffect(channel, (Function2) rememberedValue6, composer, 0);
        State state = (State) mutableState.getValue();
        if (state == null) {
            state = animatable.asState();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return state;
    }
}
