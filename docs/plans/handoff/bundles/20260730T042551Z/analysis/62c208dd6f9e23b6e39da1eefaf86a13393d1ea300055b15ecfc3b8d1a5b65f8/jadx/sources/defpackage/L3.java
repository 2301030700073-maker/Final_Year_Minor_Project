package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class L3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do {

    /* renamed from: do, reason: not valid java name */
    public final int f1911do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f1912do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1913do;

    /* renamed from: if, reason: not valid java name */
    public final long f1914if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f1915if;

    /* renamed from: L3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do.AbstractC0016do {

        /* renamed from: do, reason: not valid java name */
        public byte f1916do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f1917do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f1918do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f1919do;

        /* renamed from: if, reason: not valid java name */
        public long f1920if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f1921if;

        /* renamed from: do, reason: not valid java name */
        public final L3 m1263do() {
            String str;
            if (this.f1916do == 7 && (str = this.f1919do) != null) {
                return new L3(this.f1918do, str, this.f1921if, this.f1920if, this.f1917do);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f1916do & 1) == 0) {
                sb.append(" pc");
            }
            if (this.f1919do == null) {
                sb.append(" symbol");
            }
            if ((this.f1916do & 2) == 0) {
                sb.append(" offset");
            }
            if ((this.f1916do & 4) == 0) {
                sb.append(" importance");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public L3(long j, String str, String str2, long j2, int i) {
        this.f1912do = j;
        this.f1913do = str;
        this.f1915if = str2;
        this.f1914if = j2;
        this.f1911do = i;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do
    /* renamed from: do, reason: not valid java name */
    public final String mo1258do() {
        return this.f1915if;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do abstractC0015do = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do) obj;
        return this.f1912do == abstractC0015do.mo1261new() && this.f1913do.equals(abstractC0015do.mo1262try()) && ((str = this.f1915if) != null ? str.equals(abstractC0015do.mo1258do()) : abstractC0015do.mo1258do() == null) && this.f1914if == abstractC0015do.mo1259for() && this.f1911do == abstractC0015do.mo1260if();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do
    /* renamed from: for, reason: not valid java name */
    public final long mo1259for() {
        return this.f1914if;
    }

    public final int hashCode() {
        long j = this.f1912do;
        int hashCode = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f1913do.hashCode()) * 1000003;
        String str = this.f1915if;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j2 = this.f1914if;
        return this.f1911do ^ ((hashCode2 ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do
    /* renamed from: if, reason: not valid java name */
    public final int mo1260if() {
        return this.f1911do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do
    /* renamed from: new, reason: not valid java name */
    public final long mo1261new() {
        return this.f1912do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Frame{pc=");
        sb.append(this.f1912do);
        sb.append(", symbol=");
        sb.append(this.f1913do);
        sb.append(", file=");
        sb.append(this.f1915if);
        sb.append(", offset=");
        sb.append(this.f1914if);
        sb.append(", importance=");
        return V1.m2506this(sb, this.f1911do, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do
    /* renamed from: try, reason: not valid java name */
    public final String mo1262try() {
        return this.f1913do;
    }
}
