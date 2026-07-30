package defpackage;

import android.content.Context;
import androidx.activity.ComponentActivity;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: d9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2617d9 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f12430do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12431for;

    public /* synthetic */ RunnableC2617d9(Object obj, int i) {
        this.f12431for = i;
        this.f12430do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f12431for;
        int i2 = 1;
        Object obj = this.f12430do;
        switch (i) {
            case 0:
                ((ComponentActivity) obj).invalidateOptionsMenu();
                break;
            case 1:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new FE((Context) obj, i2));
                break;
            case 2:
                DM dm = (DM) obj;
                dm.getClass();
                dm.f609do.mo6440new(new C2598cr(dm));
                break;
            case 3:
                AppStartTrace appStartTrace = (AppStartTrace) obj;
                if (appStartTrace.f11949this == null) {
                    appStartTrace.f11933do.getClass();
                    appStartTrace.f11949this = new Timer();
                    C2684eI.Cdo l = C2684eI.l();
                    l.m6556static("_experiment_preDrawFoQ");
                    l.m6554public(appStartTrace.m6113try().f11971do);
                    Timer m6113try = appStartTrace.m6113try();
                    Timer timer = appStartTrace.f11949this;
                    m6113try.getClass();
                    l.m6555return(timer.f11972if - m6113try.f11972if);
                    C2684eI m6305const = l.m6305const();
                    C2684eI.Cdo cdo = appStartTrace.f11938do;
                    cdo.m6552import(m6305const);
                    appStartTrace.m6109catch(cdo);
                    break;
                }
                break;
            default:
                C0301Jk.m1051else(true);
                break;
        }
    }
}
