package defpackage;

import android.app.Activity;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;

/* loaded from: classes.dex */
public final /* synthetic */ class LH implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f1940do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1941for;

    public /* synthetic */ LH(Object obj, int i) {
        this.f1941for = i;
        this.f1940do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f1941for;
        Object obj = this.f1940do;
        switch (i) {
            case 0:
                ((MH) obj).m1404do();
                break;
            case 1:
                C3224kf c3224kf = (C3224kf) obj;
                boolean isPopupShowing = c3224kf.f14025do.isPopupShowing();
                c3224kf.m7274public(isPopupShowing);
                c3224kf.f14033if = isPopupShowing;
                break;
            case 2:
                AppStartTrace appStartTrace = (AppStartTrace) obj;
                if (appStartTrace.f11929break == null) {
                    appStartTrace.f11933do.getClass();
                    appStartTrace.f11929break = new Timer();
                    C2684eI.Cdo l = C2684eI.l();
                    l.m6556static("_experiment_onDrawFoQ");
                    l.m6554public(appStartTrace.m6113try().f11971do);
                    Timer m6113try = appStartTrace.m6113try();
                    Timer timer = appStartTrace.f11929break;
                    m6113try.getClass();
                    l.m6555return(timer.f11972if - m6113try.f11972if);
                    C2684eI m6305const = l.m6305const();
                    C2684eI.Cdo cdo = appStartTrace.f11938do;
                    cdo.m6552import(m6305const);
                    if (appStartTrace.f11937do != null) {
                        C2684eI.Cdo l2 = C2684eI.l();
                        l2.m6556static("_experiment_procStart_to_classLoad");
                        l2.m6554public(appStartTrace.m6113try().f11971do);
                        Timer m6113try2 = appStartTrace.m6113try();
                        Timer m6112for = appStartTrace.m6112for();
                        m6113try2.getClass();
                        l2.m6555return(m6112for.f11972if - m6113try2.f11972if);
                        cdo.m6552import(l2.m6305const());
                    }
                    String str = appStartTrace.f11948new ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
                    cdo.m6307super();
                    C2684eI.m6550transient((C2684eI) cdo.f12107if).put("systemDeterminedForeground", str);
                    cdo.m6553native(appStartTrace.f11941for, "onDrawCount");
                    Hw m6119do = appStartTrace.f11936do.m6119do();
                    cdo.m6307super();
                    C2684eI.m6544implements((C2684eI) cdo.f12107if, m6119do);
                    appStartTrace.m6109catch(cdo);
                    break;
                }
                break;
            default:
                Activity activity = (Activity) obj;
                C0155Cs c0155Cs = Uw.f4000do;
                try {
                    if (!activity.isFinishing() && !activity.isDestroyed()) {
                        C0251He.m868try(activity);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }
}
