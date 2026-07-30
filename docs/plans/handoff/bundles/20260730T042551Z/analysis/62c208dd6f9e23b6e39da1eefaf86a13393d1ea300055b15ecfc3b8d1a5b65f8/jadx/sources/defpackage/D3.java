package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class D3 extends AbstractC0533Ub.Ctry.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final int f474do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f475do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f476do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f477do;

    /* renamed from: for, reason: not valid java name */
    public final int f478for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f479for;

    /* renamed from: if, reason: not valid java name */
    public final int f480if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f481if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f482if;

    /* renamed from: D3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cfor.Cdo {

        /* renamed from: do, reason: not valid java name */
        public byte f483do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f484do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f485do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f486do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f487do;

        /* renamed from: for, reason: not valid java name */
        public int f488for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public String f489for;

        /* renamed from: if, reason: not valid java name */
        public int f490if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public long f491if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f492if;

        /* renamed from: do, reason: not valid java name */
        public final D3 m347do() {
            String str;
            String str2;
            String str3;
            if (this.f483do == 63 && (str = this.f486do) != null && (str2 = this.f492if) != null && (str3 = this.f489for) != null) {
                return new D3(this.f484do, str, this.f490if, this.f485do, this.f491if, this.f487do, this.f488for, str2, str3);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f483do & 1) == 0) {
                sb.append(" arch");
            }
            if (this.f486do == null) {
                sb.append(" model");
            }
            if ((this.f483do & 2) == 0) {
                sb.append(" cores");
            }
            if ((this.f483do & 4) == 0) {
                sb.append(" ram");
            }
            if ((this.f483do & 8) == 0) {
                sb.append(" diskSpace");
            }
            if ((this.f483do & 16) == 0) {
                sb.append(" simulator");
            }
            if ((this.f483do & 32) == 0) {
                sb.append(" state");
            }
            if (this.f492if == null) {
                sb.append(" manufacturer");
            }
            if (this.f489for == null) {
                sb.append(" modelClass");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public D3(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f474do = i;
        this.f476do = str;
        this.f480if = i2;
        this.f475do = j;
        this.f481if = j2;
        this.f477do = z;
        this.f478for = i3;
        this.f482if = str2;
        this.f479for = str3;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: case, reason: not valid java name */
    public final String mo338case() {
        return this.f479for;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: do, reason: not valid java name */
    public final int mo339do() {
        return this.f474do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: else, reason: not valid java name */
    public final long mo340else() {
        return this.f475do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cfor)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cfor cfor = (AbstractC0533Ub.Ctry.Cfor) obj;
        return this.f474do == cfor.mo339do() && this.f476do.equals(cfor.mo346try()) && this.f480if == cfor.mo343if() && this.f475do == cfor.mo340else() && this.f481if == cfor.mo341for() && this.f477do == cfor.mo345this() && this.f478for == cfor.mo342goto() && this.f482if.equals(cfor.mo344new()) && this.f479for.equals(cfor.mo338case());
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: for, reason: not valid java name */
    public final long mo341for() {
        return this.f481if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: goto, reason: not valid java name */
    public final int mo342goto() {
        return this.f478for;
    }

    public final int hashCode() {
        int hashCode = (((((this.f474do ^ 1000003) * 1000003) ^ this.f476do.hashCode()) * 1000003) ^ this.f480if) * 1000003;
        long j = this.f475do;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f481if;
        return ((((((((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f477do ? 1231 : 1237)) * 1000003) ^ this.f478for) * 1000003) ^ this.f482if.hashCode()) * 1000003) ^ this.f479for.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: if, reason: not valid java name */
    public final int mo343if() {
        return this.f480if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: new, reason: not valid java name */
    public final String mo344new() {
        return this.f482if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: this, reason: not valid java name */
    public final boolean mo345this() {
        return this.f477do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{arch=");
        sb.append(this.f474do);
        sb.append(", model=");
        sb.append(this.f476do);
        sb.append(", cores=");
        sb.append(this.f480if);
        sb.append(", ram=");
        sb.append(this.f475do);
        sb.append(", diskSpace=");
        sb.append(this.f481if);
        sb.append(", simulator=");
        sb.append(this.f477do);
        sb.append(", state=");
        sb.append(this.f478for);
        sb.append(", manufacturer=");
        sb.append(this.f482if);
        sb.append(", modelClass=");
        return Creturn.m7984try(sb, this.f479for, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cfor
    /* renamed from: try, reason: not valid java name */
    public final String mo346try() {
        return this.f476do;
    }
}
