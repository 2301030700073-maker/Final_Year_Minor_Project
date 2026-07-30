package defpackage;

import defpackage.AbstractC3261lF;

/* renamed from: v4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3839v4 extends AbstractC3261lF.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final int f16004do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2644de f16005do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16006do;

    /* renamed from: for, reason: not valid java name */
    public final String f16007for;

    /* renamed from: if, reason: not valid java name */
    public final String f16008if;

    /* renamed from: new, reason: not valid java name */
    public final String f16009new;

    public C3839v4(String str, String str2, String str3, String str4, int i, C2644de c2644de) {
        if (str == null) {
            throw new NullPointerException("Null appIdentifier");
        }
        this.f16006do = str;
        if (str2 == null) {
            throw new NullPointerException("Null versionCode");
        }
        this.f16008if = str2;
        if (str3 == null) {
            throw new NullPointerException("Null versionName");
        }
        this.f16007for = str3;
        if (str4 == null) {
            throw new NullPointerException("Null installUuid");
        }
        this.f16009new = str4;
        this.f16004do = i;
        if (c2644de == null) {
            throw new NullPointerException("Null developmentPlatformProvider");
        }
        this.f16005do = c2644de;
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: case */
    public final String mo7341case() {
        return this.f16007for;
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: do */
    public final String mo7342do() {
        return this.f16006do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3261lF.Cdo)) {
            return false;
        }
        AbstractC3261lF.Cdo cdo = (AbstractC3261lF.Cdo) obj;
        return this.f16006do.equals(cdo.mo7342do()) && this.f16008if.equals(cdo.mo7346try()) && this.f16007for.equals(cdo.mo7341case()) && this.f16009new.equals(cdo.mo7345new()) && this.f16004do == cdo.mo7344if() && this.f16005do.equals(cdo.mo7343for());
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: for */
    public final C2644de mo7343for() {
        return this.f16005do;
    }

    public final int hashCode() {
        return ((((((((((this.f16006do.hashCode() ^ 1000003) * 1000003) ^ this.f16008if.hashCode()) * 1000003) ^ this.f16007for.hashCode()) * 1000003) ^ this.f16009new.hashCode()) * 1000003) ^ this.f16004do) * 1000003) ^ this.f16005do.hashCode();
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: if */
    public final int mo7344if() {
        return this.f16004do;
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: new */
    public final String mo7345new() {
        return this.f16009new;
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.f16006do + ", versionCode=" + this.f16008if + ", versionName=" + this.f16007for + ", installUuid=" + this.f16009new + ", deliveryMechanism=" + this.f16004do + ", developmentPlatformProvider=" + this.f16005do + "}";
    }

    @Override // defpackage.AbstractC3261lF.Cdo
    /* renamed from: try */
    public final String mo7346try() {
        return this.f16008if;
    }
}
