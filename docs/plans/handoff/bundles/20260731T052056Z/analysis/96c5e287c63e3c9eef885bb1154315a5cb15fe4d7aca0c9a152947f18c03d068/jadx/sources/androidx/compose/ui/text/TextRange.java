package androidx.compose.ui.text;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextRange {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Zero = ParagraphKt.TextRange(0, 0);
    public final long packedValue;

    public /* synthetic */ TextRange(long j) {
        this.packedValue = j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m639equalsimpl(long j, Object obj) {
        return (obj instanceof TextRange) && j == ((TextRange) obj).packedValue;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m640equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getCollapsed-impl, reason: not valid java name */
    public static final boolean m641getCollapsedimpl(long j) {
        return ((int) (j >> 32)) == ((int) (j & 4294967295L));
    }

    /* renamed from: getLength-impl, reason: not valid java name */
    public static final int m642getLengthimpl(long j) {
        return m643getMaximpl(j) - m644getMinimpl(j);
    }

    /* renamed from: getMax-impl, reason: not valid java name */
    public static final int m643getMaximpl(long j) {
        return Math.max((int) (j >> 32), (int) (j & 4294967295L));
    }

    /* renamed from: getMin-impl, reason: not valid java name */
    public static final int m644getMinimpl(long j) {
        return Math.min((int) (j >> 32), (int) (j & 4294967295L));
    }

    /* renamed from: getReversed-impl, reason: not valid java name */
    public static final boolean m645getReversedimpl(long j) {
        return ((int) (j >> 32)) > ((int) (j & 4294967295L));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m646toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("TextRange(");
        sb.append((int) (j >> 32));
        sb.append(", ");
        return Animation.CC.m(sb, (int) (j & 4294967295L), ')');
    }

    public final boolean equals(Object obj) {
        return m639equalsimpl(this.packedValue, obj);
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m646toStringimpl(this.packedValue);
    }
}
