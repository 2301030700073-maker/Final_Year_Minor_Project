package androidx.compose.ui.text;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TextRange.kt */
/* loaded from: classes.dex */
public final class TextRange {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = TextRangeKt.TextRange(0);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextRange m2113boximpl(long j) {
        return new TextRange(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2114constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2117equalsimpl(long j, Object obj) {
        return (obj instanceof TextRange) && j == ((TextRange) obj).m2129unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2118equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getEnd-impl, reason: not valid java name */
    public static final int m2120getEndimpl(long j) {
        return (int) (j & BodyPartID.bodyIdMax);
    }

    /* renamed from: getStart-impl, reason: not valid java name */
    public static final int m2125getStartimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2126hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2117equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2126hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2129unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ TextRange(long j) {
        this.packedValue = j;
    }

    /* renamed from: getMin-impl, reason: not valid java name */
    public static final int m2123getMinimpl(long j) {
        return m2125getStartimpl(j) > m2120getEndimpl(j) ? m2120getEndimpl(j) : m2125getStartimpl(j);
    }

    /* renamed from: getMax-impl, reason: not valid java name */
    public static final int m2122getMaximpl(long j) {
        return m2125getStartimpl(j) > m2120getEndimpl(j) ? m2125getStartimpl(j) : m2120getEndimpl(j);
    }

    /* renamed from: getCollapsed-impl, reason: not valid java name */
    public static final boolean m2119getCollapsedimpl(long j) {
        return m2125getStartimpl(j) == m2120getEndimpl(j);
    }

    /* renamed from: getReversed-impl, reason: not valid java name */
    public static final boolean m2124getReversedimpl(long j) {
        return m2125getStartimpl(j) > m2120getEndimpl(j);
    }

    /* renamed from: getLength-impl, reason: not valid java name */
    public static final int m2121getLengthimpl(long j) {
        return m2122getMaximpl(j) - m2123getMinimpl(j);
    }

    /* renamed from: intersects-5zc-tL8, reason: not valid java name */
    public static final boolean m2127intersects5zctL8(long j, long j2) {
        return m2123getMinimpl(j) < m2122getMaximpl(j2) && m2123getMinimpl(j2) < m2122getMaximpl(j);
    }

    /* renamed from: contains-5zc-tL8, reason: not valid java name */
    public static final boolean m2115contains5zctL8(long j, long j2) {
        return m2123getMinimpl(j) <= m2123getMinimpl(j2) && m2122getMaximpl(j2) <= m2122getMaximpl(j);
    }

    /* renamed from: contains-impl, reason: not valid java name */
    public static final boolean m2116containsimpl(long j, int i) {
        return i < m2122getMaximpl(j) && m2123getMinimpl(j) <= i;
    }

    public String toString() {
        return m2128toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2128toStringimpl(long j) {
        return "TextRange(" + m2125getStartimpl(j) + ", " + m2120getEndimpl(j) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: TextRange.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-d9O1mEE, reason: not valid java name */
        public final long m2130getZerod9O1mEE() {
            return TextRange.Zero;
        }
    }
}
