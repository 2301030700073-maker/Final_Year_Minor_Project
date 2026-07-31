package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.unit.TextUnit;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MultiParagraphLayoutCacheKt {
    public static final long DefaultFontSize = ContextsKt.getSp(14);

    /* renamed from: times-NB67dxo, reason: not valid java name */
    public static final long m217timesNB67dxo(long j, long j2) {
        if (!TextUnit.m726isEmimpl(j2)) {
            throw new IllegalArgumentException("The multiplier must be in em, but was " + ((Object) TextUnit.m727toStringimpl(j2)) + '.');
        }
        if (TextUnit.m726isEmimpl(j)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(TextUnit.m727toStringimpl(j2), "). Please declare the style.fontSize with Sp units instead.", "Cannot convert Em to Px when style.fontSize is Em (");
            return 0L;
        }
        long j3 = j & 1095216660480L;
        if (j3 != 0) {
            float m725getValueimpl = TextUnit.m725getValueimpl(j2);
            ContextsKt.m788checkArithmeticR2X_6o(j);
            return ContextsKt.pack(TextUnit.m725getValueimpl(j) * m725getValueimpl, j3);
        }
        float m725getValueimpl2 = TextUnit.m725getValueimpl(j2);
        long j4 = DefaultFontSize;
        ContextsKt.m788checkArithmeticR2X_6o(j4);
        return ContextsKt.pack(TextUnit.m725getValueimpl(j4) * m725getValueimpl2, j4 & 1095216660480L);
    }
}
