package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class K3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new {

    /* renamed from: do, reason: not valid java name */
    public final int f1750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do> f1752do;

    public K3() {
        throw null;
    }

    public K3(String str, int i, List list) {
        this.f1751do = str;
        this.f1750do = i;
        this.f1752do = list;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new
    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do> mo1113do() {
        return this.f1752do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new abstractC0014new = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new) obj;
        return this.f1751do.equals(abstractC0014new.mo1114for()) && this.f1750do == abstractC0014new.mo1115if() && this.f1752do.equals(abstractC0014new.mo1113do());
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new
    /* renamed from: for, reason: not valid java name */
    public final String mo1114for() {
        return this.f1751do;
    }

    public final int hashCode() {
        return ((((this.f1751do.hashCode() ^ 1000003) * 1000003) ^ this.f1750do) * 1000003) ^ this.f1752do.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new
    /* renamed from: if, reason: not valid java name */
    public final int mo1115if() {
        return this.f1750do;
    }

    public final String toString() {
        return "Thread{name=" + this.f1751do + ", importance=" + this.f1750do + ", frames=" + this.f1752do + "}";
    }
}
