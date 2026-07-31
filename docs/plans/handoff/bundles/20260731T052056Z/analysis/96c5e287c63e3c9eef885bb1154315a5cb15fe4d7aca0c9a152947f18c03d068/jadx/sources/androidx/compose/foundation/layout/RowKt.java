package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RowKt {
    public static final RowMeasurePolicy DefaultRowMeasurePolicy = new RowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top);

    public static final RowMeasurePolicy rowMeasurePolicy(Arrangement$Horizontal arrangement$Horizontal, BiasAlignment.Vertical vertical, GapComposer gapComposer, int i) {
        if (arrangement$Horizontal.equals(OffsetKt.f5Start) && Intrinsics.areEqual(vertical, Alignment.Companion.Top)) {
            gapComposer.startReplaceGroup(-1073830487);
            gapComposer.end(false);
            return DefaultRowMeasurePolicy;
        }
        gapComposer.startReplaceGroup(-1073779616);
        boolean z = true;
        boolean z2 = (((i & 14) ^ 6) > 4 && gapComposer.changed(arrangement$Horizontal)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !gapComposer.changed(vertical)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object rememberedValue = gapComposer.rememberedValue();
        if (z3 || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new RowMeasurePolicy(arrangement$Horizontal, vertical);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) rememberedValue;
        gapComposer.end(false);
        return rowMeasurePolicy;
    }
}
