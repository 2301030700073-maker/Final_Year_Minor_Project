package com.joeykrim.rootcheck;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ShareActionProvider;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.Wearable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import defpackage.AI;
import defpackage.AsyncTaskC3561qK;
import defpackage.AsyncTaskC3619rK;
import defpackage.C0126Bl;
import defpackage.C0170Dl;
import defpackage.C0301Jk;
import defpackage.C0398Nu;
import defpackage.C0420Ou;
import defpackage.C0445Qb;
import defpackage.C0583Wh;
import defpackage.C0706ai;
import defpackage.C0766bi;
import defpackage.C0830cn;
import defpackage.C2790g6;
import defpackage.C3210kN;
import defpackage.C3289ll;
import defpackage.C3299lv;
import defpackage.C3366n2;
import defpackage.C3384nK;
import defpackage.C3421nz;
import defpackage.C3443oK;
import defpackage.C3580qh;
import defpackage.C3772tx;
import defpackage.C3850vF;
import defpackage.C3875vi;
import defpackage.C3948ww;
import defpackage.C4012y0;
import defpackage.C4071z0;
import defpackage.C4111zi;
import defpackage.Creturn;
import defpackage.DialogFragmentC0494Sg;
import defpackage.DialogFragmentC4048ye;
import defpackage.EnumC2648di;
import defpackage.FK;
import defpackage.JA;
import defpackage.JF;
import defpackage.KD;
import defpackage.LD;
import defpackage.MA;
import defpackage.NL;
import defpackage.O2;
import defpackage.O4;
import defpackage.OL;
import defpackage.PL;
import defpackage.Q0;
import defpackage.QJ;
import defpackage.RunnableC0443Pv;
import defpackage.Uw;
import defpackage.VJ;
import defpackage.WJ;
import defpackage.ZF;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes3.dex */
public class MainActivity extends AppCompatActivity {

    /* renamed from: break, reason: not valid java name */
    public static String f12230break = null;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public static boolean f12231break = false;

    /* renamed from: case, reason: not valid java name */
    public static int f12232case = 0;

    /* renamed from: catch, reason: not valid java name */
    public static String f12233catch = "";

    /* renamed from: do, reason: not valid java name */
    public static long f12234do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static BillingDataSource f12235do = null;

    /* renamed from: else, reason: not valid java name */
    public static boolean f12236else = false;

    /* renamed from: for, reason: not valid java name */
    public static long f12237for = 0;

    /* renamed from: goto, reason: not valid java name */
    public static boolean f12238goto = false;

    /* renamed from: if, reason: not valid java name */
    public static long f12239if = 0;

    /* renamed from: new, reason: not valid java name */
    public static long f12240new = -1;

    /* renamed from: this, reason: not valid java name */
    public static boolean f12241this = false;

    /* renamed from: try, reason: not valid java name */
    public static int f12242try;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f12243case = false;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f12244new;

    /* renamed from: com.joeykrim.rootcheck.MainActivity$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                PL.f2773do = new GoogleApiClient.Builder(MainActivity.this).addConnectionCallbacks(new OL()).addOnConnectionFailedListener(new NL()).addApi(Wearable.API).build();
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.joeykrim.rootcheck.MainActivity$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif(MainActivity mainActivity) {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    @JF
    public void AmazonInsightsBusUpdate(C4071z0 c4071z0) {
        runOnUiThread(new Cif(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b8 A[Catch: Exception -> 0x00ce, TryCatch #0 {Exception -> 0x00ce, blocks: (B:4:0x000c, B:6:0x0012, B:8:0x001c, B:13:0x0022, B:15:0x002c, B:17:0x0030, B:21:0x0036, B:23:0x0044, B:25:0x004e, B:30:0x0059, B:32:0x00b8, B:34:0x00bf, B:37:0x00c8, B:42:0x0060, B:44:0x0066, B:45:0x006d, B:47:0x0073, B:55:0x0083, B:57:0x008a, B:59:0x0090, B:63:0x0097, B:65:0x00a1, B:66:0x00a8, B:68:0x00ae), top: B:3:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0083 A[Catch: Exception -> 0x00ce, TryCatch #0 {Exception -> 0x00ce, blocks: (B:4:0x000c, B:6:0x0012, B:8:0x001c, B:13:0x0022, B:15:0x002c, B:17:0x0030, B:21:0x0036, B:23:0x0044, B:25:0x004e, B:30:0x0059, B:32:0x00b8, B:34:0x00bf, B:37:0x00c8, B:42:0x0060, B:44:0x0066, B:45:0x006d, B:47:0x0073, B:55:0x0083, B:57:0x008a, B:59:0x0090, B:63:0x0097, B:65:0x00a1, B:66:0x00a8, B:68:0x00ae), top: B:3:0x000c }] */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6383import(android.app.Activity r13) {
        /*
            r12 = this;
            java.lang.String r0 = "RESULTS"
            java.lang.String r1 = "RANKINGS"
            java.lang.String r2 = "VERIFY ROOT"
            java.lang.String r3 = "ROOT BASICS"
            java.lang.String r4 = "UPGRADES"
            if (r13 == 0) goto Lce
            android.content.Intent r5 = r13.getIntent()     // Catch: java.lang.Exception -> Lce
            if (r5 == 0) goto Lce
            android.content.Intent r5 = r13.getIntent()     // Catch: java.lang.Exception -> Lce
            android.os.Bundle r5 = r5.getExtras()     // Catch: java.lang.Exception -> Lce
            if (r5 == 0) goto Lce
            boolean r5 = r12.f12243case     // Catch: java.lang.Exception -> Lce
            if (r5 == 0) goto L22
            goto Lce
        L22:
            android.content.Intent r5 = r13.getIntent()     // Catch: java.lang.Exception -> Lce
            android.os.Bundle r5 = r5.getExtras()     // Catch: java.lang.Exception -> Lce
            if (r5 == 0) goto Lce
            androidx.viewpager.widget.ViewPager r6 = defpackage.C0420Ou.f2682do     // Catch: java.lang.Exception -> Lce
            if (r6 == 0) goto Lce
            Ou$for r6 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            if (r6 != 0) goto L36
            goto Lce
        L36:
            java.lang.String r6 = "viewPagerTitle"
            java.lang.String r6 = r5.getString(r6)     // Catch: java.lang.Exception -> Lce
            java.lang.String r7 = "analyticsName"
            java.lang.String r5 = r5.getString(r7)     // Catch: java.lang.Exception -> Lce
            if (r6 == 0) goto Lce
            boolean r7 = r4.equalsIgnoreCase(r6)     // Catch: java.lang.Exception -> Lce
            r8 = -1
            r9 = 0
            r10 = 6
            r11 = 1
            if (r7 == 0) goto L60
            int r7 = defpackage.C0420Ou.f2678do     // Catch: java.lang.Exception -> Lce
            if (r7 == r10) goto L56
            if (r7 == r11) goto L56
            r7 = 1
            goto L57
        L56:
            r7 = 0
        L57:
            if (r7 == 0) goto L60
            Ou$for r13 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            int r13 = r13.m1702switch(r4)     // Catch: java.lang.Exception -> Lce
            goto Lb6
        L60:
            boolean r4 = r3.equalsIgnoreCase(r6)     // Catch: java.lang.Exception -> Lce
            if (r4 == 0) goto L6d
            Ou$for r13 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            int r13 = r13.m1702switch(r3)     // Catch: java.lang.Exception -> Lce
            goto Lb6
        L6d:
            boolean r3 = r2.equalsIgnoreCase(r6)     // Catch: java.lang.Exception -> Lce
            if (r3 == 0) goto L8a
            int r3 = defpackage.C0420Ou.f2678do     // Catch: java.lang.Exception -> Lce
            r4 = 7
            if (r3 == r4) goto L80
            r4 = 4
            if (r3 == r4) goto L80
            if (r3 != r10) goto L7e
            goto L80
        L7e:
            r3 = 0
            goto L81
        L80:
            r3 = 1
        L81:
            if (r3 == 0) goto L8a
            Ou$for r13 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            int r13 = r13.m1702switch(r2)     // Catch: java.lang.Exception -> Lce
            goto Lb6
        L8a:
            boolean r2 = r1.equalsIgnoreCase(r6)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto La8
            int r2 = defpackage.C0420Ou.f2678do     // Catch: java.lang.Exception -> Lce
            if (r2 == r10) goto L95
            r9 = 1
        L95:
            if (r9 == 0) goto La8
            java.lang.String r13 = defpackage.C3772tx.m8352try(r13)     // Catch: java.lang.Exception -> Lce
            boolean r13 = r13.isEmpty()     // Catch: java.lang.Exception -> Lce
            if (r13 != 0) goto La8
            Ou$for r13 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            int r13 = r13.m1702switch(r1)     // Catch: java.lang.Exception -> Lce
            goto Lb6
        La8:
            boolean r13 = r0.equalsIgnoreCase(r6)     // Catch: java.lang.Exception -> Lce
            if (r13 == 0) goto Lb5
            Ou$for r13 = defpackage.C0420Ou.f2679do     // Catch: java.lang.Exception -> Lce
            int r13 = r13.m1702switch(r0)     // Catch: java.lang.Exception -> Lce
            goto Lb6
        Lb5:
            r13 = -1
        Lb6:
            if (r13 == r8) goto Lbd
            androidx.viewpager.widget.ViewPager r0 = defpackage.C0420Ou.f2682do     // Catch: java.lang.Exception -> Lce
            r0.m4694private(r13, r11)     // Catch: java.lang.Exception -> Lce
        Lbd:
            if (r5 == 0) goto Lc6
            boolean r13 = r5.isEmpty()     // Catch: java.lang.Exception -> Lce
            if (r13 != 0) goto Lc6
            goto Lc8
        Lc6:
            java.lang.String r5 = "DefaultPromo"
        Lc8:
            defpackage.C4012y0.m8694new(r5)     // Catch: java.lang.Exception -> Lce
            r12.f12243case = r11     // Catch: java.lang.Exception -> Lce
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.joeykrim.rootcheck.MainActivity.m6383import(android.app.Activity):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0076  */
    /* renamed from: native, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6384native(android.view.Menu r7) {
        /*
            r6 = this;
            android.view.MenuInflater r0 = r6.getMenuInflater()
            r1 = 2131558402(0x7f0d0002, float:1.8742119E38)
            r0.inflate(r1, r7)
            r0 = 2131231223(0x7f0801f7, float:1.807852E38)
            android.view.MenuItem r7 = r7.findItem(r0)
            if (r7 != 0) goto L15
            goto L79
        L15:
            androidx.viewpager.widget.ViewPager r0 = defpackage.C0420Ou.f2682do
            r1 = 5
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L2b
            int r4 = r0.f8038new
            if (r4 != r3) goto L2b
            int r4 = defpackage.C0420Ou.f2678do
            if (r4 == r3) goto L29
            r5 = 4
            if (r4 == r5) goto L29
            if (r4 != r1) goto L2b
        L29:
            r4 = 1
            goto L2c
        L2b:
            r4 = 0
        L2c:
            if (r4 != 0) goto L40
            if (r0 == 0) goto L3b
            int r0 = defpackage.C0420Ou.f2678do
            if (r0 == r3) goto L39
            r4 = 3
            if (r0 == r4) goto L39
            if (r0 != r1) goto L3b
        L39:
            r0 = 1
            goto L3c
        L3b:
            r0 = 0
        L3c:
            if (r0 != 0) goto L40
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 == 0) goto L76
            java.lang.String r0 = defpackage.LD.f1935do
            boolean r0 = com.joeykrim.rootcheck.MainActivity.f12238goto
            if (r0 != 0) goto L4a
            goto L72
        L4a:
            oK r0 = defpackage.C3443oK.m7703new(r6)
            if (r0 == 0) goto L53
            android.widget.TextView r0 = r0.f14734do
            goto L54
        L53:
            r0 = 0
        L54:
            if (r0 == 0) goto L72
            java.lang.CharSequence r1 = r0.getText()
            if (r1 == 0) goto L69
            java.lang.CharSequence r0 = r0.getText()
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            goto L6b
        L69:
            java.lang.String r0 = ""
        L6b:
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L72
            r2 = 1
        L72:
            r7.setEnabled(r2)
            goto L79
        L76:
            r7.setEnabled(r3)
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.joeykrim.rootcheck.MainActivity.m6384native(android.view.Menu):void");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        ViewPager viewPager;
        AppCompatActivity appCompatActivity;
        ViewPager viewPager2;
        if (i == 153) {
            try {
                AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
                if (appCompatActivity2 != null && (viewPager = C0420Ou.f2682do) != null) {
                    C3210kN.m7249else(appCompatActivity2, viewPager.f8038new);
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                VJ.m2574instanceof(this, getString(R.string.errorTryAgain));
                super.onActivityResult(i, i2, intent);
            }
        }
        if (i == 154 && (appCompatActivity = C0420Ou.f2680do) != null && (viewPager2 = C0420Ou.f2682do) != null) {
            C3210kN.m7249else(appCompatActivity, viewPager2.f8038new);
        }
        try {
            throw null;
        } catch (Exception unused) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            ViewPager viewPager = C0420Ou.f2682do;
            if (viewPager != null && viewPager.mo4678catch() != null && "RANKINGS".equalsIgnoreCase(C0420Ou.f2682do.mo4678catch().mo1700else(C0420Ou.f2682do.f8038new).toString())) {
                C3289ll.m7380switch(C0420Ou.f2680do);
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        try {
            if (C0301Jk.f1676do != null) {
                C0301Jk.m1048case();
                if (!C0830cn.f8635do) {
                    C0170Dl.m378case(this);
                }
            }
            C0420Ou.m1696if(this, null, 0);
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String[] strArr;
        String[] strArr2;
        ViewPager viewPager;
        AppCompatActivity appCompatActivity;
        Q0 q0 = C3875vi.f16110do;
        Trace trace = new Trace("main_activity_oncreate_trace", AI.f54do, new QJ(17), C3366n2.m7530do(), GaugeManager.getInstance());
        trace.start();
        try {
            Class.forName("android.os.AsyncTask");
        } catch (Throwable th) {
            C0766bi.m4854do().m4855for(th);
        }
        C3772tx.m8344return(this);
        SharedPreferences m8343public = C3772tx.m8343public();
        if (m8343public != null) {
            C3772tx.f15824if = m8343public.getBoolean("disclaimerAccepted", false);
        }
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putLong("run_counter", C3772tx.m8339native() + 1);
            C3772tx.m8330do().apply();
        }
        if (C3772tx.m8331else() == 0 && C3772tx.m8330do() != null) {
            C3772tx.m8330do().putLong("first_run_time", new Date().getTime());
            C3772tx.m8330do().apply();
        }
        new C3772tx.Cif().execute(new Void[0]);
        if (C3772tx.m8343public() != null) {
            C3772tx.m8343public().getBoolean("exit_feedback_survey_displayed", false);
        }
        int i = DialogFragmentC0494Sg.f3533for;
        if (C3772tx.m8343public() != null) {
            C3772tx.m8343public().getBoolean("exit_feedback_survey_responded", false);
        }
        int i2 = 1;
        if (!C3772tx.m8323break()) {
            C4012y0.m8693if(getApplicationContext(), true);
        }
        VJ.m2580protected(this);
        Handler handler = C0301Jk.f1675do;
        f12237for = System.currentTimeMillis();
        if (C0301Jk.f1677do != null) {
            C0301Jk.f1677do = null;
        }
        try {
            C2790g6.f13071do.m6641if(this);
        } catch (Exception unused) {
        }
        try {
            C0583Wh.f4395do = FirebaseAnalytics.getInstance(this);
        } catch (Exception unused2) {
        }
        try {
            C0583Wh.m2746do();
            C0583Wh.m2748if(this);
        } catch (Exception unused3) {
        }
        TypedValue.applyDimension(1, 85.0f, getResources().getDisplayMetrics());
        try {
            O4.f2532do = ((C3421nz) C0706ai.m3146for().m3149if(C3421nz.class)).m7627for("firebase");
            new C4111zi();
            O4.f2532do.f129do.m6144do(3600L).mo600import(EnumC2648di.f12524do, new C3580qh(5)).mo599if(new C3850vF());
        } catch (Exception unused4) {
        }
        Application application = getApplication();
        try {
            ArrayList arrayList = new ArrayList();
            String[] strArr3 = O2.f2483do;
            arrayList.add(VJ.m2557break(strArr3[2]));
            arrayList.add(VJ.m2557break(strArr3[3]));
            arrayList.add(VJ.m2557break(strArr3[4]));
            arrayList.add(VJ.m2557break(strArr3[5]));
            arrayList.add(VJ.m2557break(strArr3[6]));
            arrayList.add(VJ.m2557break(strArr3[7]));
            arrayList.add(VJ.m2557break(strArr3[8]));
            arrayList.add(VJ.m2557break(strArr3[9]));
            strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            strArr = null;
        }
        try {
            ArrayList arrayList2 = new ArrayList();
            String[] strArr4 = O2.f2496if;
            arrayList2.add(VJ.m2559catch(strArr4[0]));
            arrayList2.add(VJ.m2559catch(strArr4[1]));
            arrayList2.add(VJ.m2559catch(strArr4[2]));
            arrayList2.add(VJ.m2559catch(strArr4[3]));
            arrayList2.add(VJ.m2559catch(strArr4[4]));
            arrayList2.add(VJ.m2559catch(strArr4[5]));
            arrayList2.add(VJ.m2559catch(strArr4[6]));
            arrayList2.add(VJ.m2559catch(strArr4[7]));
            arrayList2.add(VJ.m2559catch(strArr4[8]));
            arrayList2.add(VJ.m2559catch(strArr4[9]));
            arrayList2.add(VJ.m2559catch(strArr4[10]));
            arrayList2.add(VJ.m2559catch(strArr4[11]));
            strArr2 = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
            strArr2 = null;
        }
        if (BillingDataSource.f12295do == null) {
            synchronized (BillingDataSource.class) {
                if (BillingDataSource.f12295do == null) {
                    BillingDataSource.f12295do = new BillingDataSource(application, strArr, strArr2);
                }
            }
        }
        BillingDataSource billingDataSource = BillingDataSource.f12295do;
        f12235do = billingDataSource;
        if (billingDataSource != null) {
            ((ComponentActivity) this).f5100if.mo4259do(billingDataSource);
        }
        try {
            invalidateOptionsMenu();
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        }
        try {
            setContentView(R.layout.newmain);
            C0420Ou.f2680do = this;
            if (C3772tx.m8345static()) {
                setTheme(R.style.custom_Theme_Dark);
            } else {
                setTheme(R.style.custom_Theme);
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.linearLayoutOverall);
            int b = VJ.b(this);
            if (linearLayout != null && b != -1) {
                linearLayout.setBackgroundColor(b);
            }
            C0420Ou.f2682do = (ViewPager) findViewById(R.id.viewPager);
            C0420Ou.m1695goto(this);
            C0420Ou.f2682do.mo4681continue(new C0398Nu(this));
            C0420Ou.m1698this(this);
            C0420Ou.f2681do = (Toolbar) findViewById(R.id.toolbar);
            int a = VJ.a(this);
            if (a != -1) {
                C0420Ou.f2681do.setBackgroundColor(a);
            }
            Toolbar toolbar = C0420Ou.f2681do;
            if (toolbar != null) {
                m3230super().mo3264throws(toolbar);
            }
            ViewPager viewPager2 = C0420Ou.f2682do;
            viewPager2.getClass();
            if (5 != viewPager2.f8023else) {
                viewPager2.f8023else = 5;
                viewPager2.m4697static();
            }
        } catch (RuntimeException e4) {
            C0766bi m4854do = C0766bi.m4854do();
            m4854do.m4856if("NewView.onCreate setContentView failed with ".concat(e4.getClass().getName()));
            String name = e4.getClass().getName();
            C0445Qb c0445Qb = m4854do.f8440do;
            c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, "new_view_set_content_view_exception_class", name, i2));
            String bool = Boolean.toString(e4 instanceof Resources.NotFoundException);
            C0445Qb c0445Qb2 = m4854do.f8440do;
            c0445Qb2.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb2, "new_view_set_content_view_is_not_found", bool, i2));
            m4854do.m4855for(e4);
            try {
                Toast.makeText(this, getString(R.string.newViewLoadFailed), 1).show();
            } catch (RuntimeException e5) {
                C0766bi.m4854do().m4855for(e5);
            }
            finish();
        }
        if (!isFinishing()) {
            C0301Jk.m1048case();
            if (!C0830cn.f8635do) {
                new Handler(Looper.getMainLooper()).post(new WJ(this));
            }
            if (C0830cn.f8640new && (appCompatActivity = C0420Ou.f2680do) != null && appCompatActivity.m3231throw() != null) {
                C0420Ou.f2680do.m3231throw().mo3216final(C0420Ou.f2680do.getString(R.string.mainTitleRCP));
            }
        }
        if (isFinishing()) {
            trace.stop();
            return;
        }
        Bundle m2584strictfp = VJ.m2584strictfp("onCreate");
        if (C3772tx.m8339native() == 1 && C3772tx.m8330do() != null) {
            C3772tx.m8330do().putLong("whats_new_last_version", f12234do);
            C3772tx.m8330do().apply();
        }
        if (!C3772tx.f15824if) {
            try {
                DialogFragmentC4048ye dialogFragmentC4048ye = new DialogFragmentC4048ye();
                dialogFragmentC4048ye.setCancelable(false);
                if (!isFinishing()) {
                    dialogFragmentC4048ye.show(getFragmentManager(), VJ.m2570goto(DialogFragmentC4048ye.f16803do[0]));
                }
                C3210kN.m7251goto(this, VJ.m2570goto(DialogFragmentC4048ye.f16803do[0]));
            } catch (Exception e6) {
                C0766bi.m4854do().m4855for(e6);
            }
        } else if (C3772tx.m8339native() == 1) {
            startActivityForResult(new Intent(this, (Class<?>) WelcomeScreens.class), 153);
        } else if (VJ.e()) {
            VJ.m2587synchronized(this);
        } else if (!VJ.m2594while() || m2584strictfp == null) {
            AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
            if (appCompatActivity2 != null && (viewPager = C0420Ou.f2682do) != null) {
                C3210kN.m7249else(appCompatActivity2, viewPager.f8038new);
            }
        } else {
            VJ.m2591transient(this, m2584strictfp);
        }
        C3299lv.m7400do(this);
        new Handler(Looper.getMainLooper()).post(new Cdo());
        super.onCreate(bundle);
        try {
            Uw.m2485new(false, this);
        } catch (Exception unused5) {
        }
        trace.stop();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        m6384native(menu);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        try {
            AsyncTaskC3619rK asyncTaskC3619rK = C0420Ou.f2685do;
            if (asyncTaskC3619rK != null) {
                asyncTaskC3619rK.cancel(true);
                C0420Ou.f2685do = null;
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        try {
            C0301Jk.m1048case();
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
        try {
            AsyncTaskC3561qK asyncTaskC3561qK = com.joeykrim.rootcheckp.MainActivity.f12318do;
            if (asyncTaskC3561qK != null) {
                asyncTaskC3561qK.cancel(true);
            }
        } catch (Exception unused) {
        }
        try {
            C2790g6.f13071do.m6642new(this);
        } catch (Exception unused2) {
        }
        C0420Ou.f2680do = null;
        C0420Ou.f2682do = null;
        C0420Ou.f2683do = null;
        C0420Ou.f2681do = null;
        C0420Ou.f2679do = null;
        C0420Ou.f2685do = null;
        C0420Ou.f2684do = null;
        FK.f1012do = null;
        FK.f1027if = null;
        FK.f1021for = null;
        FK.f1010do = null;
        FK.f1013do = null;
        FK.f1014do = null;
        FK.f1028if = null;
        FK.f1033new = null;
        FK.f1043try = null;
        FK.f1015do = null;
        FK.f1005case = null;
        FK.f1016else = null;
        FK.f1022for = null;
        FK.f1025if = null;
        FK.f1023goto = null;
        FK.f1011do = null;
        FK.f1039this = null;
        FK.f1004break = null;
        FK.f1034new = null;
        FK.f1019for = null;
        FK.f1007catch = null;
        FK.f1026if = null;
        FK.f1008class = null;
        FK.f1009const = null;
        FK.f1044try = null;
        FK.f1031new = null;
        FK.f1018final = null;
        FK.f1020for = null;
        FK.f1038super = null;
        FK.f1041throw = null;
        FK.f1006case = null;
        FK.f1045while = null;
        FK.f1029import = null;
        FK.f1017else = null;
        FK.f1042try = null;
        FK.f1030native = null;
        FK.f1032new = null;
        FK.f1024goto = null;
        FK.f1035public = null;
        FK.f1036return = null;
        FK.f1037static = null;
        FK.f1040this = null;
        C3384nK.f14497do = null;
        C3384nK.f14496do = null;
        C3384nK.f14498do = null;
        C3384nK.f14503if = null;
        C3384nK.f14500for = null;
        C3384nK.f14504if = null;
        C3384nK.f14505new = null;
        C3384nK.f14501for = null;
        C3384nK.f14508try = null;
        C3384nK.f14506new = null;
        C3384nK.f14494case = null;
        C3384nK.f14499else = null;
        C3384nK.f14509try = null;
        C3384nK.f14502goto = null;
        C3384nK.f14507this = null;
        C3384nK.f14495case = null;
        JA ja = MA.f2131do;
        if (ja != null) {
            ja.f1600do.m7024for(ja);
        }
        MA.f2134do = null;
        MA.f2133do = null;
        MA.f2131do = null;
        MA.f2132do = null;
        C3289ll c3289ll = C0126Bl.f270do;
        if (c3289ll != null) {
            c3289ll.f14185do.m7024for(c3289ll);
        }
        C0126Bl.f269do = null;
        C0126Bl.f277if = null;
        C0126Bl.f268do = null;
        C0126Bl.f263do = null;
        C0126Bl.f262do = null;
        C0126Bl.f265do = null;
        C0126Bl.f271do = null;
        C0126Bl.f266do = null;
        C0126Bl.f274if = null;
        C0126Bl.f278if = null;
        C0126Bl.f275if = null;
        C0126Bl.f264do = null;
        C0126Bl.f261do = null;
        C0126Bl.f272for = null;
        C0126Bl.f276if = null;
        C0126Bl.f260do = null;
        C0126Bl.f273if = null;
        C0126Bl.f270do = null;
        C4012y0.f16658do = null;
        C4012y0.f16659do = false;
        try {
            super.onDestroy();
        } catch (Exception unused3) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    @TargetApi(5)
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            setIntent(intent);
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String m7982new;
        int i;
        String sb;
        int i2;
        int itemId = menuItem.getItemId();
        int i3 = 1;
        if (itemId == R.id.menuSettings) {
            C3210kN.m7255try("Settings");
            try {
                startActivityForResult(new Intent(this, (Class<?>) Settings.class), 154);
            } catch (ActivityNotFoundException e) {
                C0766bi.m4854do().m4855for(e);
            }
            return true;
        }
        if (itemId != R.id.menu_item_share) {
            return super.onOptionsItemSelected(menuItem);
        }
        C3210kN.m7255try("ShareResults");
        ShareActionProvider shareActionProvider = (ShareActionProvider) (menuItem instanceof ZF ? ((ZF) menuItem).mo538for() : null);
        ViewPager viewPager = C0420Ou.f2682do;
        boolean z = viewPager != null && viewPager.f8038new == 1 && ((i2 = C0420Ou.f2678do) == 1 || i2 == 4 || i2 == 5);
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (z) {
            String str2 = KD.f1777do;
            if (com.joeykrim.rootcheckp.MainActivity.f12319else) {
                TextView textView = C3384nK.f14497do;
                TextView textView2 = C3384nK.f14503if;
                TextView textView3 = C3384nK.f14500for;
                TextView textView4 = C3384nK.f14494case;
                TextView textView5 = C3384nK.f14499else;
                TextView textView6 = C3384nK.f14502goto;
                TextView textView7 = C3384nK.f14507this;
                if (textView == null || textView2 == null || textView3 == null || textView4 == null || textView5 == null || textView6 == null || textView7 == null) {
                    KD.m1128for(this, "share_busybox_results_pro", "ShareResults.abcbtnShareBusyBoxResults busyboxVerified but VerifyBusyBoxView TextView statics were null", textView, textView2, textView3, textView4, textView5, textView6, textView7);
                    VJ.m2574instanceof(this, getString(R.string.shareBusyBoxWarningPrompt));
                } else {
                    String m1130new = KD.m1130new(textView);
                    String str3 = C3948ww.f16497if;
                    if (str3 == null) {
                        str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    String str4 = C3948ww.f16495for;
                    if (str4 != null) {
                        str = str4;
                    }
                    boolean contains = m1130new.contains("not");
                    String str5 = KD.f1777do;
                    if (contains) {
                        sb = m1130new + str5 + str5 + KD.m1130new(textView2) + str5 + KD.m1130new(textView3);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(m1130new);
                        sb2.append(str5);
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView2));
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView3));
                        sb2.append(str5);
                        sb2.append(str5);
                        sb2.append(str3);
                        Creturn.m7980goto(sb2, str5, str5, str, str5);
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView4));
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView5));
                        sb2.append(str5);
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView6));
                        sb2.append(str5);
                        sb2.append(KD.m1130new(textView7));
                        sb = sb2.toString();
                    }
                    Intent m1129if = KD.m1129if(KD.m1127do(this, sb));
                    if (shareActionProvider != null) {
                        shareActionProvider.setShareIntent(m1129if);
                    }
                    try {
                        startActivity(Intent.createChooser(m1129if, getString(R.string.sharePromptRCP)));
                    } catch (Exception e2) {
                        C0766bi.m4854do().m4855for(e2);
                        e2.toString();
                        VJ.m2574instanceof(this, getString(R.string.noAppToShareWith));
                    }
                }
            } else {
                VJ.m2574instanceof(this, getString(R.string.shareBusyBoxWarningPrompt));
            }
        } else {
            if (viewPager != null && ((i = C0420Ou.f2678do) == 1 || i == 3 || i == 5)) {
                String str6 = KD.f1777do;
                if (com.joeykrim.rootcheckp.MainActivity.f12316case) {
                    AsyncTaskC3561qK asyncTaskC3561qK = com.joeykrim.rootcheckp.MainActivity.f12318do;
                    if (asyncTaskC3561qK == null || asyncTaskC3561qK.getStatus() != AsyncTask.Status.FINISHED) {
                        VJ.m2574instanceof(this, getString(R.string.shareRootWaitingPrompt));
                    } else {
                        TextView textView8 = FK.f1012do;
                        TextView textView9 = FK.f1033new;
                        TextView textView10 = FK.f1043try;
                        TextView textView11 = FK.f1005case;
                        TextView textView12 = FK.f1016else;
                        TextView textView13 = FK.f1039this;
                        TextView textView14 = FK.f1004break;
                        TextView textView15 = FK.f1008class;
                        TextView textView16 = FK.f1009const;
                        TextView textView17 = FK.f1038super;
                        TextView textView18 = FK.f1041throw;
                        TextView textView19 = FK.f1036return;
                        TextView textView20 = FK.f1037static;
                        if (textView8 == null || textView9 == null || textView10 == null || textView11 == null || textView12 == null || textView13 == null || textView14 == null || textView15 == null || textView16 == null || textView17 == null || textView18 == null || textView19 == null || textView20 == null) {
                            KD.m1128for(this, "share_root_results_pro", "ShareResults.arcbtnShareRootResults rootVerified but VerifyRootView TextView statics were null", textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20);
                            VJ.m2574instanceof(this, getString(R.string.shareRootWarningPrompt));
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(getString(R.string.shareOverallStatus));
                            sb3.append(" ");
                            sb3.append(KD.m1130new(textView8));
                            String str7 = KD.f1777do;
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView9));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView10));
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView11));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView12));
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView13));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView14));
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView15));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView16));
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView17));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView18));
                            sb3.append(str7);
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView19));
                            sb3.append(str7);
                            sb3.append(KD.m1130new(textView20));
                            Intent m1129if2 = KD.m1129if(KD.m1127do(this, sb3.toString()));
                            if (shareActionProvider != null) {
                                shareActionProvider.setShareIntent(m1129if2);
                            }
                            try {
                                startActivity(Intent.createChooser(m1129if2, getString(R.string.sharePromptRCP)));
                            } catch (Exception e3) {
                                C0766bi.m4854do().m4855for(e3);
                                e3.toString();
                                VJ.m2574instanceof(this, getString(R.string.noAppToShareWith));
                            }
                        }
                    }
                } else {
                    VJ.m2574instanceof(this, getString(R.string.shareRootWarningPrompt));
                }
            } else if (f12238goto) {
                String str8 = LD.f1935do;
                C3443oK m7703new = C3443oK.m7703new(this);
                TextView textView21 = m7703new != null ? m7703new.f14734do : null;
                if (textView21 == null) {
                    try {
                        C0766bi m4854do = C0766bi.m4854do();
                        C0445Qb c0445Qb = m4854do.f8440do;
                        m4854do.m4856if("ShareResults.shareRootResults rootVerified but txtRootResults was null");
                        c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, "share_root_results.root_verified", Boolean.toString(f12238goto), i3));
                        c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, "share_root_results.fragment_mode", Integer.toString(C0420Ou.f2678do), i3));
                        String str9 = "share_root_results.view_pager_current_item";
                        ViewPager viewPager2 = C0420Ou.f2682do;
                        c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, str9, Integer.toString(viewPager2 != null ? viewPager2.f8038new : -1), i3));
                        c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, "share_root_results.root_status_details_length", Integer.toString(f12233catch.length()), i3));
                        c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, "share_root_results.activity", getClass().getSimpleName(), i3));
                        m4854do.m4855for(new IllegalStateException("ShareResults.shareRootResults rootVerified but txtRootResults was null"));
                    } catch (Throwable unused) {
                    }
                    VJ.m2574instanceof(this, getString(R.string.shareRootResultsUnavailable));
                } else {
                    if (textView21.getText() != null) {
                        str = textView21.getText().toString().trim();
                    }
                    if (str.isEmpty()) {
                        VJ.m2574instanceof(this, getString(R.string.shareRootResultsUnavailable));
                    } else if (!isFinishing()) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str);
                        String str10 = LD.f1935do;
                        sb4.append(str10);
                        String sb5 = sb4.toString();
                        try {
                            String str11 = Build.MODEL;
                            String str12 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                            if (str11 == null) {
                                str11 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                            }
                            String str13 = Build.VERSION.RELEASE;
                            if (str13 != null) {
                                str12 = str13;
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append(sb5);
                            sb6.append(str10);
                            sb6.append(VJ.m2586switch(this) ? getString(R.string.emailTagLineAmazon, f12230break, str11, str12) : getString(R.string.emailTagLine, f12230break, str11, str12));
                            m7982new = sb6.toString();
                        } catch (IndexOutOfBoundsException unused2) {
                            m7982new = Creturn.m7982new(sb5, str10, "Results provided by Root Checker Basic from joeykrim in Google Play - http://goo.gl/6QTF1D");
                        }
                        if (!f12233catch.isEmpty()) {
                            m7982new = m7982new + str10 + str10 + "Device diagnostics: " + f12233catch;
                        }
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setType("text/plain");
                        intent.putExtra("android.intent.extra.TEXT", m7982new);
                        if (shareActionProvider != null) {
                            shareActionProvider.setShareIntent(intent);
                        }
                        try {
                            startActivity(Intent.createChooser(intent, getString(R.string.sharePrompt)));
                        } catch (Exception e4) {
                            C0766bi.m4854do().m4855for(e4);
                            VJ.m2574instanceof(this, getString(R.string.noAppToShareWith));
                        }
                    }
                }
            } else {
                String str14 = LD.f1935do;
                VJ.m2574instanceof(this, getString(R.string.shareRootResultsUnavailable));
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception unused) {
        }
        try {
            AdView adView = C0301Jk.f1676do;
            if (adView != null) {
                adView.pause();
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        try {
            C4012y0.m8691do();
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        m6384native(menu);
        return true;
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        try {
            Class.forName("android.support.design.widget.AppBarLayout$Behavior$SavedState");
            super.onRestoreInstanceState(bundle);
        } catch (ClassNotFoundException e) {
            C0766bi.m4854do().m4855for(e);
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:11:0x0021
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        /*
            r3 = this;
            boolean r0 = defpackage.C3772tx.m8345static()     // Catch: java.lang.Exception -> L21
            if (r0 != 0) goto L14
            int r0 = r3.f12244new     // Catch: java.lang.Exception -> L21
            r1 = 2131887226(0x7f12047a, float:1.9409053E38)
            if (r0 == r1) goto L21
            r3.setTheme(r1)     // Catch: java.lang.Exception -> L21
            defpackage.C0420Ou.m1689catch(r3)     // Catch: java.lang.Exception -> L21
            goto L21
        L14:
            int r0 = r3.f12244new     // Catch: java.lang.Exception -> L21
            r1 = 2131887227(0x7f12047b, float:1.9409055E38)
            if (r0 == r1) goto L21
            r3.setTheme(r1)     // Catch: java.lang.Exception -> L21
            defpackage.C0420Ou.m1689catch(r3)     // Catch: java.lang.Exception -> L21
        L21:
            com.google.android.gms.ads.AdView r0 = defpackage.C0301Jk.f1676do     // Catch: java.lang.Exception -> L29
            if (r0 == 0) goto L31
            r0.resume()     // Catch: java.lang.Exception -> L29
            goto L31
        L29:
            r0 = move-exception
            bi r1 = defpackage.C0766bi.m4854do()
            r1.m4855for(r0)
        L31:
            boolean r0 = defpackage.C0301Jk.m1050do()     // Catch: java.lang.Exception -> L43
            if (r0 == 0) goto L4b
            com.google.android.gms.ads.interstitial.InterstitialAd r0 = defpackage.C0301Jk.f1677do     // Catch: java.lang.Exception -> L43
            if (r0 != 0) goto L4b
            androidx.appcompat.app.AppCompatActivity r0 = defpackage.C0420Ou.f2680do     // Catch: java.lang.Exception -> L43
            if (r0 == 0) goto L4b
            defpackage.C0301Jk.m1052for(r0)     // Catch: java.lang.Exception -> L43
            goto L4b
        L43:
            r0 = move-exception
            bi r1 = defpackage.C0766bi.m4854do()
            r1.m4855for(r0)
        L4b:
            boolean r0 = defpackage.C3772tx.m8323break()     // Catch: java.lang.Exception -> L64
            if (r0 != 0) goto L64
            com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager r0 = defpackage.C4012y0.f16658do     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto L64
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient r0 = r0.f8801do     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto L64
            monitor-enter(r0)     // Catch: java.lang.Exception -> L64
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState r1 = r0.f8947do     // Catch: java.lang.Throwable -> L61
            r1.mo5110new()     // Catch: java.lang.Throwable -> L61
            monitor-exit(r0)     // Catch: java.lang.Exception -> L64
            goto L64
        L61:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Exception -> L64
            throw r1     // Catch: java.lang.Exception -> L64
        L64:
            defpackage.C3756th.m8305this()     // Catch: java.lang.Throwable -> L77
            boolean r0 = defpackage.C3756th.m8305this()     // Catch: java.lang.Throwable -> L77
            if (r0 == 0) goto L77
            android.content.Context r0 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L77
            com.facebook.appevents.AppEventsLogger r0 = com.facebook.appevents.AppEventsLogger.newLogger(r0)     // Catch: java.lang.Throwable -> L77
            defpackage.C3645ro.f15317do = r0     // Catch: java.lang.Throwable -> L77
        L77:
            r3.m6383import(r3)     // Catch: java.lang.Exception -> L7a
        L7a:
            com.google.firebase.analytics.FirebaseAnalytics r0 = defpackage.C0583Wh.f4395do     // Catch: java.lang.Exception -> L82
            java.lang.String r1 = "app_open"
            r2 = 0
            r0.m6073do(r1, r2)     // Catch: java.lang.Exception -> L82
        L82:
            super.onResume()     // Catch: java.lang.Exception -> L85
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.joeykrim.rootcheck.MainActivity.onResume():void");
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putString("WORKAROUND_FOR_BUG_19917_KEY", "WORKAROUND_FOR_BUG_19917_VALUE");
        try {
            super.onSaveInstanceState(bundle);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        try {
            super.onStart();
        } catch (Exception unused) {
        }
        try {
            PL.f2773do.connect();
        } catch (Exception | VerifyError unused2) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        try {
            super.onStop();
        } catch (Exception unused) {
        }
        try {
            GoogleApiClient googleApiClient = PL.f2773do;
            if (googleApiClient == null || !googleApiClient.isConnected()) {
                return;
            }
            PL.f2773do.disconnect();
        } catch (Exception unused2) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        this.f12244new = i;
    }
}
