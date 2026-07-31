package androidx.compose.ui.unit;

import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextUnit {
    public static final TextUnitType[] TextUnitTypes = {new TextUnitType(0), new TextUnitType(4294967296L), new TextUnitType(8589934592L)};
    public static final long Unspecified = SQLite.pack(Float.NaN, 0);
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m771equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getType-UIouoOA, reason: not valid java name */
    public static final long m772getTypeUIouoOA(long j) {
        return TextUnitTypes[(int) ((j & 1095216660480L) >>> 32)].type;
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m773getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m774hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m775toStringimpl(long j) {
        long m772getTypeUIouoOA = m772getTypeUIouoOA(j);
        if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 0L)) {
            return "Unspecified";
        }
        if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 4294967296L)) {
            return m773getValueimpl(j) + ".sp";
        }
        if (!TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 8589934592L)) {
            return "Invalid";
        }
        return m773getValueimpl(j) + ".em";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnit) {
            return this.packedValue == ((TextUnit) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return m774hashCodeimpl(this.packedValue);
    }

    public final String toString() {
        return m775toStringimpl(this.packedValue);
    }
}
