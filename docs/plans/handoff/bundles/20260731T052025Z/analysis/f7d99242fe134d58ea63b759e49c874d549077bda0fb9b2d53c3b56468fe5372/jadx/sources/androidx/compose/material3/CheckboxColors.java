package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.state.ToggleableState;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CheckboxColors {
    public final long checkedBorderColor;
    public final long checkedBoxColor;
    public final long checkedCheckmarkColor;
    public final long disabledBorderColor;
    public final long disabledCheckedBoxColor;
    public final long disabledIndeterminateBorderColor;
    public final long disabledIndeterminateBoxColor;
    public final long disabledUncheckedBorderColor;
    public final long disabledUncheckedBoxColor;
    public final long uncheckedBorderColor;
    public final long uncheckedBoxColor;
    public final long uncheckedCheckmarkColor;

    public CheckboxColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12) {
        this.checkedCheckmarkColor = j;
        this.uncheckedCheckmarkColor = j2;
        this.checkedBoxColor = j3;
        this.uncheckedBoxColor = j4;
        this.disabledCheckedBoxColor = j5;
        this.disabledUncheckedBoxColor = j6;
        this.disabledIndeterminateBoxColor = j7;
        this.checkedBorderColor = j8;
        this.uncheckedBorderColor = j9;
        this.disabledBorderColor = j10;
        this.disabledUncheckedBorderColor = j11;
        this.disabledIndeterminateBorderColor = j12;
    }

    public static SpringSpec colorAnimationSpecForState(ToggleableState toggleableState, Composer composer) {
        if (toggleableState == ToggleableState.Off) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(1539262271);
            SpringSpec value = CardKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer);
            gapComposer.end(false);
            return value;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startReplaceGroup(1539355581);
        SpringSpec value2 = CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer2);
        gapComposer2.end(false);
        return value2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CheckboxColors)) {
            return false;
        }
        CheckboxColors checkboxColors = (CheckboxColors) obj;
        return Color.m482equalsimpl0(this.checkedCheckmarkColor, checkboxColors.checkedCheckmarkColor) && Color.m482equalsimpl0(this.uncheckedCheckmarkColor, checkboxColors.uncheckedCheckmarkColor) && Color.m482equalsimpl0(this.checkedBoxColor, checkboxColors.checkedBoxColor) && Color.m482equalsimpl0(this.uncheckedBoxColor, checkboxColors.uncheckedBoxColor) && Color.m482equalsimpl0(this.disabledCheckedBoxColor, checkboxColors.disabledCheckedBoxColor) && Color.m482equalsimpl0(this.disabledUncheckedBoxColor, checkboxColors.disabledUncheckedBoxColor) && Color.m482equalsimpl0(this.disabledIndeterminateBoxColor, checkboxColors.disabledIndeterminateBoxColor) && Color.m482equalsimpl0(this.checkedBorderColor, checkboxColors.checkedBorderColor) && Color.m482equalsimpl0(this.uncheckedBorderColor, checkboxColors.uncheckedBorderColor) && Color.m482equalsimpl0(this.disabledBorderColor, checkboxColors.disabledBorderColor) && Color.m482equalsimpl0(this.disabledUncheckedBorderColor, checkboxColors.disabledUncheckedBorderColor) && Color.m482equalsimpl0(this.disabledIndeterminateBorderColor, checkboxColors.disabledIndeterminateBorderColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledIndeterminateBorderColor) + Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.checkedCheckmarkColor) * 31, 31, this.uncheckedCheckmarkColor), 31, this.checkedBoxColor), 31, this.uncheckedBoxColor), 31, this.disabledCheckedBoxColor), 31, this.disabledUncheckedBoxColor), 31, this.disabledIndeterminateBoxColor), 31, this.checkedBorderColor), 31, this.uncheckedBorderColor), 31, this.disabledBorderColor), 31, this.disabledUncheckedBorderColor);
    }
}
