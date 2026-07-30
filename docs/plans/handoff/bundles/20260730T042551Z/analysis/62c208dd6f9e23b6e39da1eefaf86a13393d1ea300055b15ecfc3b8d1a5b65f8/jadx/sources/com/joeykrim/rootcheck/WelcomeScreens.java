package com.joeykrim.rootcheck;

import android.R;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.TypefaceSpan;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.heinrichreimersoftware.materialintro.app.IntroActivity;
import defpackage.AI;
import defpackage.C0420Ou;
import defpackage.C0766bi;
import defpackage.C2857hE;
import defpackage.C3210kN;
import defpackage.C3366n2;
import defpackage.C3875vi;
import defpackage.C4012y0;
import defpackage.Q0;
import defpackage.QJ;
import defpackage.RunnableC0283Io;
import defpackage.VJ;

/* loaded from: classes3.dex */
public class WelcomeScreens extends IntroActivity {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ int f12289break = 0;

    /* renamed from: this, reason: not valid java name */
    public int f12291this = -1;

    /* renamed from: goto, reason: not valid java name */
    public boolean f12290goto = false;

    /* renamed from: com.joeykrim.rootcheck.WelcomeScreens$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WelcomeScreens welcomeScreens = WelcomeScreens.this;
            welcomeScreens.f12290goto = true;
            C4012y0.m8692for("WS-GS");
            int m6352extends = welcomeScreens.m6352extends();
            int i = ((ViewPager) ((IntroActivity) welcomeScreens).f12150do).f8038new;
            while (i < m6352extends && welcomeScreens.m6360public(i, true)) {
                i++;
            }
            welcomeScreens.m6349abstract(i);
        }
    }

    /* renamed from: com.joeykrim.rootcheck.WelcomeScreens$if, reason: invalid class name */
    public class Cif implements ViewPager.Cgoto {
        public Cif() {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do */
        public final void mo4671do(float f, int i, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for */
        public final void mo4672for(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: new */
        public final void mo1557new(int i) {
            int i2;
            AppCompatActivity appCompatActivity = C0420Ou.f2680do;
            if (appCompatActivity == null) {
                return;
            }
            WelcomeScreens welcomeScreens = WelcomeScreens.this;
            if (welcomeScreens.f12290goto || (i2 = welcomeScreens.f12291this) == i) {
                return;
            }
            if (i == 0) {
                C3210kN.m7251goto(appCompatActivity, "WS-VERIFY ROOT");
            } else if (i == 1 && i2 != 2) {
                C3210kN.m7251goto(appCompatActivity, "WS-ROOT BASICS");
            } else if (i == 2) {
                C3210kN.m7251goto(appCompatActivity, "WS-RANKINGS");
            }
            welcomeScreens.f12291this = i;
        }
    }

    @Override // com.heinrichreimersoftware.materialintro.app.IntroActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        C4012y0.m8692for("WS-BB");
        try {
            super.onBackPressed();
        } catch (Exception unused) {
        }
    }

    @Override // com.heinrichreimersoftware.materialintro.app.IntroActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Q0 q0 = C3875vi.f16110do;
        Trace trace = new Trace("welcome_screen_oncreate_trace", AI.f54do, new QJ(17), C3366n2.m7530do(), GaugeManager.getInstance());
        trace.start();
        try {
            super.onCreate(bundle);
            ((IntroActivity) this).f12137case = false;
            ((IntroActivity) this).f12145do = AnimationUtils.loadInterpolator(this, R.interpolator.fast_out_slow_in);
            C2857hE.Cdo cdo = new C2857hE.Cdo();
            cdo.f13279do = getString(R.string.verifyRootAccess);
            cdo.f13282if = getString(R.string.welcomeVRDescription);
            cdo.f13280for = R.drawable.rcb_5_9_7_n6p_vr_success_framed_blanked_ads;
            cdo.f13278do = R.color.colorPrimary;
            cdo.f13281if = R.color.colorPrimaryDark;
            cdo.f13283new = R.layout.welcomescreen;
            m6354import(cdo.m6783do());
            C2857hE.Cdo cdo2 = new C2857hE.Cdo();
            cdo2.f13279do = getString(R.string.welcomeRBTitle);
            cdo2.f13282if = getString(R.string.welcomeRBDescriptionv2);
            cdo2.f13280for = R.drawable.rcb_5_9_8_n6p_rb_framed_blanked_ads;
            cdo2.f13278do = R.color.colorPrimary;
            cdo2.f13281if = R.color.colorPrimaryDark;
            cdo2.f13283new = R.layout.welcomescreen;
            m6354import(cdo2.m6783do());
            C2857hE.Cdo cdo3 = new C2857hE.Cdo();
            cdo3.f13279do = getString(R.string.welcomeGRDTitle);
            Object[] objArr = new Object[1];
            objArr[0] = VJ.m2581public().isEmpty() ? "this device" : VJ.m2581public();
            cdo3.f13282if = getString(R.string.welcomeGRDDescription, objArr);
            cdo3.f13280for = R.drawable.rcb_5_9_8_n6p_global_individual_2_framed;
            cdo3.f13278do = R.color.colorPrimary;
            cdo3.f13281if = R.color.colorPrimaryDark;
            cdo3.f13283new = R.layout.welcomescreen;
            m6354import(cdo3.m6783do());
            ((IntroActivity) this).f12158if.setVisibility(4);
            ((IntroActivity) this).f12146do.setVisibility(4);
            ((IntroActivity) this).f12155else = true;
            m6350continue();
            TypefaceSpan typefaceSpan = new TypefaceSpan("sans-serif-medium");
            SpannableString valueOf = SpannableString.valueOf(getString(R.string.welcomeBtnCTAGetStarted));
            valueOf.setSpan(typefaceSpan, 0, valueOf.length(), 33);
            ((IntroActivity) this).f12152do = valueOf;
            m6350continue();
            ((IntroActivity) this).f12144do = new Cdo();
            m6350continue();
            ((IntroActivity) this).f12150do.mo4690if(new Cif());
            ((IntroActivity) this).f12157if = 500L;
            super.f12156goto = -1;
            ((IntroActivity) this).f12139do = 6000L;
            RunnableC0283Io runnableC0283Io = new RunnableC0283Io(this);
            ((IntroActivity) this).f12141do = runnableC0283Io;
            ((IntroActivity) this).f12143do.postDelayed(runnableC0283Io, 6000L);
            C3210kN.m7251goto(C0420Ou.f2680do, "WS-VERIFY ROOT");
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        trace.stop();
    }
}
