package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RowKt {
    public static final RowMeasurePolicy DefaultRowMeasurePolicy = new RowMeasurePolicy(SpacerKt.f1Start, Alignment.Companion.Top);

    public static final RowMeasurePolicy rowMeasurePolicy(Arrangement$Horizontal arrangement$Horizontal, GapComposer gapComposer) {
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        if (arrangement$Horizontal.equals(SpacerKt.f1Start) && vertical.equals(Alignment.Companion.Top)) {
            gapComposer.startReplaceGroup(-1073830487);
            gapComposer.end(false);
            return DefaultRowMeasurePolicy;
        }
        gapComposer.startReplaceGroup(-1073779616);
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new RowMeasurePolicy(arrangement$Horizontal, vertical);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) rememberedValue;
        gapComposer.end(false);
        return rowMeasurePolicy;
    }
}
