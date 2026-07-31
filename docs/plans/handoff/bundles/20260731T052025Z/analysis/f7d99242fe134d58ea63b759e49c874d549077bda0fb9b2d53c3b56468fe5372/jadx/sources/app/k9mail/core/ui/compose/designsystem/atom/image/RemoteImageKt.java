package app.k9mail.core.ui.compose.designsystem.atom.image;

import androidx.compose.foundation.lazy.LazyListIntervalContent$$ExternalSyntheticLambda2;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RemoteImageKt {
    public static final void RemoteImage(String str, Modifier modifier, Function3 function3, Alignment alignment, ContentScale contentScale, Painter painter, Composer composer, int i, int i2) {
        int i3;
        GapComposer gapComposer;
        Alignment alignment2;
        ContentScale contentScale2;
        Painter painter2;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1893162506);
        if ((i & 6) == 0) {
            i3 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer2.changedInstance(function3) ? 256 : 128;
        }
        int i4 = i3 | 3072;
        if ((i2 & 16) != 0) {
            i4 = i3 | 27648;
        } else if ((i & 24576) == 0) {
            i4 |= gapComposer2.changed((Object) null) ? 16384 : 8192;
        }
        int i5 = 196608 | i4;
        int i6 = i2 & 64;
        if (i6 != 0) {
            i5 = 1769472 | i4;
        } else if ((1572864 & i) == 0) {
            i5 |= (2097152 & i) == 0 ? gapComposer2.changed(painter) : gapComposer2.changedInstance(painter) ? 1048576 : 524288;
        }
        if (gapComposer2.shouldExecute(i5 & 1, (599187 & i5) != 599186)) {
            BiasAlignment biasAlignment = Alignment.Companion.Center;
            Painter painter3 = i6 == 0 ? painter : null;
            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1 = ContentScale.Companion.Crop;
            ImageOptions imageOptions = new ImageOptions(biasAlignment, null, contentScale$Companion$Fit$1, null, 0.0f, 0L, null, null, 248, null);
            boolean z = (i5 & 14) == 4;
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new PathPart$$ExternalSyntheticLambda0(str, 3);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Painter painter4 = painter3;
            gapComposer = gapComposer2;
            CoilImageKt.CoilImage((Function0) rememberedValue, modifier, null, null, null, imageOptions, null, painter4, Expect_jvmKt.rememberComposableLambda(-427286656, new LazyListIntervalContent$$ExternalSyntheticLambda2(function3, 1), gapComposer2), null, Expect_jvmKt.rememberComposableLambda(-1764988311, new LazyListIntervalContent$$ExternalSyntheticLambda2(function3, 2), gapComposer2), gapComposer, (i5 & 112) | 117440512 | ((i5 << 3) & 29360128), 6, 604);
            alignment2 = biasAlignment;
            painter2 = painter4;
            contentScale2 = contentScale$Companion$Fit$1;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            alignment2 = alignment;
            contentScale2 = contentScale;
            painter2 = painter;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda4(str, modifier, function3, alignment2, contentScale2, painter2, i, i2);
        }
    }
}
