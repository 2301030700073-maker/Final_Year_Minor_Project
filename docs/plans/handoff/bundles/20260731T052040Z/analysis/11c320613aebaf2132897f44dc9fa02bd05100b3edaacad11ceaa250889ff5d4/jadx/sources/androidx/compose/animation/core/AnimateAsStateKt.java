package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Dp;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProduceKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AnimateAsStateKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        LinkedHashMap linkedHashMap = VisibilityThresholdsKt.VisibilityThresholdMap;
        ArcSplineKt.spring$default(0.0f, 0.0f, new Dp(0.4f), 3);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
    }

    public static final State animateValueAsState(Object obj, TwoWayConverterImpl twoWayConverterImpl, AnimationSpec animationSpec, String str, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj2 = Composer.Companion.Empty;
        if (rememberedValue == obj2) {
            rememberedValue = Updater.mutableStateOf$default(null);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == obj2) {
            rememberedValue2 = new Animatable(obj, twoWayConverterImpl, null);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Animatable animatable = (Animatable) rememberedValue2;
        MutableState rememberUpdatedState = Updater.rememberUpdatedState(null, gapComposer);
        MutableState rememberUpdatedState2 = Updater.rememberUpdatedState(animationSpec, gapComposer);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (rememberedValue3 == obj2) {
            rememberedValue3 = ProduceKt.Channel$default(-1, 6, null);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Channel channel = (Channel) rememberedValue3;
        boolean changedInstance = gapComposer.changedInstance(channel) | gapComposer.changedInstance(obj);
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue4 == obj2) {
            rememberedValue4 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(channel, obj, 1);
            gapComposer.updateRememberedValue(rememberedValue4);
        }
        Updater.SideEffect((Function0) rememberedValue4, gapComposer);
        boolean changedInstance2 = gapComposer.changedInstance(channel) | gapComposer.changedInstance(animatable) | gapComposer.changed(rememberUpdatedState2) | gapComposer.changed(rememberUpdatedState);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue5 == obj2) {
            Object animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(channel, animatable, rememberUpdatedState2, rememberUpdatedState, null);
            gapComposer.updateRememberedValue(animateAsStateKt$animateValueAsState$3$1);
            rememberedValue5 = animateAsStateKt$animateValueAsState$3$1;
        }
        Updater.LaunchedEffect(gapComposer, channel, (Function2) rememberedValue5);
        State state = (State) mutableState.getValue();
        return state == null ? animatable.internalState : state;
    }
}
