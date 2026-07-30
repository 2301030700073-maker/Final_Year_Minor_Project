package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: sU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3688sU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzo f15501do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f15502do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15503for;

    public /* synthetic */ RunnableC3688sU(C3217kU c3217kU, zzo zzoVar, int i) {
        this.f15503for = i;
        this.f15501do = zzoVar;
        this.f15502do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f15503for;
        C3217kU c3217kU = this.f15502do;
        zzo zzoVar = this.f15501do;
        switch (i) {
            case 0:
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Discarding data. Failed to send app launch");
                    break;
                } else {
                    try {
                        Preconditions.checkNotNull(zzoVar);
                        yr.mo2916case(zzoVar);
                        c3217kU.m8797const().m4840throws();
                        c3217kU.m7270throws(yr, null, zzoVar);
                        c3217kU.m7271volatile();
                        break;
                    } catch (RemoteException e) {
                        c3217kU.mo2249case().f13717do.m7368for("Failed to send app launch to the service", e);
                    }
                }
            default:
                YR yr2 = c3217kU.f13997do;
                if (yr2 == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Failed to send consent settings to service");
                    break;
                } else {
                    try {
                        Preconditions.checkNotNull(zzoVar);
                        yr2.d(zzoVar);
                        c3217kU.m7271volatile();
                        break;
                    } catch (RemoteException e2) {
                        c3217kU.mo2249case().f13717do.m7368for("Failed to send consent settings to the service", e2);
                        return;
                    }
                }
        }
    }
}
