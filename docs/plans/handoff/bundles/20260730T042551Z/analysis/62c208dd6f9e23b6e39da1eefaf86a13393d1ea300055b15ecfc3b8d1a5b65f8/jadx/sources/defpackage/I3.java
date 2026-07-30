package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class I3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if {

    /* renamed from: do, reason: not valid java name */
    public final int f1426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if f1427do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1428do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do> f1429do;

    /* renamed from: if, reason: not valid java name */
    public final String f1430if;

    public I3() {
        throw null;
    }

    public I3(String str, String str2, List list, AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if, int i) {
        this.f1428do = str;
        this.f1430if = str2;
        this.f1429do = list;
        this.f1427do = abstractC0013if;
        this.f1426do = i;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if
    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if mo909do() {
        return this.f1427do;
    }

    public final boolean equals(Object obj) {
        String str;
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if2 = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if) obj;
        return this.f1428do.equals(abstractC0013if2.mo913try()) && ((str = this.f1430if) != null ? str.equals(abstractC0013if2.mo912new()) : abstractC0013if2.mo912new() == null) && this.f1429do.equals(abstractC0013if2.mo911if()) && ((abstractC0013if = this.f1427do) != null ? abstractC0013if.equals(abstractC0013if2.mo909do()) : abstractC0013if2.mo909do() == null) && this.f1426do == abstractC0013if2.mo910for();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if
    /* renamed from: for, reason: not valid java name */
    public final int mo910for() {
        return this.f1426do;
    }

    public final int hashCode() {
        int hashCode = (this.f1428do.hashCode() ^ 1000003) * 1000003;
        String str = this.f1430if;
        int hashCode2 = (((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f1429do.hashCode()) * 1000003;
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if = this.f1427do;
        return ((hashCode2 ^ (abstractC0013if != null ? abstractC0013if.hashCode() : 0)) * 1000003) ^ this.f1426do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if
    /* renamed from: if, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new.AbstractC0015do> mo911if() {
        return this.f1429do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if
    /* renamed from: new, reason: not valid java name */
    public final String mo912new() {
        return this.f1430if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Exception{type=");
        sb.append(this.f1428do);
        sb.append(", reason=");
        sb.append(this.f1430if);
        sb.append(", frames=");
        sb.append(this.f1429do);
        sb.append(", causedBy=");
        sb.append(this.f1427do);
        sb.append(", overflowCount=");
        return V1.m2506this(sb, this.f1426do, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if
    /* renamed from: try, reason: not valid java name */
    public final String mo913try() {
        return this.f1428do;
    }
}
