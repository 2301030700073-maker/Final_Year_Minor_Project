package net.thunderbird.feature.mail.message.list.ui.state;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PaginationUi {
    public final Phase phase = Phase.Idle;
    public final int prefetchDistance = 10;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Phase {
        public static final /* synthetic */ Phase[] $VALUES;
        public static final Phase Idle;
        public static final Phase Loading;

        static {
            Phase phase = new Phase("Idle", 0);
            Idle = phase;
            Phase phase2 = new Phase("Loading", 1);
            Loading = phase2;
            $VALUES = new Phase[]{phase, phase2};
        }

        public static Phase valueOf(String str) {
            return (Phase) Enum.valueOf(Phase.class, str);
        }

        public static Phase[] values() {
            return (Phase[]) $VALUES.clone();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PaginationUi)) {
            return false;
        }
        PaginationUi paginationUi = (PaginationUi) obj;
        return this.phase == paginationUi.phase && this.prefetchDistance == paginationUi.prefetchDistance;
    }

    public final int hashCode() {
        return ((((this.phase.hashCode() * 31) + this.prefetchDistance) * 31) + 1237) * 31;
    }

    public final String toString() {
        return "PaginationUi(phase=" + this.phase + ", prefetchDistance=" + this.prefetchDistance + ", endReached=false, error=null)";
    }
}
