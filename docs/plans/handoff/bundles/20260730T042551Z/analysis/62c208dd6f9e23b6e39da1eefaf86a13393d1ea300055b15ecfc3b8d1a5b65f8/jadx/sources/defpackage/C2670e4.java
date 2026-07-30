package defpackage;

/* renamed from: e4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2670e4 extends AbstractC2771fo {

    /* renamed from: do, reason: not valid java name */
    public final long f12589do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12590do;

    /* renamed from: if, reason: not valid java name */
    public final long f12591if;

    public C2670e4(String str, long j, long j2) {
        this.f12590do = str;
        this.f12589do = j;
        this.f12591if = j2;
    }

    @Override // defpackage.AbstractC2771fo
    /* renamed from: do, reason: not valid java name */
    public final String mo6509do() {
        return this.f12590do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2771fo)) {
            return false;
        }
        AbstractC2771fo abstractC2771fo = (AbstractC2771fo) obj;
        return this.f12590do.equals(abstractC2771fo.mo6509do()) && this.f12589do == abstractC2771fo.mo6510for() && this.f12591if == abstractC2771fo.mo6511if();
    }

    @Override // defpackage.AbstractC2771fo
    /* renamed from: for, reason: not valid java name */
    public final long mo6510for() {
        return this.f12589do;
    }

    public final int hashCode() {
        int hashCode = (this.f12590do.hashCode() ^ 1000003) * 1000003;
        long j = this.f12589do;
        long j2 = this.f12591if;
        return ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // defpackage.AbstractC2771fo
    /* renamed from: if, reason: not valid java name */
    public final long mo6511if() {
        return this.f12591if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.f12590do);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f12589do);
        sb.append(", tokenCreationTimestamp=");
        return C4122zt.m8818case(sb, this.f12591if, "}");
    }
}
