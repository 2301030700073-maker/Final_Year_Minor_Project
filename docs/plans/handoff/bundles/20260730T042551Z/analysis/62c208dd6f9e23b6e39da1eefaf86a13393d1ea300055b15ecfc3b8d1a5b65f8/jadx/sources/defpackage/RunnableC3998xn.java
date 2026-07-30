package defpackage;

import android.content.Context;
import android.os.Process;
import android.os.StrictMode;
import com.facebook.appevents.iap.InAppPurchaseBillingClientWrapper;
import com.google.firebase.perf.util.Timer;
import defpackage.ScheduledFutureC0425Pd;
import java.util.concurrent.Callable;

/* renamed from: xn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3998xn implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f16620do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f16621for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f16622if;

    public /* synthetic */ RunnableC3998xn(int i, Object obj, Object obj2) {
        this.f16621for = i;
        this.f16622if = obj;
        this.f16620do = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        switch (this.f16621for) {
            case 0:
                InAppPurchaseBillingClientWrapper.m5368queryPurchaseHistory$lambda0((InAppPurchaseBillingClientWrapper) this.f16622if, (Runnable) this.f16620do);
                break;
            case 1:
                ThreadFactoryC0117Bc threadFactoryC0117Bc = (ThreadFactoryC0117Bc) this.f16622if;
                Runnable runnable = (Runnable) this.f16620do;
                Process.setThreadPriority(threadFactoryC0117Bc.f248do);
                StrictMode.ThreadPolicy threadPolicy = threadFactoryC0117Bc.f249do;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                break;
            case 2:
                Callable callable = (Callable) this.f16622if;
                ScheduledFutureC0425Pd.Cif cif = (ScheduledFutureC0425Pd.Cif) this.f16620do;
                try {
                    ScheduledFutureC0425Pd.this.mo1469throw(callable.call());
                    break;
                } catch (Exception e) {
                    ScheduledFutureC0425Pd.this.mo1470while(e);
                    return;
                }
            case 3:
                C0445Qb c0445Qb = (C0445Qb) this.f16622if;
                Throwable th = (Throwable) this.f16620do;
                C0357Mb c0357Mb = c0445Qb.f2964do;
                Thread currentThread = Thread.currentThread();
                c0357Mb.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                C2642dc c2642dc = c0357Mb.f2205do;
                if (c2642dc != null && c2642dc.f12513do.get()) {
                    z = true;
                }
                if (!z) {
                    long j = currentTimeMillis / 1000;
                    String m1442new = c0357Mb.m1442new();
                    if (m1442new != null) {
                        c0357Mb.f2199do.m1644try(th, currentThread, m1442new, "error", j, false);
                        break;
                    }
                }
                break;
            case 4:
                C2879he c2879he = (C2879he) this.f16622if;
                Context context = (Context) this.f16620do;
                if (c2879he.f13340do == null && context != null) {
                    c2879he.f13340do = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
                    break;
                }
                break;
            case 5:
                C0177Ds c0177Ds = (C0177Ds) this.f16622if;
                Timer timer = (Timer) this.f16620do;
                Q0 q0 = C0177Ds.f694do;
                R0 m406for = c0177Ds.m406for(timer);
                if (m406for != null) {
                    c0177Ds.f697do.add(m406for);
                    break;
                }
                break;
            default:
                ((InterfaceC3786uA) this.f16622if).mo2272do((AbstractC3668sA) this.f16620do);
                break;
        }
    }
}
