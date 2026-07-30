package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class H3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do {

    /* renamed from: do, reason: not valid java name */
    public final long f1287do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1288do;

    /* renamed from: if, reason: not valid java name */
    public final long f1289if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f1290if;

    public H3(long j, long j2, String str, String str2) {
        this.f1287do = j;
        this.f1289if = j2;
        this.f1288do = str;
        this.f1290if = str2;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do
    /* renamed from: do, reason: not valid java name */
    public final long mo805do() {
        return this.f1287do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do abstractC0012do = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do) obj;
        if (this.f1287do == abstractC0012do.mo805do() && this.f1289if == abstractC0012do.mo806for() && this.f1288do.equals(abstractC0012do.mo807if())) {
            String str = this.f1290if;
            if (str == null) {
                if (abstractC0012do.mo808new() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0012do.mo808new())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do
    /* renamed from: for, reason: not valid java name */
    public final long mo806for() {
        return this.f1289if;
    }

    public final int hashCode() {
        long j = this.f1287do;
        long j2 = this.f1289if;
        int hashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f1288do.hashCode()) * 1000003;
        String str = this.f1290if;
        return (str == null ? 0 : str.hashCode()) ^ hashCode;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do
    /* renamed from: if, reason: not valid java name */
    public final String mo807if() {
        return this.f1288do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do
    /* renamed from: new, reason: not valid java name */
    public final String mo808new() {
        return this.f1290if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BinaryImage{baseAddress=");
        sb.append(this.f1287do);
        sb.append(", size=");
        sb.append(this.f1289if);
        sb.append(", name=");
        sb.append(this.f1288do);
        sb.append(", uuid=");
        return Creturn.m7984try(sb, this.f1290if, "}");
    }
}
