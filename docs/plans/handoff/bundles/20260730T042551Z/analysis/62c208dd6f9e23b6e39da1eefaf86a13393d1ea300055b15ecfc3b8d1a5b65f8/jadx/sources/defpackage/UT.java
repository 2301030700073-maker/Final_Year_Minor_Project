package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class UT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3918do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3919for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f3920for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f3921if;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ Object f3922new;

    public /* synthetic */ UT(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f3919for = i;
        this.f3918do = obj2;
        this.f3921if = obj3;
        this.f3920for = obj4;
        this.f3922new = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        YR yr;
        switch (this.f3919for) {
            case 0:
                C3217kU m2261while = ((AppMeasurementDynamiteService) this.f3922new).f10293do.m2261while();
                zzdo zzdoVar = (zzdo) this.f3918do;
                String str = (String) this.f3921if;
                String str2 = (String) this.f3920for;
                m2261while.mo1960catch();
                m2261while.m8474import();
                m2261while.m7267static(new RunnableC4101zU(m2261while, str, str2, m2261while.m7263interface(false), zzdoVar));
                return;
            case 1:
                synchronized (((AtomicReference) this.f3918do)) {
                    try {
                        obj = this.f3922new;
                        yr = ((C3217kU) obj).f13997do;
                    } catch (RemoteException e) {
                        ((C3217kU) this.f3922new).mo2249case().f13717do.m7368for("Failed to get trigger URIs; remote exception", e);
                    } finally {
                        ((AtomicReference) this.f3918do).notify();
                    }
                    if (yr == null) {
                        ((C3217kU) obj).mo2249case().f13717do.m7369if("Failed to get trigger URIs; not connected to service");
                        return;
                    }
                    Preconditions.checkNotNull((zzo) this.f3921if);
                    ((AtomicReference) this.f3918do).set(yr.m((Bundle) this.f3920for, (zzo) this.f3921if));
                    ((C3217kU) this.f3922new).m7271volatile();
                    return;
                }
            default:
                C0174Dp c0174Dp = (C0174Dp) this.f3922new;
                C3395nV o = ((ZU) c0174Dp.f687do).o();
                ((ZU) c0174Dp.f687do).m3034native((zzbf) Preconditions.checkNotNull(o.m7597throws((String) this.f3920for, (Bundle) this.f3918do, "auto", ((ZU) c0174Dp.f687do).mo2257new().currentTimeMillis(), false)), (String) this.f3921if);
                return;
        }
    }

    public UT(C0174Dp c0174Dp, String str, String str2, Bundle bundle) {
        this.f3919for = 2;
        this.f3921if = str;
        this.f3920for = str2;
        this.f3918do = bundle;
        this.f3922new = c0174Dp;
    }
}
