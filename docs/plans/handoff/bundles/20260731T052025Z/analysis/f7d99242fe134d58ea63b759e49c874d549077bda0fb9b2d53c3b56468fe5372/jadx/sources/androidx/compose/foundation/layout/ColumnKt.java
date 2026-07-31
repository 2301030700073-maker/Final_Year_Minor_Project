package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ColumnKt {
    public static final ColumnMeasurePolicy DefaultColumnMeasurePolicy = new ColumnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start);

    public static final ColumnMeasurePolicy columnMeasurePolicy(Arrangement$Vertical arrangement$Vertical, BiasAlignment.Horizontal horizontal, Composer composer, int i) {
        if (arrangement$Vertical.equals(OffsetKt.Top) && horizontal.equals(Alignment.Companion.Start)) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(-1446604504);
            gapComposer.end(false);
            return DefaultColumnMeasurePolicy;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startReplaceGroup(-1446550657);
        boolean z = true;
        boolean z2 = (((i & 14) ^ 6) > 4 && gapComposer2.changed(arrangement$Vertical)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !gapComposer2.changed(horizontal)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object rememberedValue = gapComposer2.rememberedValue();
        if (z3 || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new ColumnMeasurePolicy(arrangement$Vertical, horizontal);
            gapComposer2.updateRememberedValue(rememberedValue);
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) rememberedValue;
        gapComposer2.end(false);
        return columnMeasurePolicy;
    }
}
