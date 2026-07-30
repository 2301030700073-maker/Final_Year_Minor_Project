package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class J3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final long f1584do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1585do;

    /* renamed from: if, reason: not valid java name */
    public final String f1586if;

    public J3(String str, String str2, long j) {
        this.f1585do = str;
        this.f1586if = str2;
        this.f1584do = j;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor
    /* renamed from: do, reason: not valid java name */
    public final long mo1003do() {
        return this.f1584do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor cfor = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor) obj;
        return this.f1585do.equals(cfor.mo1004for()) && this.f1586if.equals(cfor.mo1005if()) && this.f1584do == cfor.mo1003do();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor
    /* renamed from: for, reason: not valid java name */
    public final String mo1004for() {
        return this.f1585do;
    }

    public final int hashCode() {
        int hashCode = (((this.f1585do.hashCode() ^ 1000003) * 1000003) ^ this.f1586if.hashCode()) * 1000003;
        long j = this.f1584do;
        return hashCode ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.Cfor
    /* renamed from: if, reason: not valid java name */
    public final String mo1005if() {
        return this.f1586if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Signal{name=");
        sb.append(this.f1585do);
        sb.append(", code=");
        sb.append(this.f1586if);
        sb.append(", address=");
        return C4122zt.m8818case(sb, this.f1584do, "}");
    }
}
