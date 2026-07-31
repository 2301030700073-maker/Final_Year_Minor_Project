package androidx.compose.ui.unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextUnitType {
    public final long type;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m728equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m729toStringimpl(long j) {
        return m728equalsimpl0(j, 0L) ? "Unspecified" : m728equalsimpl0(j, 4294967296L) ? "Sp" : m728equalsimpl0(j, 8589934592L) ? "Em" : "Invalid";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextUnitType) {
            return this.type == ((TextUnitType) obj).type;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.type;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m729toStringimpl(this.type);
    }
}
