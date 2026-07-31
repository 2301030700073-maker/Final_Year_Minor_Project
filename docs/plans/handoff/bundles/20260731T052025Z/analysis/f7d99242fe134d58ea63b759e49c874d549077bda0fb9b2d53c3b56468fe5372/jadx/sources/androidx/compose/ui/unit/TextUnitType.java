package androidx.compose.ui.unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextUnitType {
    public final long type;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m776equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m777toStringimpl(long j) {
        return m776equalsimpl0(j, 0L) ? "Unspecified" : m776equalsimpl0(j, 4294967296L) ? "Sp" : m776equalsimpl0(j, 8589934592L) ? "Em" : "Invalid";
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
        return m777toStringimpl(this.type);
    }
}
