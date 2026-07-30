package defpackage;

import defpackage.AbstractC3946wu;

/* renamed from: j4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3132j4 extends AbstractC3946wu {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3946wu.Cdo f13636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3946wu.Cif f13637do;

    public C3132j4(AbstractC3946wu.Cif cif, AbstractC3946wu.Cdo cdo) {
        this.f13637do = cif;
        this.f13636do = cdo;
    }

    @Override // defpackage.AbstractC3946wu
    /* renamed from: do, reason: not valid java name */
    public final AbstractC3946wu.Cdo mo7033do() {
        return this.f13636do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3946wu)) {
            return false;
        }
        AbstractC3946wu abstractC3946wu = (AbstractC3946wu) obj;
        AbstractC3946wu.Cif cif = this.f13637do;
        if (cif != null ? cif.equals(abstractC3946wu.mo7034if()) : abstractC3946wu.mo7034if() == null) {
            AbstractC3946wu.Cdo cdo = this.f13636do;
            if (cdo == null) {
                if (abstractC3946wu.mo7033do() == null) {
                    return true;
                }
            } else if (cdo.equals(abstractC3946wu.mo7033do())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        AbstractC3946wu.Cif cif = this.f13637do;
        int hashCode = ((cif == null ? 0 : cif.hashCode()) ^ 1000003) * 1000003;
        AbstractC3946wu.Cdo cdo = this.f13636do;
        return (cdo != null ? cdo.hashCode() : 0) ^ hashCode;
    }

    @Override // defpackage.AbstractC3946wu
    /* renamed from: if, reason: not valid java name */
    public final AbstractC3946wu.Cif mo7034if() {
        return this.f13637do;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f13637do + ", mobileSubtype=" + this.f13636do + "}";
    }
}
