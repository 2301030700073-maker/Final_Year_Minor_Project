package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class P3 extends AbstractC0533Ub.Ctry.Cnew.AbstractC0018try {

    /* renamed from: do, reason: not valid java name */
    public final long f2724do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif f2725do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2726do;

    /* renamed from: if, reason: not valid java name */
    public final String f2727if;

    /* renamed from: P3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cdo {

        /* renamed from: do, reason: not valid java name */
        public byte f2728do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f2729do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif f2730do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f2731do;

        /* renamed from: if, reason: not valid java name */
        public String f2732if;

        /* renamed from: do, reason: not valid java name */
        public final P3 m1743do() {
            AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif cif;
            String str;
            String str2;
            if (this.f2728do == 1 && (cif = this.f2730do) != null && (str = this.f2731do) != null && (str2 = this.f2732if) != null) {
                return new P3(cif, str, str2, this.f2729do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f2730do == null) {
                sb.append(" rolloutVariant");
            }
            if (this.f2731do == null) {
                sb.append(" parameterKey");
            }
            if (this.f2732if == null) {
                sb.append(" parameterValue");
            }
            if ((1 & this.f2728do) == 0) {
                sb.append(" templateVersion");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public P3(AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif cif, String str, String str2, long j) {
        this.f2725do = cif;
        this.f2726do = str;
        this.f2727if = str2;
        this.f2724do = j;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try
    /* renamed from: do, reason: not valid java name */
    public final String mo1739do() {
        return this.f2726do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.AbstractC0018try)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.AbstractC0018try abstractC0018try = (AbstractC0533Ub.Ctry.Cnew.AbstractC0018try) obj;
        return this.f2725do.equals(abstractC0018try.mo1740for()) && this.f2726do.equals(abstractC0018try.mo1739do()) && this.f2727if.equals(abstractC0018try.mo1741if()) && this.f2724do == abstractC0018try.mo1742new();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try
    /* renamed from: for, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif mo1740for() {
        return this.f2725do;
    }

    public final int hashCode() {
        int hashCode = (((((this.f2725do.hashCode() ^ 1000003) * 1000003) ^ this.f2726do.hashCode()) * 1000003) ^ this.f2727if.hashCode()) * 1000003;
        long j = this.f2724do;
        return hashCode ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try
    /* renamed from: if, reason: not valid java name */
    public final String mo1741if() {
        return this.f2727if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try
    /* renamed from: new, reason: not valid java name */
    public final long mo1742new() {
        return this.f2724do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutVariant=");
        sb.append(this.f2725do);
        sb.append(", parameterKey=");
        sb.append(this.f2726do);
        sb.append(", parameterValue=");
        sb.append(this.f2727if);
        sb.append(", templateVersion=");
        return C4122zt.m8818case(sb, this.f2724do, "}");
    }
}
