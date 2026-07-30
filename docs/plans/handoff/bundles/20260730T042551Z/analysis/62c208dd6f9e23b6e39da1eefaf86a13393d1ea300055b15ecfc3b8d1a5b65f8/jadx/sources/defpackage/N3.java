package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class N3 extends AbstractC0533Ub.Ctry.Cnew.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final int f2286do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f2287do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Double f2288do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f2289do;

    /* renamed from: if, reason: not valid java name */
    public final int f2290if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f2291if;

    /* renamed from: N3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.Cfor.Cdo {

        /* renamed from: do, reason: not valid java name */
        public byte f2292do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f2293do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f2294do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Double f2295do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f2296do;

        /* renamed from: if, reason: not valid java name */
        public int f2297if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public long f2298if;

        /* renamed from: do, reason: not valid java name */
        public final N3 m1492do() {
            if (this.f2292do == 31) {
                return new N3(this.f2295do, this.f2293do, this.f2296do, this.f2297if, this.f2294do, this.f2298if);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f2292do & 1) == 0) {
                sb.append(" batteryVelocity");
            }
            if ((this.f2292do & 2) == 0) {
                sb.append(" proximityOn");
            }
            if ((this.f2292do & 4) == 0) {
                sb.append(" orientation");
            }
            if ((this.f2292do & 8) == 0) {
                sb.append(" ramUsed");
            }
            if ((this.f2292do & 16) == 0) {
                sb.append(" diskUsed");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public N3(Double d, int i, boolean z, int i2, long j, long j2) {
        this.f2288do = d;
        this.f2286do = i;
        this.f2289do = z;
        this.f2290if = i2;
        this.f2287do = j;
        this.f2291if = j2;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: case, reason: not valid java name */
    public final boolean mo1486case() {
        return this.f2289do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: do, reason: not valid java name */
    public final Double mo1487do() {
        return this.f2288do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cfor)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cfor cfor = (AbstractC0533Ub.Ctry.Cnew.Cfor) obj;
        Double d = this.f2288do;
        if (d != null ? d.equals(cfor.mo1487do()) : cfor.mo1487do() == null) {
            if (this.f2286do == cfor.mo1489if() && this.f2289do == cfor.mo1486case() && this.f2290if == cfor.mo1490new() && this.f2287do == cfor.mo1491try() && this.f2291if == cfor.mo1488for()) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: for, reason: not valid java name */
    public final long mo1488for() {
        return this.f2291if;
    }

    public final int hashCode() {
        Double d = this.f2288do;
        int hashCode = ((((((((d == null ? 0 : d.hashCode()) ^ 1000003) * 1000003) ^ this.f2286do) * 1000003) ^ (this.f2289do ? 1231 : 1237)) * 1000003) ^ this.f2290if) * 1000003;
        long j = this.f2287do;
        long j2 = this.f2291if;
        return ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: if, reason: not valid java name */
    public final int mo1489if() {
        return this.f2286do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: new, reason: not valid java name */
    public final int mo1490new() {
        return this.f2290if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{batteryLevel=");
        sb.append(this.f2288do);
        sb.append(", batteryVelocity=");
        sb.append(this.f2286do);
        sb.append(", proximityOn=");
        sb.append(this.f2289do);
        sb.append(", orientation=");
        sb.append(this.f2290if);
        sb.append(", ramUsed=");
        sb.append(this.f2287do);
        sb.append(", diskUsed=");
        return C4122zt.m8818case(sb, this.f2291if, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cfor
    /* renamed from: try, reason: not valid java name */
    public final long mo1491try() {
        return this.f2287do;
    }
}
