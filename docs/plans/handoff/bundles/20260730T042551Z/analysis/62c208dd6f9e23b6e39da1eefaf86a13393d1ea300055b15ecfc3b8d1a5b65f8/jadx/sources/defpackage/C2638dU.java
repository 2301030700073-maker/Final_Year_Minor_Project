package defpackage;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.concurrent.ConcurrentHashMap;

/* renamed from: dU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2638dU extends AbstractC3863vS {

    /* renamed from: do, reason: not valid java name */
    public Activity f12493do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C2696eU f12494do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f12495do;

    /* renamed from: for, reason: not valid java name */
    public C2696eU f12496for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f12497for;

    /* renamed from: if, reason: not valid java name */
    public volatile C2696eU f12498if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Object f12499if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public volatile boolean f12500if;

    /* renamed from: new, reason: not valid java name */
    public volatile C2696eU f12501new;

    /* renamed from: try, reason: not valid java name */
    public C2696eU f12502try;

    public C2638dU(TS ts) {
        super(ts);
        this.f12499if = new Object();
        this.f12495do = new ConcurrentHashMap();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
    
        if (r7 != 0) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9  */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6455default(defpackage.C2696eU r10, defpackage.C2696eU r11, long r12, boolean r14, android.os.Bundle r15) {
        /*
            r9 = this;
            r9.mo1960catch()
            r0 = 0
            r1 = 1
            if (r11 == 0) goto L26
            long r2 = r10.f12680do
            long r4 = r11.f12680do
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L26
            java.lang.String r2 = r11.f12684if
            java.lang.String r3 = r10.f12684if
            boolean r2 = j$.util.Objects.equals(r2, r3)
            if (r2 == 0) goto L26
            java.lang.String r2 = r11.f12681do
            java.lang.String r3 = r10.f12681do
            boolean r2 = j$.util.Objects.equals(r2, r3)
            if (r2 != 0) goto L24
            goto L26
        L24:
            r2 = 0
            goto L27
        L26:
            r2 = 1
        L27:
            if (r14 == 0) goto L2e
            eU r14 = r9.f12496for
            if (r14 == 0) goto L2e
            r0 = 1
        L2e:
            if (r2 == 0) goto Lac
            android.os.Bundle r6 = new android.os.Bundle
            if (r15 == 0) goto L38
            r6.<init>(r15)
            goto L3b
        L38:
            r6.<init>()
        L3b:
            defpackage.C3395nV.a(r10, r6, r1)
            if (r11 == 0) goto L59
            java.lang.String r14 = r11.f12681do
            if (r14 == 0) goto L49
            java.lang.String r15 = "_pn"
            r6.putString(r15, r14)
        L49:
            java.lang.String r14 = r11.f12684if
            if (r14 == 0) goto L52
            java.lang.String r15 = "_pc"
            r6.putString(r15, r14)
        L52:
            java.lang.String r14 = "_pi"
            long r2 = r11.f12680do
            r6.putLong(r14, r2)
        L59:
            r14 = 0
            if (r0 == 0) goto L74
            LU r11 = r9.m8801while()
            PU r11 = r11.f1956do
            long r2 = r11.f2794if
            long r2 = r12 - r2
            r11.f2794if = r12
            int r11 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1))
            if (r11 <= 0) goto L74
            nV r11 = r9.m7571break()
            r11.m7587package(r6, r2)
        L74:
            ZO r11 = r9.m7572else()
            boolean r11 = r11.m3000finally()
            if (r11 != 0) goto L85
            java.lang.String r11 = "_mst"
            r2 = 1
            r6.putLong(r11, r2)
        L85:
            boolean r11 = r10.f12685if
            if (r11 == 0) goto L8c
            java.lang.String r11 = "app"
            goto L8e
        L8c:
            java.lang.String r11 = "auto"
        L8e:
            r4 = r11
            com.google.android.gms.common.util.Clock r11 = r9.mo2257new()
            long r2 = r11.currentTimeMillis()
            boolean r11 = r10.f12685if
            if (r11 == 0) goto La2
            long r7 = r10.f12683if
            int r11 = (r7 > r14 ? 1 : (r7 == r14 ? 0 : -1))
            if (r11 == 0) goto La2
            goto La3
        La2:
            r7 = r2
        La3:
            yT r3 = r9.m8798final()
            java.lang.String r5 = "_vs"
            r3.m8735extends(r4, r5, r6, r7)
        Lac:
            if (r0 == 0) goto Lb3
            eU r11 = r9.f12496for
            r9.m6456extends(r11, r1, r12)
        Lb3:
            r9.f12496for = r10
            boolean r11 = r10.f12685if
            if (r11 == 0) goto Lbb
            r9.f12502try = r10
        Lbb:
            kU r11 = r9.m8800throw()
            r11.mo1960catch()
            r11.m8474import()
            uV r12 = new uV
            r13 = 5
            r12.<init>(r11, r10, r13)
            r11.m7267static(r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2638dU.m6455default(eU, eU, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m6456extends(C2696eU c2696eU, boolean z, long j) {
        ((TS) ((C3393nT) this).f14527do).m2252const().m3128import(mo2257new().elapsedRealtime());
        if (!m8801while().f1956do.m1772do(j, c2696eU != null && c2696eU.f12682do, z) || c2696eU == null) {
            return;
        }
        c2696eU.f12682do = false;
    }

    /* renamed from: finally, reason: not valid java name */
    public final C2696eU m6457finally(Activity activity) {
        Preconditions.checkNotNull(activity);
        C2696eU c2696eU = (C2696eU) this.f12495do.get(Integer.valueOf(activity.hashCode()));
        if (c2696eU == null) {
            C2696eU c2696eU2 = new C2696eU(null, m6458return(activity.getClass()), m7571break().L());
            this.f12495do.put(Integer.valueOf(activity.hashCode()), c2696eU2);
            c2696eU = c2696eU2;
        }
        return this.f12501new != null ? this.f12501new : c2696eU;
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public */
    public final boolean mo1327public() {
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public final String m6458return(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        String str = split.length > 0 ? split[split.length - 1] : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        return str.length() > m7572else().m2999final(null, false) ? str.substring(0, m7572else().m2999final(null, false)) : str;
    }

    /* renamed from: static, reason: not valid java name */
    public final C2696eU m6459static(boolean z) {
        m8474import();
        mo1960catch();
        if (!z) {
            return this.f12496for;
        }
        C2696eU c2696eU = this.f12496for;
        return c2696eU != null ? c2696eU : this.f12502try;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m6460switch(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!m7572else().m3000finally() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f12495do.put(Integer.valueOf(activity.hashCode()), new C2696eU(bundle2.getString(FacebookRequestErrorClassification.KEY_NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m6461throws(Activity activity, C2696eU c2696eU, boolean z) {
        C2696eU c2696eU2;
        C2696eU c2696eU3 = this.f12494do == null ? this.f12498if : this.f12494do;
        if (c2696eU.f12684if == null) {
            c2696eU2 = new C2696eU(c2696eU.f12681do, activity != null ? m6458return(activity.getClass()) : null, c2696eU.f12680do, c2696eU.f12685if, c2696eU.f12683if);
        } else {
            c2696eU2 = c2696eU;
        }
        this.f12498if = this.f12494do;
        this.f12494do = c2696eU2;
        mo2253do().m1964public(new RunnableC2755fU(this, c2696eU2, c2696eU3, mo2257new().elapsedRealtime(), z));
    }
}
