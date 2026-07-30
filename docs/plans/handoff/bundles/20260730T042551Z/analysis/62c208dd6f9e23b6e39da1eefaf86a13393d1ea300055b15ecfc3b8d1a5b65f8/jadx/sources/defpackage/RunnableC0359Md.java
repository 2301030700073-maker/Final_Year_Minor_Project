package defpackage;

import android.app.Activity;
import android.os.Handler;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import defpackage.C3128j0;
import defpackage.Ew;
import defpackage.ScheduledFutureC0425Pd;

/* renamed from: Md, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0359Md implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2214do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2215for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2216for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2217if;

    public /* synthetic */ RunnableC0359Md(Object obj, Object obj2, Object obj3, int i) {
        this.f2215for = i;
        this.f2214do = obj;
        this.f2217if = obj2;
        this.f2216for = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2215for;
        Object obj = this.f2216for;
        Object obj2 = this.f2217if;
        Object obj3 = this.f2214do;
        switch (i) {
            case 0:
                ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = (ScheduledExecutorServiceC0403Od) obj3;
                scheduledExecutorServiceC0403Od.getClass();
                scheduledExecutorServiceC0403Od.f2656do.execute(new Cabstract(7, (Runnable) obj2, (ScheduledFutureC0425Pd.Cif) obj));
                break;
            case 1:
                AI ai = (AI) obj3;
                Q0 q0 = AI.f55do;
                ai.getClass();
                Ew.Cdo m511instanceof = Ew.m511instanceof();
                m511instanceof.m6307super();
                Ew.m515volatile((Ew) m511instanceof.f12107if, (C0410Ok) obj2);
                ai.m68new(m511instanceof, (EnumC3601r2) obj);
                break;
            default:
                Activity activity = (Activity) obj3;
                String str = (String) obj2;
                C3128j0.Cif cif = (C3128j0.Cif) obj;
                Handler handler = C3128j0.f13617do;
                if (C0830cn.f8635do || activity.isFinishing() || activity.isDestroyed()) {
                    ((C2843h0) cif).m6775do(null);
                    break;
                } else if (!C0301Jk.m1049catch()) {
                    ((C2843h0) cif).m6775do(null);
                    break;
                } else {
                    try {
                        new AdLoader.Builder(activity, str).forNativeAd(new C2598cr(cif)).withAdListener(new C2902i0(cif)).withNativeAdOptions(new NativeAdOptions.Builder().setAdChoicesPlacement(1).build()).build().loadAd(new AdRequest.Builder().build());
                        break;
                    } catch (Exception e) {
                        try {
                            C0766bi.m4854do().m4855for(e);
                        } catch (Exception unused) {
                        }
                        ((C2843h0) cif).m6775do(null);
                        return;
                    }
                }
                break;
        }
    }
}
