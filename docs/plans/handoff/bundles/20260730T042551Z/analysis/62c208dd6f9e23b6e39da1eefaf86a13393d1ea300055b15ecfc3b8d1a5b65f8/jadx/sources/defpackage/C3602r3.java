package defpackage;

import defpackage.Z8;

/* renamed from: r3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3602r3 extends Z8 {

    /* renamed from: do, reason: not valid java name */
    public final Z8.Cdo f15201do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2764fh f15202do;

    public C3602r3(AbstractC2764fh abstractC2764fh, Z8.Cdo cdo) {
        this.f15202do = abstractC2764fh;
        this.f15201do = cdo;
    }

    @Override // defpackage.Z8
    /* renamed from: do */
    public final AbstractC2764fh mo2977do() {
        return this.f15202do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Z8)) {
            return false;
        }
        Z8 z8 = (Z8) obj;
        AbstractC2764fh abstractC2764fh = this.f15202do;
        if (abstractC2764fh != null ? abstractC2764fh.equals(z8.mo2977do()) : z8.mo2977do() == null) {
            Z8.Cdo cdo = this.f15201do;
            if (cdo == null) {
                if (z8.mo2978if() == null) {
                    return true;
                }
            } else if (cdo.equals(z8.mo2978if())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        AbstractC2764fh abstractC2764fh = this.f15202do;
        int hashCode = ((abstractC2764fh == null ? 0 : abstractC2764fh.hashCode()) ^ 1000003) * 1000003;
        Z8.Cdo cdo = this.f15201do;
        return (cdo != null ? cdo.hashCode() : 0) ^ hashCode;
    }

    @Override // defpackage.Z8
    /* renamed from: if */
    public final Z8.Cdo mo2978if() {
        return this.f15201do;
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.f15202do + ", productIdOrigin=" + this.f15201do + "}";
    }
}
