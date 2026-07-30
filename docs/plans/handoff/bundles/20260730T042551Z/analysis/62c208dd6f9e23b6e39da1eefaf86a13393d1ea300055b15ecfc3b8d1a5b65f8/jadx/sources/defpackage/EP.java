package defpackage;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdh;

/* loaded from: classes3.dex */
public abstract class EP {

    /* renamed from: do, reason: not valid java name */
    public static volatile zzdh f787do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile long f788do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3511pT f789do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RunnableC3807uV f790do;

    public EP(InterfaceC3511pT interfaceC3511pT) {
        Preconditions.checkNotNull(interfaceC3511pT);
        this.f789do = interfaceC3511pT;
        this.f790do = new RunnableC3807uV(this, interfaceC3511pT, 1);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m450do() {
        this.f788do = 0L;
        m453new().removeCallbacks(this.f790do);
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo451for();

    /* renamed from: if, reason: not valid java name */
    public final void m452if(long j) {
        m450do();
        if (j >= 0) {
            this.f788do = this.f789do.mo2257new().currentTimeMillis();
            if (m453new().postDelayed(this.f790do, j)) {
                return;
            }
            this.f789do.mo2249case().f13717do.m7368for("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final Handler m453new() {
        zzdh zzdhVar;
        if (f787do != null) {
            return f787do;
        }
        synchronized (EP.class) {
            if (f787do == null) {
                f787do = new zzdh(this.f789do.mo2255for().getMainLooper());
            }
            zzdhVar = f787do;
        }
        return zzdhVar;
    }
}
