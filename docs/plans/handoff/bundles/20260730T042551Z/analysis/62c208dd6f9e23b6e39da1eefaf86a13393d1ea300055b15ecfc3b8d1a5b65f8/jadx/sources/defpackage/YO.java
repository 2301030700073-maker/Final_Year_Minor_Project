package defpackage;

import android.content.ComponentName;
import com.google.android.gms.internal.play_billing.zze;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final /* synthetic */ class YO implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4733do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4734for = 1;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f4735if;

    public /* synthetic */ YO(Future future, Runnable runnable) {
        this.f4733do = future;
        this.f4735if = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f4734for;
        Object obj = this.f4735if;
        Object obj2 = this.f4733do;
        switch (i) {
            case 0:
                Future future = (Future) obj2;
                if (!future.isDone() && !future.isCancelled()) {
                    Runnable runnable = (Runnable) obj;
                    future.cancel(true);
                    zze.zzl("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable != null) {
                        runnable.run();
                        break;
                    }
                }
                break;
            default:
                C3217kU c3217kU = ((AU) obj).f90do;
                ComponentName componentName = (ComponentName) obj2;
                c3217kU.mo1960catch();
                if (c3217kU.f13997do != null) {
                    c3217kU.f13997do = null;
                    c3217kU.mo2249case().f13723this.m7368for("Disconnected from device MeasurementService", componentName);
                    c3217kU.mo1960catch();
                    c3217kU.m7261extends();
                    break;
                }
                break;
        }
    }

    public YO(AU au, ComponentName componentName) {
        this.f4733do = componentName;
        this.f4735if = au;
    }
}
