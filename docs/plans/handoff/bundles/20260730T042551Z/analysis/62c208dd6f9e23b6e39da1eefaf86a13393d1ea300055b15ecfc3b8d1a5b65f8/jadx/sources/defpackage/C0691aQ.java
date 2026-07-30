package defpackage;

import android.os.Bundle;
import defpackage.AbstractC3884vr;
import java.util.Iterator;

/* renamed from: aQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0691aQ extends C4098zR {

    /* renamed from: do, reason: not valid java name */
    public long f4947do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final F2 f4948do;

    /* renamed from: if, reason: not valid java name */
    public final F2 f4949if;

    public C0691aQ(TS ts) {
        super(ts);
        this.f4949if = new F2();
        this.f4948do = new F2();
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3128import(long j) {
        C2696eU m6459static = m8799super().m6459static(false);
        F2 f2 = this.f4948do;
        Iterator it = ((AbstractC3884vr.Cfor) f2.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            m3131return(str, j - ((Long) f2.getOrDefault(str, null)).longValue(), m6459static);
        }
        if (!f2.isEmpty()) {
            m3129native(j - this.f4947do, m6459static);
        }
        m3132static(j);
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3129native(long j, C2696eU c2696eU) {
        if (c2696eU == null) {
            mo2249case().f13723this.m7369if("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13723this.m7368for("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C3395nV.a(c2696eU, bundle, true);
            m8798final().f("am", "_xa", bundle);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3130public(String str, long j) {
        if (str == null || str.length() == 0) {
            mo2249case().f13717do.m7369if("Ad unit id must be a non-empty string");
        } else {
            mo2253do().m1964public(new KO(this, str, j, 0));
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3131return(String str, long j, C2696eU c2696eU) {
        if (c2696eU == null) {
            mo2249case().f13723this.m7369if("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13723this.m7368for("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C3395nV.a(c2696eU, bundle, true);
            m8798final().f("am", "_xu", bundle);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m3132static(long j) {
        F2 f2 = this.f4948do;
        Iterator it = ((AbstractC3884vr.Cfor) f2.keySet()).iterator();
        while (it.hasNext()) {
            f2.put((String) it.next(), Long.valueOf(j));
        }
        if (f2.isEmpty()) {
            return;
        }
        this.f4947do = j;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m3133switch(long j, String str) {
        if (str == null || str.length() == 0) {
            mo2249case().f13717do.m7369if("Ad unit id must be a non-empty string");
        } else {
            mo2253do().m1964public(new KO(this, str, j, 1));
        }
    }
}
