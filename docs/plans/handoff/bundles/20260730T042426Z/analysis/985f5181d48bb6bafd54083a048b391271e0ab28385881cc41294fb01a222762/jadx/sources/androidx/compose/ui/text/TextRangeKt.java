package androidx.compose.ui.text;

import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TextRange.kt */
/* loaded from: classes.dex */
public abstract class TextRangeKt {
    /* renamed from: substring-FDrldGo, reason: not valid java name */
    public static final String m2132substringFDrldGo(CharSequence charSequence, long j) {
        return charSequence.subSequence(TextRange.m2123getMinimpl(j), TextRange.m2122getMaximpl(j)).toString();
    }

    public static final long TextRange(int i, int i2) {
        return TextRange.m2114constructorimpl(packWithCheck(i, i2));
    }

    public static final long TextRange(int i) {
        return TextRange(i, i);
    }

    /* renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m2131coerceIn8ffj60Q(long j, int i, int i2) {
        int coerceIn = RangesKt.coerceIn(TextRange.m2125getStartimpl(j), i, i2);
        int coerceIn2 = RangesKt.coerceIn(TextRange.m2120getEndimpl(j), i, i2);
        return (coerceIn == TextRange.m2125getStartimpl(j) && coerceIn2 == TextRange.m2120getEndimpl(j)) ? j : TextRange(coerceIn, coerceIn2);
    }

    private static final long packWithCheck(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException(("start cannot be negative. [start: " + i + ", end: " + i2 + ']').toString());
        }
        if (i2 >= 0) {
            return (i2 & BodyPartID.bodyIdMax) | (i << 32);
        }
        throw new IllegalArgumentException(("end cannot be negative. [start: " + i + ", end: " + i2 + ']').toString());
    }
}
