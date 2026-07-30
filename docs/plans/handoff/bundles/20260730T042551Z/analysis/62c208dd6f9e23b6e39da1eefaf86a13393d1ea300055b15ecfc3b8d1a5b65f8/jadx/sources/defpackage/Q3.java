package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class Q3 extends AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif {

    /* renamed from: do, reason: not valid java name */
    public final String f2865do;

    /* renamed from: if, reason: not valid java name */
    public final String f2866if;

    public Q3(String str, String str2) {
        this.f2865do = str;
        this.f2866if = str2;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif
    /* renamed from: do, reason: not valid java name */
    public final String mo1827do() {
        return this.f2865do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif cif = (AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif) obj;
        return this.f2865do.equals(cif.mo1827do()) && this.f2866if.equals(cif.mo1828if());
    }

    public final int hashCode() {
        return ((this.f2865do.hashCode() ^ 1000003) * 1000003) ^ this.f2866if.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0018try.Cif
    /* renamed from: if, reason: not valid java name */
    public final String mo1828if() {
        return this.f2866if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutVariant{rolloutId=");
        sb.append(this.f2865do);
        sb.append(", variantId=");
        return Creturn.m7984try(sb, this.f2866if, "}");
    }
}
