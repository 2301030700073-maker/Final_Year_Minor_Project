package androidx.compose.ui.unit;

import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextUnit {
    public static final TextUnitType[] TextUnitTypes = {new TextUnitType(0), new TextUnitType(4294967296L), new TextUnitType(8589934592L)};
    public static final long Unspecified = MathKt.pack(0, Float.NaN);
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m451equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getType-UIouoOA, reason: not valid java name */
    public static final long m452getTypeUIouoOA(long j) {
        return TextUnitTypes[(int) ((j & 1095216660480L) >>> 32)].type;
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m453getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m454hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m455toStringimpl(long j) {
        long m452getTypeUIouoOA = m452getTypeUIouoOA(j);
        if (TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 0L)) {
            return "Unspecified";
        }
        if (TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 4294967296L)) {
            return m453getValueimpl(j) + ".sp";
        }
        if (!TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 8589934592L)) {
            return "Invalid";
        }
        return m453getValueimpl(j) + ".em";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnit) {
            return this.packedValue == ((TextUnit) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return m454hashCodeimpl(this.packedValue);
    }

    public final String toString() {
        return m455toStringimpl(this.packedValue);
    }
}
