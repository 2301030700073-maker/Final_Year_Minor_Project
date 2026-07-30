package defpackage;

/* loaded from: classes.dex */
public final class PH {

    /* renamed from: do, reason: not valid java name */
    public final int f2769do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f2770do;

    /* renamed from: if, reason: not valid java name */
    public final long f2771if;

    public PH(long j, long j2, int i) {
        this.f2770do = j;
        this.f2771if = j2;
        this.f2769do = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PH)) {
            return false;
        }
        PH ph = (PH) obj;
        return this.f2770do == ph.f2770do && this.f2771if == ph.f2771if && this.f2769do == ph.f2769do;
    }

    public final int hashCode() {
        long j = this.f2770do;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.f2771if;
        return ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f2769do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaxonomyVersion=");
        sb.append(this.f2770do);
        sb.append(", ModelVersion=");
        sb.append(this.f2771if);
        sb.append(", TopicCode=");
        return C4122zt.m8824for("Topic { ", V1.m2506this(sb, this.f2769do, " }"));
    }
}
