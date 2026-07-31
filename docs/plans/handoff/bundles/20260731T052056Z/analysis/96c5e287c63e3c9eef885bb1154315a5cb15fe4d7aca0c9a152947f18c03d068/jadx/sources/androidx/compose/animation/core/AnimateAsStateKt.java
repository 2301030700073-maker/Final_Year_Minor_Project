package androidx.compose.animation.core;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import org.wikipedia.util.ShareUtil$shareImage$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnimateAsStateKt {
    public static final SpringSpec defaultAnimation = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);

    static {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, new Dp(0.4f), 3);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
    }

    /* renamed from: animateDpAsState-AjpBEmI, reason: not valid java name */
    public static final State m19animateDpAsStateAjpBEmI(float f, FiniteAnimationSpec finiteAnimationSpec, GapComposer gapComposer) {
        return animateValueAsState(new Dp(f), ArcSplineKt.DpToVector, finiteAnimationSpec, null, "DpAnimation", gapComposer, 0, 8);
    }

    public static final State animateFloatAsState(float f, SpringSpec springSpec, GapComposer gapComposer, int i, int i2) {
        int i3 = i2 & 2;
        SpringSpec springSpec2 = defaultAnimation;
        if (i3 != 0) {
            springSpec = springSpec2;
        }
        String str = (i2 & 8) != 0 ? "FloatAnimation" : "diceRotation";
        if (springSpec == springSpec2) {
            gapComposer.startReplaceGroup(1144115775);
            boolean changed = gapComposer.changed(0.01f);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, Float.valueOf(0.01f), 3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            springSpec = (SpringSpec) rememberedValue;
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(1144225701);
            gapComposer.end(false);
        }
        return animateValueAsState(Float.valueOf(f), ArcSplineKt.FloatToVector, springSpec, null, str, gapComposer, (i << 3) & 57344, 0);
    }

    public static final State animateValueAsState(Object obj, TwoWayConverterImpl twoWayConverterImpl, AnimationSpec animationSpec, Float f, String str, GapComposer gapComposer, int i, int i2) {
        if ((i2 & 8) != 0) {
            f = null;
        }
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj2 = Composer$Companion.Empty;
        if (rememberedValue == obj2) {
            rememberedValue = Updater.mutableStateOf$default(null);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == obj2) {
            rememberedValue2 = new Animatable(obj, twoWayConverterImpl, f);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Animatable animatable = (Animatable) rememberedValue2;
        Object rememberUpdatedState = Updater.rememberUpdatedState(null, gapComposer);
        if (f != null && (animationSpec instanceof SpringSpec)) {
            SpringSpec springSpec = (SpringSpec) animationSpec;
            if (!Intrinsics.areEqual(springSpec.visibilityThreshold, f)) {
                animationSpec = new SpringSpec(springSpec.dampingRatio, springSpec.stiffness, f);
            }
        }
        Object rememberUpdatedState2 = Updater.rememberUpdatedState(animationSpec, gapComposer);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (rememberedValue3 == obj2) {
            rememberedValue3 = DpKt.Channel$default(-1, 6, null);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Object obj3 = (Channel) rememberedValue3;
        boolean changedInstance = gapComposer.changedInstance(obj3) | gapComposer.changedInstance(obj);
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue4 == obj2) {
            rememberedValue4 = new Recomposer$$ExternalSyntheticLambda6(3, obj3, obj);
            gapComposer.updateRememberedValue(rememberedValue4);
        }
        Updater.SideEffect((Function0) rememberedValue4, gapComposer);
        boolean changedInstance2 = gapComposer.changedInstance(obj3) | gapComposer.changedInstance(animatable) | gapComposer.changed(rememberUpdatedState2) | gapComposer.changed(rememberUpdatedState);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue5 == obj2) {
            Object shareUtil$shareImage$2 = new ShareUtil$shareImage$2(obj3, animatable, rememberUpdatedState2, rememberUpdatedState, (Continuation) null, 1);
            gapComposer.updateRememberedValue(shareUtil$shareImage$2);
            rememberedValue5 = shareUtil$shareImage$2;
        }
        Updater.LaunchedEffect(gapComposer, obj3, (Function2) rememberedValue5);
        State state = (State) mutableState.getValue();
        return state == null ? animatable.internalState : state;
    }
}
