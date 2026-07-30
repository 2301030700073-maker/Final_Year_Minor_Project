package com.joeykrim.rootcheck.gpiab;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Cthis;
import androidx.lifecycle.Ctry;
import androidx.lifecycle.LiveData;
import com.google.android.gms.internal.play_billing.zze;
import defpackage.Ay;
import defpackage.C0419Ot;
import defpackage.C0420Ou;
import defpackage.C0766bi;
import defpackage.C0830cn;
import defpackage.C2811gR;
import defpackage.C3428o5;
import defpackage.C3604r5;
import defpackage.C3663s5;
import defpackage.C3967xE;
import defpackage.C4009xy;
import defpackage.C4026yE;
import defpackage.Cpublic;
import defpackage.D;
import defpackage.InterfaceC2655dq;
import defpackage.InterfaceC3487p5;
import defpackage.InterfaceC4085zE;
import defpackage.O2;
import defpackage.O4;
import defpackage.RunnableC0771bn;
import defpackage.RunnableC3546q5;
import defpackage.VJ;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class BillingDataSource implements InterfaceC2655dq, Ay, InterfaceC3487p5, InterfaceC4085zE {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile BillingDataSource f12295do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f12297do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0419Ot<Boolean> f12298do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f12300do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<String> f12301do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3428o5 f12302do;

    /* renamed from: if, reason: not valid java name */
    public long f12303if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final List<String> f12306if;

    /* renamed from: do, reason: not valid java name */
    public static final Handler f12294do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f12296do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f12299do = new HashMap();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashMap f12304if = new HashMap();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashSet f12305if = new HashSet();

    /* renamed from: com.joeykrim.rootcheck.gpiab.BillingDataSource$do, reason: invalid class name */
    public class Cdo extends C0419Ot<C3967xE> {
        public Cdo() {
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: try */
        public final void mo4240try() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            BillingDataSource billingDataSource = BillingDataSource.this;
            if (elapsedRealtime - billingDataSource.f12303if > 14400000) {
                billingDataSource.f12303if = SystemClock.elapsedRealtime();
                Handler handler = BillingDataSource.f12294do;
                billingDataSource.m6390const();
            }
        }
    }

    /* renamed from: com.joeykrim.rootcheck.gpiab.BillingDataSource$for, reason: invalid class name */
    public enum Cfor {
        SKU_STATE_UNPURCHASED,
        /* JADX INFO: Fake field, exist only in values array */
        SKU_STATE_PENDING,
        /* JADX INFO: Fake field, exist only in values array */
        SKU_STATE_PURCHASED,
        SKU_STATE_PURCHASED_AND_ACKNOWLEDGED
    }

    /* renamed from: com.joeykrim.rootcheck.gpiab.BillingDataSource$if, reason: invalid class name */
    public class Cif implements D {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C4009xy f12312do;

        public Cif(C4009xy c4009xy) {
            this.f12312do = c4009xy;
        }

        @Override // defpackage.D
        /* renamed from: if */
        public final void mo324if(com.android.billingclient.api.Cdo cdo) {
            if (cdo.f9106do == 0) {
                Iterator<String> it = this.f12312do.m8686for().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    Cfor cfor = Cfor.SKU_STATE_PURCHASED_AND_ACKNOWLEDGED;
                    Handler handler = BillingDataSource.f12294do;
                    BillingDataSource.this.m6391final(next, cfor);
                }
            }
        }
    }

    public BillingDataSource(Application application, String[] strArr, String[] strArr2) {
        C0419Ot<Boolean> c0419Ot = new C0419Ot<>();
        this.f12298do = c0419Ot;
        this.f12297do = 1000L;
        this.f12303if = -14400000L;
        List<String> arrayList = strArr == null ? new ArrayList<>() : Arrays.asList(strArr);
        this.f12301do = arrayList;
        List<String> arrayList2 = strArr2 == null ? new ArrayList<>() : Arrays.asList(strArr2);
        this.f12306if = arrayList2;
        this.f12300do = new HashSet();
        O4 o4 = new O4();
        if (application == null) {
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
        boolean z = false;
        try {
            z = application.getPackageManager().getApplicationInfo(application.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
        } catch (Exception e) {
            zze.zzm("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
        }
        C3428o5 c2811gR = z ? new C2811gR(o4, application, this) : new C3428o5(o4, application, this);
        this.f12302do = c2811gR;
        c2811gR.mo6743this(this);
        m6388catch(arrayList);
        m6388catch(arrayList2);
        c0419Ot.mo1685goto(Boolean.FALSE);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m6388catch(List<String> list) {
        for (String str : list) {
            C0419Ot c0419Ot = new C0419Ot();
            Cdo cdo = new Cdo();
            this.f12299do.put(str, c0419Ot);
            this.f12304if.put(str, cdo);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b4 A[SYNTHETIC] */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6389class(java.util.List<defpackage.C4009xy> r19, java.util.List<java.lang.String> r20) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.joeykrim.rootcheck.gpiab.BillingDataSource.m6389class(java.util.List, java.util.List):void");
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6390const() {
        C3428o5 c3428o5 = this.f12302do;
        List<String> list = this.f12301do;
        if (list != null && !list.isEmpty()) {
            C4026yE.Cdo cdo = new C4026yE.Cdo();
            cdo.f16723do = "inapp";
            cdo.f16724do = new ArrayList(list);
            c3428o5.mo6737goto(cdo.m8706do(), this);
        }
        List<String> list2 = this.f12306if;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        C4026yE.Cdo cdo2 = new C4026yE.Cdo();
        cdo2.f16723do = "subs";
        cdo2.f16724do = new ArrayList(list2);
        c3428o5.mo6737goto(cdo2.m8706do(), this);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m6391final(String str, Cfor cfor) {
        C0419Ot c0419Ot = (C0419Ot) this.f12299do.get(str);
        if (c0419Ot == null) {
            return;
        }
        c0419Ot.m1686this(cfor);
    }

    @Override // defpackage.InterfaceC3487p5
    /* renamed from: for */
    public final void mo5223for() {
        f12296do = false;
        f12294do.postDelayed(new RunnableC3546q5(this), this.f12297do);
        this.f12297do = Math.min(this.f12297do * 2, 900000L);
    }

    @Override // defpackage.InterfaceC3487p5
    /* renamed from: goto */
    public final void mo5224goto(com.android.billingclient.api.Cdo cdo) {
        int i = cdo.f9106do;
        String[] strArr = O2.f2491for;
        if (i != 0) {
            f12294do.postDelayed(new RunnableC3546q5(this), this.f12297do);
            this.f12297do = Math.min(this.f12297do * 2, 900000L);
            C0830cn.m4943final(VJ.m2588this(strArr[0]), "Error-" + i);
            return;
        }
        this.f12297do = 1000L;
        f12296do = true;
        m6390const();
        C3604r5 c3604r5 = new C3604r5(this);
        C3428o5 c3428o5 = this.f12302do;
        c3428o5.m7664else("inapp", c3604r5);
        c3428o5.m7664else("subs", new C3663s5(this));
        C0830cn.m4943final(VJ.m2588this(strArr[0]), "Success-" + i);
    }

    @Override // defpackage.InterfaceC4085zE
    /* renamed from: new */
    public final void mo5225new(com.android.billingclient.api.Cdo cdo, List<C3967xE> list) {
        int i = cdo.f9106do;
        if (i == 0 && list != null && !list.isEmpty()) {
            for (C3967xE c3967xE : list) {
                C0419Ot c0419Ot = (C0419Ot) this.f12304if.get(c3967xE.f16533do.optString("productId"));
                if (c0419Ot != null) {
                    c0419Ot.m1686this(c3967xE);
                }
            }
        }
        if (i == 0) {
            this.f12303if = SystemClock.elapsedRealtime();
        } else {
            this.f12303if = -14400000L;
        }
    }

    @Cthis(Ctry.Cdo.ON_RESUME)
    public void resume() {
        Object obj = ((LiveData) this.f12298do).f7075if;
        if (obj == LiveData.f7066new) {
            obj = null;
        }
        Boolean bool = (Boolean) obj;
        if (f12296do) {
            if (bool == null || !bool.booleanValue()) {
                C3604r5 c3604r5 = new C3604r5(this);
                C3428o5 c3428o5 = this.f12302do;
                c3428o5.m7664else("inapp", c3604r5);
                c3428o5.m7664else("subs", new C3663s5(this));
            }
        }
    }

    @Override // defpackage.Ay
    /* renamed from: try */
    public final void mo133try(com.android.billingclient.api.Cdo cdo, List<C4009xy> list) {
        int i = cdo.f9106do;
        if (i != 0) {
            if (i == 1) {
                AppCompatActivity appCompatActivity = C0420Ou.f2680do;
                if (appCompatActivity != null) {
                    VJ.m2574instanceof(appCompatActivity, "Canceled purchase.");
                }
            } else if (i != 5) {
                if (i != 7) {
                    AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
                    if (appCompatActivity2 != null) {
                        VJ.m2574instanceof(appCompatActivity2, "Google Play encountered an error. Please try again.");
                    }
                } else if (list != null && !list.isEmpty()) {
                    Iterator<C4009xy> it = list.iterator();
                    while (it.hasNext()) {
                        Iterator<String> it2 = it.next().m8686for().iterator();
                        while (it2.hasNext()) {
                            String next = it2.next();
                            try {
                                if (C0420Ou.f2680do != null) {
                                    new Thread(new RunnableC0771bn(next)).start();
                                }
                            } catch (Exception e) {
                                C0766bi.m4854do().m4855for(e);
                            }
                        }
                    }
                }
            }
        } else if (list != null) {
            m6389class(list, null);
            return;
        }
        int i2 = cdo.f9106do;
        String m2588this = VJ.m2588this(O2.f2491for[3]);
        StringBuilder m7821else = Cpublic.m7821else("E: ", i2, ", ");
        m7821else.append(list != null ? list.toString() : "null");
        C0830cn.m4943final(m2588this, m7821else.toString());
        this.f12298do.m1686this(Boolean.FALSE);
    }
}
