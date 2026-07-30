package defpackage;

import com.google.android.gms.ads.internal.util.zzb;

/* loaded from: classes.dex */
public final class DO implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f614do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f615for;

    public /* synthetic */ DO(Object obj, int i) {
        this.f615for = i;
        this.f614do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f615for) {
            case 0:
                zzb zzbVar = (zzb) this.f614do;
                zzbVar.zzb = Thread.currentThread();
                zzbVar.zza();
                return;
            default:
                ServiceConnectionC3630rV serviceConnectionC3630rV = (ServiceConnectionC3630rV) this.f614do;
                synchronized (serviceConnectionC3630rV) {
                    if (serviceConnectionC3630rV.f15288do == 1) {
                        serviceConnectionC3630rV.m7968do(1, "Timed out while binding");
                    }
                }
                return;
        }
    }
}
