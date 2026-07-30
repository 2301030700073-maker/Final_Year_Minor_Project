package defpackage;

import android.animation.AnimatorSet;
import android.app.Activity;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.lifecycle.Cbreak;
import androidx.lifecycle.Ctry;
import com.facebook.appevents.codeless.CodelessMatcher;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.google.android.gms.ads.AdView;
import com.google.android.material.search.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import com.joeykrim.rootcheck.R;
import defpackage.KJ;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;

/* renamed from: h9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2852h9 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13255do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13256for;

    public /* synthetic */ RunnableC2852h9(Object obj, int i) {
        this.f13256for = i;
        this.f13255do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map<String, String> map = null;
        switch (this.f13256for) {
            case 0:
                ComponentActivity.Ctry ctry = (ComponentActivity.Ctry) this.f13255do;
                Runnable runnable = ctry.f5114do;
                if (runnable != null) {
                    runnable.run();
                    ctry.f5114do = null;
                    return;
                }
                return;
            case 1:
                ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) this.f13255do;
                int i = ContentLoadingProgressBar.f6531for;
                contentLoadingProgressBar.setVisibility(8);
                return;
            case 2:
                Cbreak cbreak = (Cbreak) this.f13255do;
                Cbreak cbreak2 = Cbreak.f7089do;
                C0173Do.m401try(cbreak, "this$0");
                if (cbreak.f7097new == 0) {
                    cbreak.f7094do = true;
                    cbreak.f7092do.m4258case(Ctry.Cdo.ON_PAUSE);
                }
                if (cbreak.f7095for == 0 && cbreak.f7094do) {
                    cbreak.f7092do.m4258case(Ctry.Cdo.ON_STOP);
                    cbreak.f7096if = true;
                    return;
                }
                return;
            case 3:
                CodelessMatcher.m5352startTracking$lambda1((CodelessMatcher) this.f13255do);
                return;
            case 4:
                ((FetchedAppGateKeepersManager.Callback) this.f13255do).onCompleted();
                return;
            case 5:
            default:
                Activity activity = (Activity) this.f13255do;
                if (!C0301Jk.m1047break(activity) && C0301Jk.m1049catch()) {
                    try {
                        if (C0301Jk.m1050do() && C0301Jk.f1677do == null) {
                            C0301Jk.m1052for(activity);
                        }
                        if (C0301Jk.f1676do != null) {
                            return;
                        }
                        AdView adView = new AdView(activity);
                        C0301Jk.f1676do = adView;
                        adView.setAdUnitId(C0301Jk.m1055new());
                        C0301Jk.f1676do.setAdListener(new C0235Gk());
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 1;
                        ((LinearLayout) activity.findViewById(R.id.linearLayoutOverall)).addView(C0301Jk.f1676do, 1, layoutParams);
                        C0301Jk.f1676do.setAdSize(C0301Jk.m1053goto(activity));
                        C0301Jk.f1676do.loadAd(C0301Jk.m1054if());
                        return;
                    } catch (Exception e) {
                        C0301Jk.m1048case();
                        C0766bi.m4854do().m4855for(e);
                        return;
                    } catch (ExceptionInInitializerError unused) {
                        return;
                    }
                }
                return;
            case 6:
                ((C0242Gr) this.f13255do).m765do(true);
                return;
            case 7:
                com.google.android.material.search.Ctry ctry2 = (com.google.android.material.search.Ctry) this.f13255do;
                AnimatorSet m5875new = ctry2.m5875new(true);
                m5875new.addListener(new Cdo(ctry2));
                m5875new.start();
                return;
            case 8:
                KJ.Cdo cdo = (KJ.Cdo) this.f13255do;
                cdo.f1793do.set(null);
                synchronized (cdo) {
                    if (cdo.f1792do.isMarked()) {
                        map = cdo.f1792do.getReference().m1554do();
                        AtomicMarkableReference<C0393Np> atomicMarkableReference = cdo.f1792do;
                        atomicMarkableReference.set(atomicMarkableReference.getReference(), false);
                    }
                }
                if (map != null) {
                    KJ kj = cdo.f1791do;
                    kj.f1785do.m2967else(kj.f1786do, map, cdo.f1794do);
                    return;
                }
                return;
            case 9:
                FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f13255do;
                com.google.firebase.messaging.Cdo cdo2 = FirebaseMessaging.f11889do;
                if (firebaseMessaging.m6085case()) {
                    firebaseMessaging.m6091this();
                    return;
                }
                return;
        }
    }
}
