package defpackage;

import defpackage.AbstractC2674e8;

/* renamed from: q3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3544q3 extends AbstractC2674e8 {

    /* renamed from: do, reason: not valid java name */
    public final N0 f15032do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2674e8.Cdo f15033do;

    public C3544q3(AbstractC2674e8.Cdo cdo, N0 n0) {
        this.f15033do = cdo;
        this.f15032do = n0;
    }

    @Override // defpackage.AbstractC2674e8
    /* renamed from: do */
    public final N0 mo6514do() {
        return this.f15032do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2674e8)) {
            return false;
        }
        AbstractC2674e8 abstractC2674e8 = (AbstractC2674e8) obj;
        AbstractC2674e8.Cdo cdo = this.f15033do;
        if (cdo != null ? cdo.equals(abstractC2674e8.mo6515if()) : abstractC2674e8.mo6515if() == null) {
            N0 n0 = this.f15032do;
            if (n0 == null) {
                if (abstractC2674e8.mo6514do() == null) {
                    return true;
                }
            } else if (n0.equals(abstractC2674e8.mo6514do())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        AbstractC2674e8.Cdo cdo = this.f15033do;
        int hashCode = ((cdo == null ? 0 : cdo.hashCode()) ^ 1000003) * 1000003;
        N0 n0 = this.f15032do;
        return (n0 != null ? n0.hashCode() : 0) ^ hashCode;
    }

    @Override // defpackage.AbstractC2674e8
    /* renamed from: if */
    public final AbstractC2674e8.Cdo mo6515if() {
        return this.f15033do;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f15033do + ", androidClientInfo=" + this.f15032do + "}";
    }
}
