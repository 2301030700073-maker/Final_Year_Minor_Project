package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class E3 extends AbstractC0533Ub.Ctry.Cnew {

    /* renamed from: do, reason: not valid java name */
    public final long f716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Ccase f717do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo f718do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cfor f719do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.AbstractC0017new f720do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f721do;

    /* renamed from: E3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.Cif {

        /* renamed from: do, reason: not valid java name */
        public byte f722do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f723do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.Ccase f724do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.Cdo f725do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.Cfor f726do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.AbstractC0017new f727do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f728do;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final E3 m432do() {
            String str;
            AbstractC0533Ub.Ctry.Cnew.Cdo cdo;
            AbstractC0533Ub.Ctry.Cnew.Cfor cfor;
            if (this.f722do == 1 && (str = this.f728do) != null && (cdo = this.f725do) != null && (cfor = this.f726do) != null) {
                return new E3(this.f723do, str, cdo, cfor, this.f727do, this.f724do);
            }
            StringBuilder sb = new StringBuilder();
            if ((1 & this.f722do) == 0) {
                sb.append(" timestamp");
            }
            if (this.f728do == null) {
                sb.append(" type");
            }
            if (this.f725do == null) {
                sb.append(" app");
            }
            if (this.f726do == null) {
                sb.append(" device");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }

        public Cdo(AbstractC0533Ub.Ctry.Cnew cnew) {
            this.f723do = cnew.mo431try();
            this.f728do = cnew.mo426case();
            this.f725do = cnew.mo427do();
            this.f726do = cnew.mo429if();
            this.f727do = cnew.mo428for();
            this.f724do = cnew.mo430new();
            this.f722do = (byte) 1;
        }
    }

    public E3(long j, String str, AbstractC0533Ub.Ctry.Cnew.Cdo cdo, AbstractC0533Ub.Ctry.Cnew.Cfor cfor, AbstractC0533Ub.Ctry.Cnew.AbstractC0017new abstractC0017new, AbstractC0533Ub.Ctry.Cnew.Ccase ccase) {
        this.f716do = j;
        this.f721do = str;
        this.f718do = cdo;
        this.f719do = cfor;
        this.f720do = abstractC0017new;
        this.f717do = ccase;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: case, reason: not valid java name */
    public final String mo426case() {
        return this.f721do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo mo427do() {
        return this.f718do;
    }

    public final boolean equals(Object obj) {
        AbstractC0533Ub.Ctry.Cnew.AbstractC0017new abstractC0017new;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew cnew = (AbstractC0533Ub.Ctry.Cnew) obj;
        if (this.f716do == cnew.mo431try() && this.f721do.equals(cnew.mo426case()) && this.f718do.equals(cnew.mo427do()) && this.f719do.equals(cnew.mo429if()) && ((abstractC0017new = this.f720do) != null ? abstractC0017new.equals(cnew.mo428for()) : cnew.mo428for() == null)) {
            AbstractC0533Ub.Ctry.Cnew.Ccase ccase = this.f717do;
            if (ccase == null) {
                if (cnew.mo430new() == null) {
                    return true;
                }
            } else if (ccase.equals(cnew.mo430new())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: for, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.AbstractC0017new mo428for() {
        return this.f720do;
    }

    public final int hashCode() {
        long j = this.f716do;
        int hashCode = (((((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.f721do.hashCode()) * 1000003) ^ this.f718do.hashCode()) * 1000003) ^ this.f719do.hashCode()) * 1000003;
        AbstractC0533Ub.Ctry.Cnew.AbstractC0017new abstractC0017new = this.f720do;
        int hashCode2 = (hashCode ^ (abstractC0017new == null ? 0 : abstractC0017new.hashCode())) * 1000003;
        AbstractC0533Ub.Ctry.Cnew.Ccase ccase = this.f717do;
        return hashCode2 ^ (ccase != null ? ccase.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: if, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cfor mo429if() {
        return this.f719do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: new, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Ccase mo430new() {
        return this.f717do;
    }

    public final String toString() {
        return "Event{timestamp=" + this.f716do + ", type=" + this.f721do + ", app=" + this.f718do + ", device=" + this.f719do + ", log=" + this.f720do + ", rollouts=" + this.f717do + "}";
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew
    /* renamed from: try, reason: not valid java name */
    public final long mo431try() {
        return this.f716do;
    }
}
