package com.skydoves.landscapist.coil3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import com.skydoves.landscapist.coil3.CoilImageState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RememberCoilImageStateKt {
    public static final MutableState rememberCoilImageState(CoilImageState coilImageState, Object obj, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            coilImageState = CoilImageState.None.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            obj = null;
        }
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = Updater.mutableStateOf$default(coilImageState);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (MutableState) rememberedValue;
    }
}
