package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbl;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;

/* loaded from: classes.dex */
public final class PR implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2784do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2785for;

    public /* synthetic */ PR(Object obj, int i) {
        this.f2785for = i;
        this.f2784do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2785for;
        Object obj = this.f2784do;
        switch (i) {
            case 0:
                zzbl zzblVar = ((zzfk) obj).f9668do;
                if (zzblVar != null) {
                    try {
                        zzblVar.zze(1);
                        break;
                    } catch (RemoteException e) {
                        zzo.zzk("Could not notify onAdFailedToLoad event.", e);
                        return;
                    }
                }
                break;
            case 1:
                ((GG) obj).m720for(new IOException("TIMEOUT"));
                break;
            case 2:
                ((ServiceConnectionC3630rV) obj).m7968do(2, "Service disconnected");
                break;
            default:
                C3217kU c3217kU = (C3217kU) obj;
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Failed to send Dma consent settings to service");
                    break;
                } else {
                    try {
                        com.google.android.gms.measurement.internal.zzo m7263interface = c3217kU.m7263interface(false);
                        Preconditions.checkNotNull(m7263interface);
                        yr.mo2925protected(m7263interface);
                        c3217kU.m7271volatile();
                        break;
                    } catch (RemoteException e2) {
                        c3217kU.mo2249case().f13717do.m7368for("Failed to send Dma consent settings to the service", e2);
                        return;
                    }
                }
        }
    }
}
