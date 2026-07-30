package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class R3 extends AbstractC0533Ub.Ctry.Cnew.Ccase {

    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.AbstractC0018try> f3145do;

    public R3() {
        throw null;
    }

    public R3(List list) {
        this.f3145do = list;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Ccase
    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.AbstractC0018try> mo2013do() {
        return this.f3145do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0533Ub.Ctry.Cnew.Ccase) {
            return this.f3145do.equals(((AbstractC0533Ub.Ctry.Cnew.Ccase) obj).mo2013do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f3145do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f3145do + "}";
    }
}
