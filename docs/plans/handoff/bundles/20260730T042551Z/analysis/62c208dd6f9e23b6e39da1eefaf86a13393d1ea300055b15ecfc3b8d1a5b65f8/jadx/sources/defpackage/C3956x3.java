package defpackage;

import defpackage.AbstractC0533Ub;

/* renamed from: x3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3956x3 extends AbstractC0533Ub.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final String f16514do;

    /* renamed from: if, reason: not valid java name */
    public final String f16515if;

    public C3956x3(String str, String str2) {
        this.f16514do = str;
        this.f16515if = str2;
    }

    @Override // defpackage.AbstractC0533Ub.Cfor
    /* renamed from: do */
    public final String mo2451do() {
        return this.f16514do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Cfor)) {
            return false;
        }
        AbstractC0533Ub.Cfor cfor = (AbstractC0533Ub.Cfor) obj;
        return this.f16514do.equals(cfor.mo2451do()) && this.f16515if.equals(cfor.mo2452if());
    }

    public final int hashCode() {
        return ((this.f16514do.hashCode() ^ 1000003) * 1000003) ^ this.f16515if.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Cfor
    /* renamed from: if */
    public final String mo2452if() {
        return this.f16515if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CustomAttribute{key=");
        sb.append(this.f16514do);
        sb.append(", value=");
        return Creturn.m7984try(sb, this.f16515if, "}");
    }
}
