package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class M0 {

    /* renamed from: do, reason: not valid java name */
    public final Hx f2071do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2072do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<Hx> f2073do;

    /* renamed from: for, reason: not valid java name */
    public final String f2074for;

    /* renamed from: if, reason: not valid java name */
    public final String f2075if;

    /* renamed from: new, reason: not valid java name */
    public final String f2076new;

    public M0(String str, String str2, String str3, String str4, Hx hx, ArrayList arrayList) {
        C0173Do.m401try(str2, "versionName");
        C0173Do.m401try(str3, "appBuildVersion");
        this.f2072do = str;
        this.f2075if = str2;
        this.f2074for = str3;
        this.f2076new = str4;
        this.f2071do = hx;
        this.f2073do = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof M0)) {
            return false;
        }
        M0 m0 = (M0) obj;
        return C0173Do.m394do(this.f2072do, m0.f2072do) && C0173Do.m394do(this.f2075if, m0.f2075if) && C0173Do.m394do(this.f2074for, m0.f2074for) && C0173Do.m394do(this.f2076new, m0.f2076new) && C0173Do.m394do(this.f2071do, m0.f2071do) && C0173Do.m394do(this.f2073do, m0.f2073do);
    }

    public final int hashCode() {
        return this.f2073do.hashCode() + ((this.f2071do.hashCode() + Cif.m6915for(this.f2076new, Cif.m6915for(this.f2074for, Cif.m6915for(this.f2075if, this.f2072do.hashCode() * 31, 31), 31), 31)) * 31);
    }

    public final String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f2072do + ", versionName=" + this.f2075if + ", appBuildVersion=" + this.f2074for + ", deviceManufacturer=" + this.f2076new + ", currentProcessDetails=" + this.f2071do + ", appProcessDetails=" + this.f2073do + ')';
    }
}
