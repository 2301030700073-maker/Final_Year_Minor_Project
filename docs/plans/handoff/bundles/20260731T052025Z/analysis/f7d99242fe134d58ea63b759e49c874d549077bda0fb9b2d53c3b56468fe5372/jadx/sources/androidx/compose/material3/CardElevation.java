package androidx.compose.material3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.Dp;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CardElevation {
    public final float defaultElevation;
    public final float disabledElevation;
    public final float draggedElevation;
    public final float focusedElevation;
    public final float hoveredElevation;
    public final float pressedElevation;

    public CardElevation(float f, float f2, float f3, float f4, float f5, float f6) {
        this.defaultElevation = f;
        this.pressedElevation = f2;
        this.focusedElevation = f3;
        this.hoveredElevation = f4;
        this.draggedElevation = f5;
        this.disabledElevation = f6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CardElevation)) {
            return false;
        }
        CardElevation cardElevation = (CardElevation) obj;
        return Dp.m745equalsimpl0(this.defaultElevation, cardElevation.defaultElevation) && Dp.m745equalsimpl0(this.pressedElevation, cardElevation.pressedElevation) && Dp.m745equalsimpl0(this.focusedElevation, cardElevation.focusedElevation) && Dp.m745equalsimpl0(this.hoveredElevation, cardElevation.hoveredElevation) && Dp.m745equalsimpl0(this.disabledElevation, cardElevation.disabledElevation);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.disabledElevation) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.defaultElevation) * 31, this.pressedElevation, 31), this.focusedElevation, 31), this.hoveredElevation, 31);
    }

    public final State shadowElevation$material3(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, Composer composer, int i) {
        Animatable animatable;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(-1763481333);
        float f = this.defaultElevation;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (mutableInteractionSourceImpl == null) {
            gapComposer.startReplaceGroup(167751211);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(new Dp(f));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            gapComposer.end(false);
            gapComposer.end(false);
            return mutableState;
        }
        gapComposer.startReplaceGroup(167824247);
        gapComposer.end(false);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new SnapshotStateList();
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue2;
        boolean z2 = true;
        boolean z3 = (((i & 112) ^ 48) > 32 && gapComposer.changed(mutableInteractionSourceImpl)) || (i & 48) == 32;
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (z3 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = new CardElevation$animateElevation$1$1(mutableInteractionSourceImpl, snapshotStateList, null, 0);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl, (Function2) rememberedValue3);
        Interaction interaction = (Interaction) CollectionsKt.lastOrNull(snapshotStateList);
        if (!z) {
            f = this.disabledElevation;
        } else if (interaction instanceof PressInteraction.Press) {
            f = this.pressedElevation;
        } else if (interaction instanceof HoverInteraction$Enter) {
            f = this.hoveredElevation;
        } else if (interaction instanceof FocusInteraction$Focus) {
            f = this.focusedElevation;
        } else if (interaction instanceof DragInteraction$Start) {
            f = this.draggedElevation;
        }
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (rememberedValue4 == neverEqualPolicy) {
            rememberedValue4 = new Animatable(new Dp(f), ArcSplineKt.DpToVector, null, 12);
            gapComposer.updateRememberedValue(rememberedValue4);
        }
        Animatable animatable2 = (Animatable) rememberedValue4;
        Dp dp = new Dp(f);
        boolean changedInstance = gapComposer.changedInstance(animatable2) | gapComposer.changed(f) | ((((i & 14) ^ 6) > 4 && gapComposer.changed(z)) || (i & 6) == 4);
        if ((((i & 896) ^ 384) <= 256 || !gapComposer.changed(this)) && (i & 384) != 256) {
            z2 = false;
        }
        boolean changedInstance2 = changedInstance | z2 | gapComposer.changedInstance(interaction);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
            animatable = animatable2;
            CardElevation$animateElevation$2$1 cardElevation$animateElevation$2$1 = new CardElevation$animateElevation$2$1(animatable, f, z, this, interaction, null, 0);
            gapComposer.updateRememberedValue(cardElevation$animateElevation$2$1);
            rememberedValue5 = cardElevation$animateElevation$2$1;
        } else {
            animatable = animatable2;
        }
        Updater.LaunchedEffect(gapComposer, dp, (Function2) rememberedValue5);
        AnimationState animationState = animatable.internalState;
        gapComposer.end(false);
        return animationState;
    }
}
