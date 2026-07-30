package defpackage;

/* renamed from: q2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3543q2 {

    /* renamed from: do, reason: not valid java name */
    public final M0 f15026do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC0416Oq f15027do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15028do;

    /* renamed from: for, reason: not valid java name */
    public final String f15029for;

    /* renamed from: if, reason: not valid java name */
    public final String f15030if;

    /* renamed from: new, reason: not valid java name */
    public final String f15031new;

    public C3543q2(String str, String str2, String str3, M0 m0) {
        EnumC0416Oq enumC0416Oq = EnumC0416Oq.LOG_ENVIRONMENT_PROD;
        this.f15028do = str;
        this.f15030if = str2;
        this.f15029for = "2.0.6";
        this.f15031new = str3;
        this.f15027do = enumC0416Oq;
        this.f15026do = m0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3543q2)) {
            return false;
        }
        C3543q2 c3543q2 = (C3543q2) obj;
        return C0173Do.m394do(this.f15028do, c3543q2.f15028do) && C0173Do.m394do(this.f15030if, c3543q2.f15030if) && C0173Do.m394do(this.f15029for, c3543q2.f15029for) && C0173Do.m394do(this.f15031new, c3543q2.f15031new) && this.f15027do == c3543q2.f15027do && C0173Do.m394do(this.f15026do, c3543q2.f15026do);
    }

    public final int hashCode() {
        return this.f15026do.hashCode() + ((this.f15027do.hashCode() + Cif.m6915for(this.f15031new, Cif.m6915for(this.f15029for, Cif.m6915for(this.f15030if, this.f15028do.hashCode() * 31, 31), 31), 31)) * 31);
    }

    public final String toString() {
        return "ApplicationInfo(appId=" + this.f15028do + ", deviceModel=" + this.f15030if + ", sessionSdkVersion=" + this.f15029for + ", osVersion=" + this.f15031new + ", logEnvironment=" + this.f15027do + ", androidAppInfo=" + this.f15026do + ')';
    }
}
