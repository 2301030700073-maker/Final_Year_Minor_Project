package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ColumnKt {
    public static final ColumnMeasurePolicy DefaultColumnMeasurePolicy = new ColumnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start);

    public static final ColumnMeasurePolicy columnMeasurePolicy(Arrangement$Vertical arrangement$Vertical, BiasAlignment.Horizontal horizontal, GapComposer gapComposer, int i) {
        if (arrangement$Vertical.equals(OffsetKt.Top) && horizontal.equals(Alignment.Companion.Start)) {
            gapComposer.startReplaceGroup(-1446604504);
            gapComposer.end(false);
            return DefaultColumnMeasurePolicy;
        }
        gapComposer.startReplaceGroup(-1446550657);
        boolean z = true;
        boolean z2 = (((i & 14) ^ 6) > 4 && gapComposer.changed(arrangement$Vertical)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !gapComposer.changed(horizontal)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object rememberedValue = gapComposer.rememberedValue();
        if (z3 || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new ColumnMeasurePolicy(arrangement$Vertical, horizontal);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) rememberedValue;
        gapComposer.end(false);
        return columnMeasurePolicy;
    }
}
