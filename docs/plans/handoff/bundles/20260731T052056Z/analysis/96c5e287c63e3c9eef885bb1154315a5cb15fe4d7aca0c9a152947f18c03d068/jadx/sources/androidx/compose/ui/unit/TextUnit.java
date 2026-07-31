package androidx.compose.ui.unit;

import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextUnit {
    public static final TextUnitType[] TextUnitTypes = {new TextUnitType(0), new TextUnitType(4294967296L), new TextUnitType(8589934592L)};
    public static final long Unspecified = ContextsKt.pack(Float.NaN, 0);
    public final long packedValue;

    public /* synthetic */ TextUnit(long j) {
        this.packedValue = j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m723equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getType-UIouoOA, reason: not valid java name */
    public static final long m724getTypeUIouoOA(long j) {
        return TextUnitTypes[(int) ((j & 1095216660480L) >>> 32)].type;
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m725getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: isEm-impl, reason: not valid java name */
    public static final boolean m726isEmimpl(long j) {
        return (j & 1095216660480L) == 8589934592L;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m727toStringimpl(long j) {
        long m724getTypeUIouoOA = m724getTypeUIouoOA(j);
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 0L)) {
            return "Unspecified";
        }
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 4294967296L)) {
            return m725getValueimpl(j) + ".sp";
        }
        if (!TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 8589934592L)) {
            return "Invalid";
        }
        return m725getValueimpl(j) + ".em";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnit) {
            return this.packedValue == ((TextUnit) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.packedValue);
    }

    public final String toString() {
        return m727toStringimpl(this.packedValue);
    }
}
