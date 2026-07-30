package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class G3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Cdo f1120do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor f1121do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if f1122do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new> f1123do;

    /* renamed from: if, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do> f1124if;

    public G3() {
        throw null;
    }

    public G3(List list, AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if, AbstractC0533Ub.Cdo cdo, AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor cfor, List list2) {
        this.f1123do = list;
        this.f1122do = abstractC0013if;
        this.f1120do = cdo;
        this.f1121do = cfor;
        this.f1124if = list2;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif
    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Cdo mo702do() {
        return this.f1120do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif cif = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif) obj;
        List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new> list = this.f1123do;
        if (list != null ? list.equals(cif.mo706try()) : cif.mo706try() == null) {
            AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if = this.f1122do;
            if (abstractC0013if != null ? abstractC0013if.equals(cif.mo703for()) : cif.mo703for() == null) {
                AbstractC0533Ub.Cdo cdo = this.f1120do;
                if (cdo != null ? cdo.equals(cif.mo702do()) : cif.mo702do() == null) {
                    if (this.f1121do.equals(cif.mo705new()) && this.f1124if.equals(cif.mo704if())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif
    /* renamed from: for, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if mo703for() {
        return this.f1122do;
    }

    public final int hashCode() {
        List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new> list = this.f1123do;
        int hashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0013if abstractC0013if = this.f1122do;
        int hashCode2 = (hashCode ^ (abstractC0013if == null ? 0 : abstractC0013if.hashCode())) * 1000003;
        AbstractC0533Ub.Cdo cdo = this.f1120do;
        return (((((cdo != null ? cdo.hashCode() : 0) ^ hashCode2) * 1000003) ^ this.f1121do.hashCode()) * 1000003) ^ this.f1124if.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif
    /* renamed from: if, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do> mo704if() {
        return this.f1124if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif
    /* renamed from: new, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor mo705new() {
        return this.f1121do;
    }

    public final String toString() {
        return "Execution{threads=" + this.f1123do + ", exception=" + this.f1122do + ", appExitInfo=" + this.f1120do + ", signal=" + this.f1121do + ", binaries=" + this.f1124if + "}";
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif
    /* renamed from: try, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0014new> mo706try() {
        return this.f1123do;
    }
}
