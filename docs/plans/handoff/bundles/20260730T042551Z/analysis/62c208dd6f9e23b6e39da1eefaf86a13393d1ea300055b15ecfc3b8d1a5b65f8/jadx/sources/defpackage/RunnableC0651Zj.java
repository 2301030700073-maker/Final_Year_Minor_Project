package defpackage;

import android.animation.AnimatorSet;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.emoji2.text.Celse;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.material.search.Cfor;
import com.google.android.material.search.Ctry;
import com.google.android.material.search.SearchView;
import com.google.firebase.messaging.Cfor;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.C3717t0;
import java.io.IOException;
import java.util.concurrent.Executor;

/* renamed from: Zj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0651Zj implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4894do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4895for;

    public /* synthetic */ RunnableC0651Zj(Object obj, int i) {
        this.f4895for = i;
        this.f4894do = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00fe, code lost:
    
        if (r3 == null) goto L24;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m3064do() {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.RunnableC0651Zj.m3064do():void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3717t0.Cif cif;
        String str;
        XV m1319new;
        int i;
        switch (this.f4895for) {
            case 1:
                ((MH) this.f4894do).m1405for(false);
                return;
            case 2:
                ((Celse.Cif) this.f4894do).m4098for();
                return;
            case 3:
                EditText editText = ((SearchView) this.f4894do).f11285do;
                if (editText.requestFocus()) {
                    editText.sendAccessibilityEvent(8);
                }
                ((InputMethodManager) C0466Ra.getSystemService(editText.getContext(), InputMethodManager.class)).showSoftInput(editText, 1);
                return;
            case 4:
                Ctry ctry = (Ctry) this.f4894do;
                ctry.f11329do.setTranslationY(r1.getHeight());
                AnimatorSet m5873goto = ctry.m5873goto(true);
                m5873goto.addListener(new Cfor(ctry));
                m5873goto.start();
                return;
            case 5:
                ((C0792c8) this.f4894do).m4884public(true);
                return;
            case 6:
                C3168ji c3168ji = (C3168ji) this.f4894do;
                Object obj = C3168ji.f13747if;
                c3168ji.m7160new(false);
                return;
            case 7:
                FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f4894do;
                final Context context = firebaseMessaging.f11896do;
                C3773ty.m8354do(context);
                final boolean m6089goto = firebaseMessaging.m6089goto();
                if (PlatformVersion.isAtLeastQ()) {
                    SharedPreferences m8491do = C3891vy.m8491do(context);
                    if (!(m8491do.contains("proxy_retention") && m8491do.getBoolean("proxy_retention", false) == m6089goto)) {
                        TA ta = firebaseMessaging.f11892do.f410do;
                        if (ta.f3607do.m2939do() >= 241100000) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("proxy_retention", m6089goto);
                            VV m2648do = VV.m2648do(ta.f3608do);
                            synchronized (m2648do) {
                                i = m2648do.f4135do;
                                m2648do.f4135do = i + 1;
                            }
                            m1319new = m2648do.m2649for(new DV(i, 4, bundle));
                        } else {
                            m1319new = LG.m1319new(new IOException("SERVICE_NOT_AVAILABLE"));
                        }
                        m1319new.mo590case(new Executor() { // from class: ls
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new InterfaceC0619Xv() { // from class: uy
                            @Override // defpackage.InterfaceC0619Xv
                            /* renamed from: if */
                            public final void mo356if(Object obj2) {
                                SharedPreferences.Editor edit = C3891vy.m8491do(context).edit();
                                edit.putBoolean("proxy_retention", m6089goto);
                                edit.apply();
                            }
                        });
                    }
                }
                if (firebaseMessaging.m6089goto()) {
                    firebaseMessaging.m6092try();
                    return;
                }
                return;
            case 8:
                Cfor.Cdo cdo = (Cfor.Cdo) this.f4894do;
                cdo.f11923do.getAction();
                cdo.f11922do.m722new(null);
                return;
            case 9:
                m3064do();
                return;
            case 10:
                C3128j0.f13619if.remove((String) this.f4894do);
                return;
            default:
                Activity activity = (Activity) this.f4894do;
                C0301Jk.f1683new = false;
                if (C0301Jk.m1049catch() && !C0301Jk.m1047break(activity) && C0301Jk.f1677do == null) {
                    AdRequest build = new AdRequest.Builder().build();
                    try {
                        cif = C3717t0.m8191for("|sWlnHSABk4VJzzx+VEQpRQ==:uqw/vs8wS/421mlAY3KR65Iq1Tnc7CzrNK1bUeoF7ZM=");
                    } catch (Exception unused) {
                        cif = null;
                    }
                    try {
                        try {
                            str = C3717t0.m8190do(new C3717t0.Cdo("TulaIyHpc1V5cZOEaxGW/w==:FcJvqzZsP1uScKpYvOPJEI8fbnDGoivLPRdNEeySt6M=:CQBQHDm5KIv4x+ijnKRM59QX018zW3APixcjKa1mbEOFbDNVhh7nzSHi8gC/WsNT"), cif);
                        } catch (Exception e) {
                            C0766bi.m4854do().m4855for(e);
                            str = null;
                        }
                        if (str == null) {
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                        InterstitialAd.load(activity, str, build, new C0257Hk(activity));
                        return;
                    } catch (Exception e2) {
                        C0301Jk.f1677do = null;
                        C0301Jk.f1683new = false;
                        try {
                            C0766bi.m4854do().m4855for(e2);
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                }
                return;
        }
    }
}
