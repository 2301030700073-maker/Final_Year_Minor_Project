package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.ads.internal.client.zzbl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class NR implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2378do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2379for;

    public /* synthetic */ NR(Object obj, int i) {
        this.f2379for = i;
        this.f2378do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2379for) {
            case 0:
                zzbl zzblVar = ((OR) this.f2378do).f2644do.f9667do;
                if (zzblVar != null) {
                    try {
                        zzblVar.zze(1);
                        return;
                    } catch (RemoteException e) {
                        zzo.zzk("Could not notify onAdFailedToLoad event.", e);
                        return;
                    }
                }
                return;
            case 1:
                break;
            case 2:
                C3217kU c3217kU = (C3217kU) this.f2378do;
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Failed to send storage consent settings to service");
                    return;
                }
                try {
                    com.google.android.gms.measurement.internal.zzo m7263interface = c3217kU.m7263interface(false);
                    Preconditions.checkNotNull(m7263interface);
                    yr.mo2927static(m7263interface);
                    c3217kU.m7271volatile();
                    return;
                } catch (RemoteException e2) {
                    c3217kU.mo2249case().f13717do.m7368for("Failed to send storage consent settings to the service", e2);
                    return;
                }
            case 3:
                OU ou = (OU) this.f2378do;
                M1 m1 = ou.f2648do;
                ((LU) m1.f2078if).mo1960catch();
                LU lu = (LU) m1.f2078if;
                lu.mo2249case().f13720goto.m7369if("Application going to the background");
                lu.m7574this().f16752for.m8288do(true);
                lu.mo1960catch();
                lu.f1959if = true;
                if (!lu.m7572else().m3000finally()) {
                    boolean m3012throws = lu.m7572else().m3012throws(null, C3684sQ.b0);
                    long j = ou.f2649if;
                    if (m3012throws) {
                        lu.f1956do.m1772do(j, false, false);
                        lu.f1956do.f2793do.m450do();
                    } else {
                        lu.f1956do.f2793do.m450do();
                        lu.f1956do.m1772do(j, false, false);
                    }
                }
                lu.mo2249case().f13718else.m7368for("Application backgrounded at: timestamp_millis", Long.valueOf(ou.f2647do));
                ZO m7572else = lu.m7572else();
                SR<Boolean> sr = C3684sQ.p0;
                if (m7572else.m3012throws(null, sr)) {
                    C4041yT m8798final = lu.m8798final();
                    m8798final.mo1960catch();
                    m8798final.m8474import();
                    if (m8798final.m7572else().m3012throws(null, sr)) {
                        C3217kU m8800throw = m8798final.m8800throw();
                        m8800throw.mo1960catch();
                        m8800throw.m8474import();
                        if (!m8800throw.m7259continue() || m8800throw.m7571break().D() >= 242600) {
                            C3217kU m8800throw2 = m8798final.m8800throw();
                            m8800throw2.mo1960catch();
                            m8800throw2.m8474import();
                            m8800throw2.m7267static(new RunnableC2695eT(3, m8800throw2, m8800throw2.m7263interface(true)));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            default:
                ((C4041yT) this.f2378do).m8745synchronized();
                return;
        }
        while (true) {
            ServiceConnectionC3630rV serviceConnectionC3630rV = (ServiceConnectionC3630rV) this.f2378do;
            synchronized (serviceConnectionC3630rV) {
                int i = 2;
                if (serviceConnectionC3630rV.f15288do != 2) {
                    return;
                }
                if (serviceConnectionC3630rV.f15292do.isEmpty()) {
                    serviceConnectionC3630rV.m7969for();
                    return;
                }
                JV jv = (JV) serviceConnectionC3630rV.f15292do.poll();
                serviceConnectionC3630rV.f15291do.put(jv.f1647do, jv);
                serviceConnectionC3630rV.f15289do.f4137do.schedule(new PO(i, serviceConnectionC3630rV, jv), 30L, TimeUnit.SECONDS);
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    "Sending ".concat(String.valueOf(jv));
                }
                VV vv = serviceConnectionC3630rV.f15289do;
                Messenger messenger = serviceConnectionC3630rV.f15290do;
                int i2 = jv.f1650if;
                Context context = vv.f4136do;
                Message obtain = Message.obtain();
                obtain.what = i2;
                obtain.arg1 = jv.f1647do;
                obtain.replyTo = messenger;
                Bundle bundle = new Bundle();
                bundle.putBoolean("oneWay", jv.mo374if());
                bundle.putString("pkg", context.getPackageName());
                bundle.putBundle("data", jv.f1649do);
                obtain.setData(bundle);
                try {
                    C4043yV c4043yV = serviceConnectionC3630rV.f15293do;
                    Messenger messenger2 = c4043yV.f16793do;
                    if (messenger2 != null) {
                        messenger2.send(obtain);
                    } else {
                        zzd zzdVar = c4043yV.f16794do;
                        if (zzdVar == null) {
                            throw new IllegalStateException("Both messengers are null");
                        }
                        Messenger messenger3 = zzdVar.f10175do;
                        messenger3.getClass();
                        messenger3.send(obtain);
                    }
                } catch (RemoteException e3) {
                    serviceConnectionC3630rV.m7968do(2, e3.getMessage());
                }
            }
        }
    }
}
