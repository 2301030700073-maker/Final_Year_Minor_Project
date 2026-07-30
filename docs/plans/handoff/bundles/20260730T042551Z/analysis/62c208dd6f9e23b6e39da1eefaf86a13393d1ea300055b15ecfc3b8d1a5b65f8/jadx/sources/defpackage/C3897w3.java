package defpackage;

import defpackage.AbstractC0533Ub;

/* renamed from: w3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3897w3 extends AbstractC0533Ub.Cdo.AbstractC0008do {

    /* renamed from: do, reason: not valid java name */
    public final String f16184do;

    /* renamed from: for, reason: not valid java name */
    public final String f16185for;

    /* renamed from: if, reason: not valid java name */
    public final String f16186if;

    public C3897w3(String str, String str2, String str3) {
        this.f16184do = str;
        this.f16186if = str2;
        this.f16185for = str3;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo.AbstractC0008do
    /* renamed from: do */
    public final String mo2448do() {
        return this.f16184do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Cdo.AbstractC0008do)) {
            return false;
        }
        AbstractC0533Ub.Cdo.AbstractC0008do abstractC0008do = (AbstractC0533Ub.Cdo.AbstractC0008do) obj;
        return this.f16184do.equals(abstractC0008do.mo2448do()) && this.f16186if.equals(abstractC0008do.mo2449for()) && this.f16185for.equals(abstractC0008do.mo2450if());
    }

    @Override // defpackage.AbstractC0533Ub.Cdo.AbstractC0008do
    /* renamed from: for */
    public final String mo2449for() {
        return this.f16186if;
    }

    public final int hashCode() {
        return ((((this.f16184do.hashCode() ^ 1000003) * 1000003) ^ this.f16186if.hashCode()) * 1000003) ^ this.f16185for.hashCode();
    }

    @Override // defpackage.AbstractC0533Ub.Cdo.AbstractC0008do
    /* renamed from: if */
    public final String mo2450if() {
        return this.f16185for;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BuildIdMappingForArch{arch=");
        sb.append(this.f16184do);
        sb.append(", libraryName=");
        sb.append(this.f16186if);
        sb.append(", buildId=");
        return Creturn.m7984try(sb, this.f16185for, "}");
    }
}
