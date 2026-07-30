package defpackage;

import android.app.job.JobParameters;
import android.graphics.Typeface;
import com.facebook.appevents.codeless.ViewIndexer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.firebase.perf.util.Timer;
import defpackage.Oz;
import defpackage.ScheduledFutureC0425Pd;
import java.util.TimerTask;

/* loaded from: classes.dex */
public final /* synthetic */ class Pz implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2850do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2851for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2852if;

    public /* synthetic */ Pz(int i, Object obj, Object obj2) {
        this.f2851for = i;
        this.f2850do = obj;
        this.f2852if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2851for;
        Object obj = this.f2852if;
        Object obj2 = this.f2850do;
        switch (i) {
            case 0:
                ((Oz.Ctry) obj2).mo1733new((Typeface) obj);
                break;
            case 1:
                ViewIndexer.m5355schedule$lambda0((ViewIndexer) obj2, (TimerTask) obj);
                break;
            case 2:
                int i2 = JobInfoSchedulerService.f9487for;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                break;
            case 3:
                ScheduledFutureC0425Pd.Cif cif = (ScheduledFutureC0425Pd.Cif) obj;
                try {
                    ((Runnable) obj2).run();
                    ScheduledFutureC0425Pd.this.mo1469throw(null);
                    break;
                } catch (Exception e) {
                    ScheduledFutureC0425Pd.this.mo1470while(e);
                    return;
                }
            case 4:
                C3350mn c3350mn = (C3350mn) obj2;
                GG gg = (GG) obj;
                c3350mn.getClass();
                try {
                    gg.m721if(c3350mn.m7466do());
                    break;
                } catch (Exception e2) {
                    gg.m719do(e2);
                    return;
                }
            case 5:
                C3986xb c3986xb = (C3986xb) obj2;
                Q0 q0 = C3986xb.f16580do;
                C4045yb m8653if = c3986xb.m8653if((Timer) obj);
                if (m8653if != null) {
                    c3986xb.f16584do.add(m8653if);
                    break;
                }
                break;
            default:
                C3128j0.f13619if.remove((String) obj2);
                ((Runnable) obj).run();
                break;
        }
    }
}
