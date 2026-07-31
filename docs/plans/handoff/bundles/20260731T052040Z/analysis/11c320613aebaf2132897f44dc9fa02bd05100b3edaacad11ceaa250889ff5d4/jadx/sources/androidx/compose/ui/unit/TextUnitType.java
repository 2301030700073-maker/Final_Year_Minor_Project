package androidx.compose.ui.unit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextUnitType {
    public final long type;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m456equalsimpl0(long j, long j2) {
        return j == j2;
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
        long j = this.type;
        return m456equalsimpl0(j, 0L) ? "Unspecified" : m456equalsimpl0(j, 4294967296L) ? "Sp" : m456equalsimpl0(j, 8589934592L) ? "Em" : "Invalid";
    }
}
