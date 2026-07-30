package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class F3 extends AbstractC0533Ub.Ctry.Cnew.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final int f966do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor f967do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif f968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f969do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Cfor> f970do;

    /* renamed from: for, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor> f971for;

    /* renamed from: if, reason: not valid java name */
    public final List<AbstractC0533Ub.Cfor> f972if;

    /* renamed from: F3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.Cdo.AbstractC0010do {

        /* renamed from: do, reason: not valid java name */
        public byte f973do = 1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f974do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor f975do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cnew.Cdo.Cif f976do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Boolean f977do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<AbstractC0533Ub.Cfor> f978do;

        /* renamed from: for, reason: not valid java name */
        public List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor> f979for;

        /* renamed from: if, reason: not valid java name */
        public List<AbstractC0533Ub.Cfor> f980if;

        public Cdo(AbstractC0533Ub.Ctry.Cnew.Cdo cdo) {
            this.f976do = cdo.mo570try();
            this.f978do = cdo.mo569new();
            this.f980if = cdo.mo563case();
            this.f977do = cdo.mo568if();
            this.f975do = cdo.mo566for();
            this.f979for = cdo.mo564do();
            this.f974do = cdo.mo565else();
        }

        /* renamed from: do, reason: not valid java name */
        public final F3 m571do() {
            AbstractC0533Ub.Ctry.Cnew.Cdo.Cif cif;
            if (this.f973do == 1 && (cif = this.f976do) != null) {
                return new F3(cif, this.f978do, this.f980if, this.f977do, this.f975do, this.f979for, this.f974do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f976do == null) {
                sb.append(" execution");
            }
            if ((1 & this.f973do) == 0) {
                sb.append(" uiOrientation");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public F3() {
        throw null;
    }

    public F3(AbstractC0533Ub.Ctry.Cnew.Cdo.Cif cif, List list, List list2, Boolean bool, AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor cfor, List list3, int i) {
        this.f968do = cif;
        this.f970do = list;
        this.f972if = list2;
        this.f969do = bool;
        this.f967do = cfor;
        this.f971for = list3;
        this.f966do = i;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: case, reason: not valid java name */
    public final List<AbstractC0533Ub.Cfor> mo563case() {
        return this.f972if;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor> mo564do() {
        return this.f971for;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: else, reason: not valid java name */
    public final int mo565else() {
        return this.f966do;
    }

    public final boolean equals(Object obj) {
        List<AbstractC0533Ub.Cfor> list;
        List<AbstractC0533Ub.Cfor> list2;
        Boolean bool;
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor cfor;
        List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor> list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo cdo = (AbstractC0533Ub.Ctry.Cnew.Cdo) obj;
        return this.f968do.equals(cdo.mo570try()) && ((list = this.f970do) != null ? list.equals(cdo.mo569new()) : cdo.mo569new() == null) && ((list2 = this.f972if) != null ? list2.equals(cdo.mo563case()) : cdo.mo563case() == null) && ((bool = this.f969do) != null ? bool.equals(cdo.mo568if()) : cdo.mo568if() == null) && ((cfor = this.f967do) != null ? cfor.equals(cdo.mo566for()) : cdo.mo566for() == null) && ((list3 = this.f971for) != null ? list3.equals(cdo.mo564do()) : cdo.mo564do() == null) && this.f966do == cdo.mo565else();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: for, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor mo566for() {
        return this.f967do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: goto, reason: not valid java name */
    public final Cdo mo567goto() {
        return new Cdo(this);
    }

    public final int hashCode() {
        int hashCode = (this.f968do.hashCode() ^ 1000003) * 1000003;
        List<AbstractC0533Ub.Cfor> list = this.f970do;
        int hashCode2 = (hashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List<AbstractC0533Ub.Cfor> list2 = this.f972if;
        int hashCode3 = (hashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.f969do;
        int hashCode4 = (hashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor cfor = this.f967do;
        int hashCode5 = (hashCode4 ^ (cfor == null ? 0 : cfor.hashCode())) * 1000003;
        List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor> list3 = this.f971for;
        return ((hashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.f966do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: if, reason: not valid java name */
    public final Boolean mo568if() {
        return this.f969do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: new, reason: not valid java name */
    public final List<AbstractC0533Ub.Cfor> mo569new() {
        return this.f970do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{execution=");
        sb.append(this.f968do);
        sb.append(", customAttributes=");
        sb.append(this.f970do);
        sb.append(", internalKeys=");
        sb.append(this.f972if);
        sb.append(", background=");
        sb.append(this.f969do);
        sb.append(", currentProcessDetails=");
        sb.append(this.f967do);
        sb.append(", appProcessDetails=");
        sb.append(this.f971for);
        sb.append(", uiOrientation=");
        return V1.m2506this(sb, this.f966do, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo
    /* renamed from: try, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cnew.Cdo.Cif mo570try() {
        return this.f968do;
    }
}
