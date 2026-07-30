package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class B3 extends AbstractC0533Ub.Ctry.Cdo {

    /* renamed from: case, reason: not valid java name */
    public final String f191case;

    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cdo.AbstractC0009do f192do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f193do;

    /* renamed from: for, reason: not valid java name */
    public final String f194for;

    /* renamed from: if, reason: not valid java name */
    public final String f195if;

    /* renamed from: new, reason: not valid java name */
    public final String f196new;

    /* renamed from: try, reason: not valid java name */
    public final String f197try;

    public B3(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f193do = str;
        this.f195if = str2;
        this.f194for = str3;
        this.f196new = str4;
        this.f197try = str5;
        this.f191case = str6;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: case, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cdo.AbstractC0009do mo138case() {
        return this.f192do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: do, reason: not valid java name */
    public final String mo139do() {
        return this.f197try;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: else, reason: not valid java name */
    public final String mo140else() {
        return this.f195if;
    }

    public final boolean equals(Object obj) {
        String str;
        AbstractC0533Ub.Ctry.Cdo.AbstractC0009do abstractC0009do;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cdo)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cdo cdo = (AbstractC0533Ub.Ctry.Cdo) obj;
        if (this.f193do.equals(cdo.mo143new()) && this.f195if.equals(cdo.mo140else()) && ((str = this.f194for) != null ? str.equals(cdo.mo141for()) : cdo.mo141for() == null) && ((abstractC0009do = this.f192do) != null ? abstractC0009do.equals(cdo.mo138case()) : cdo.mo138case() == null) && ((str2 = this.f196new) != null ? str2.equals(cdo.mo144try()) : cdo.mo144try() == null) && ((str3 = this.f197try) != null ? str3.equals(cdo.mo139do()) : cdo.mo139do() == null)) {
            String str4 = this.f191case;
            if (str4 == null) {
                if (cdo.mo142if() == null) {
                    return true;
                }
            } else if (str4.equals(cdo.mo142if())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: for, reason: not valid java name */
    public final String mo141for() {
        return this.f194for;
    }

    public final int hashCode() {
        int hashCode = (((this.f193do.hashCode() ^ 1000003) * 1000003) ^ this.f195if.hashCode()) * 1000003;
        String str = this.f194for;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        AbstractC0533Ub.Ctry.Cdo.AbstractC0009do abstractC0009do = this.f192do;
        int hashCode3 = (hashCode2 ^ (abstractC0009do == null ? 0 : abstractC0009do.hashCode())) * 1000003;
        String str2 = this.f196new;
        int hashCode4 = (hashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f197try;
        int hashCode5 = (hashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f191case;
        return hashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: if, reason: not valid java name */
    public final String mo142if() {
        return this.f191case;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: new, reason: not valid java name */
    public final String mo143new() {
        return this.f193do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{identifier=");
        sb.append(this.f193do);
        sb.append(", version=");
        sb.append(this.f195if);
        sb.append(", displayVersion=");
        sb.append(this.f194for);
        sb.append(", organization=");
        sb.append(this.f192do);
        sb.append(", installationUuid=");
        sb.append(this.f196new);
        sb.append(", developmentPlatform=");
        sb.append(this.f197try);
        sb.append(", developmentPlatformVersion=");
        return Creturn.m7984try(sb, this.f191case, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cdo
    /* renamed from: try, reason: not valid java name */
    public final String mo144try() {
        return this.f196new;
    }
}
