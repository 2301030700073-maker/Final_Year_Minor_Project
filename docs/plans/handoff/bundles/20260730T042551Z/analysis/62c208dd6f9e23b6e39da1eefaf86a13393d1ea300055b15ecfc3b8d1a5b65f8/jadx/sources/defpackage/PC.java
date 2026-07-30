package defpackage;

/* loaded from: classes3.dex */
public interface PC {

    /* renamed from: PC$do, reason: invalid class name */
    public enum Cdo {
        CRASHLYTICS,
        PERFORMANCE,
        /* JADX INFO: Fake field, exist only in values array */
        MATT_SAYS_HI
    }

    /* renamed from: PC$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f2746do;

        public Cif(String str) {
            C0173Do.m401try(str, "sessionId");
            this.f2746do = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Cif) && C0173Do.m394do(this.f2746do, ((Cif) obj).f2746do);
        }

        public final int hashCode() {
            return this.f2746do.hashCode();
        }

        public final String toString() {
            return "SessionDetails(sessionId=" + this.f2746do + ')';
        }
    }

    /* renamed from: do */
    boolean mo485do();

    /* renamed from: for */
    void mo486for(Cif cif);

    /* renamed from: if */
    void mo487if();
}
