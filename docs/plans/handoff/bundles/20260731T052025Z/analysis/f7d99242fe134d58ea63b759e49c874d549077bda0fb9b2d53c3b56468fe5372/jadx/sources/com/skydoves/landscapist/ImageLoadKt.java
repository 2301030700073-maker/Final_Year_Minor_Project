package com.skydoves.landscapist;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.skydoves.landscapist.ImageLoadState;
import com.skydoves.landscapist.coil3.ConstraintsSizeResolver;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImageLoadKt {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long ZeroConstraints;

    static {
        if (!(true & true)) {
            InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
        }
        ZeroConstraints = ConstraintsKt.createConstraints(0, 0, 0, 0);
    }

    public static final void ImageLoad(Object obj, Function1 function1, Modifier modifier, ImageOptions imageOptions, ConstraintsSizeResolver constraintsSizeResolver, Function4 function4, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        function1.getClass();
        imageOptions.getClass();
        function4.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-751886323);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer2.changed(obj) : gapComposer2.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(imageOptions) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(constraintsSizeResolver) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function4) ? 131072 : 65536;
        }
        int i3 = i2;
        boolean z = true;
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            Object loadingOptionsKey = imageOptions.getLoadingOptionsKey();
            if ((i3 & 14) != 4 && ((i3 & 8) == 0 || !gapComposer2.changed(obj))) {
                z = false;
            }
            boolean changed = gapComposer2.changed(loadingOptionsKey) | z;
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(ImageLoadState.None.INSTANCE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean changedInstance = gapComposer2.changedInstance(function1) | gapComposer2.changed(mutableState);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Preferences$getAccountsFlow$1(function1, mutableState, (Continuation) null, 17);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(obj, loadingOptionsKey, (Function2) rememberedValue2, gapComposer2);
            modifier.getClass();
            gapComposer = gapComposer2;
            OffsetKt.BoxWithConstraints(imageOptions.getContentDescription() != null ? SemanticsModifierKt.semantics(modifier, false, new AbstractMap$$ExternalSyntheticLambda0(22, imageOptions)) : modifier, null, true, Expect_jvmKt.rememberComposableLambda(-906212105, new ImageLoadKt$$ExternalSyntheticLambda0(obj, loadingOptionsKey, imageOptions, constraintsSizeResolver, i3, function4, mutableState), gapComposer2), gapComposer, 3456, 2);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(obj, function1, modifier, imageOptions, constraintsSizeResolver, function4, i, 10);
        }
    }
}
