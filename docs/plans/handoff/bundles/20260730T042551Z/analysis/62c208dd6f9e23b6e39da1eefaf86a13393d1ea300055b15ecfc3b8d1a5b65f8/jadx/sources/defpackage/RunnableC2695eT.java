package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: eT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2695eT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f12677do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12678for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f12679if;

    public /* synthetic */ RunnableC2695eT(int i, Object obj, Object obj2) {
        this.f12678for = i;
        this.f12677do = obj2;
        this.f12679if = obj;
    }

    /* renamed from: do, reason: not valid java name */
    private final void m6564do() {
        synchronized (((IU) this.f12679if).f1528do) {
            try {
                InterfaceC0619Xv interfaceC0619Xv = ((IU) this.f12679if).f1527do;
                if (interfaceC0619Xv != null) {
                    interfaceC0619Xv.mo356if(((FG) this.f12677do).mo592class());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        r2 = false;
        boolean z = false;
        switch (this.f12678for) {
            case 0:
                YS ys = (YS) this.f12679if;
                ys.f4740do.p();
                ZU zu = ys.f4740do;
                zzo zzoVar = (zzo) this.f12677do;
                zu.mo2253do().mo1960catch();
                zu.q();
                Preconditions.checkNotNull(zzoVar);
                Preconditions.checkNotEmpty(zzoVar.f10320break);
                if (zu.e().m3012throws(null, C3684sQ.o0)) {
                    if (zu.e().m3012throws(null, C3684sQ.w)) {
                        long currentTimeMillis = zu.mo2257new().currentTimeMillis();
                        int m3013while = zu.e().m3013while(null, C3684sQ.h);
                        zu.e();
                        long longValue = currentTimeMillis - C3684sQ.f15473new.m2158do(null).longValue();
                        for (int i = 0; i < m3013while && zu.m3035package(longValue, null); i++) {
                        }
                    } else {
                        zu.e();
                        long intValue = C3684sQ.f15454catch.m2158do(null).intValue();
                        for (int i2 = 0; i2 < intValue && zu.m3035package(0L, zzoVar.f10320break); i2++) {
                        }
                    }
                    if (zu.e().m3012throws(null, C3684sQ.x)) {
                        zu.m3024continue();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                C4041yT c4041yT = (C4041yT) this.f12679if;
                Bundle bundle = (Bundle) this.f12677do;
                c4041yT.mo1960catch();
                c4041yT.m8474import();
                Preconditions.checkNotNull(bundle);
                String checkNotEmpty = Preconditions.checkNotEmpty(bundle.getString(FacebookRequestErrorClassification.KEY_NAME));
                if (!((TS) ((C3393nT) c4041yT).f14527do).m2248break()) {
                    c4041yT.mo2249case().f13723this.m7369if("Conditional property not cleared since app measurement is disabled");
                    return;
                }
                zzon zzonVar = new zzon(checkNotEmpty, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L, null);
                try {
                    C3395nV m7571break = c4041yT.m7571break();
                    bundle.getString("app_id");
                    c4041yT.m8800throw().m7266return(new zzae(bundle.getString("app_id"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzonVar, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), m7571break.m7597throws(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, bundle.getLong("creation_timestamp"), true)));
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            case 2:
                synchronized (((AtomicReference) this.f12677do)) {
                    try {
                        ((AtomicReference) this.f12677do).set(Double.valueOf(((C4041yT) this.f12679if).m7572else().m2996class(((C4041yT) this.f12679if).m8796class().m4907return(), C3684sQ.d)));
                    } finally {
                        ((AtomicReference) this.f12677do).notify();
                    }
                }
                return;
            case 3:
                Object obj = this.f12677do;
                Object obj2 = this.f12679if;
                C3217kU c3217kU = (C3217kU) obj2;
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13722new.m7369if("Failed to send app backgrounded");
                    return;
                }
                try {
                    Preconditions.checkNotNull((zzo) obj);
                    yr.mo2921final((zzo) obj);
                    ((C3217kU) obj2).m7271volatile();
                    return;
                } catch (RemoteException e) {
                    c3217kU.mo2249case().f13717do.m7368for("Failed to send app backgrounded to the service", e);
                    return;
                }
            case 4:
                AppMeasurementDynamiteService appMeasurementDynamiteService = (AppMeasurementDynamiteService) this.f12679if;
                C3395nV c3395nV = appMeasurementDynamiteService.f10293do.f3700do;
                TS.m2245goto(c3395nV);
                zzdo zzdoVar = (zzdo) this.f12677do;
                TS ts = appMeasurementDynamiteService.f10293do;
                if (ts.f3709if != null && ts.f3709if.booleanValue()) {
                    z = true;
                }
                c3395nV.m7589protected(zzdoVar, z);
                return;
            case 5:
                m6564do();
                return;
            default:
                Object obj3 = this.f12677do;
                try {
                    ((XV) obj3).m2836public(((Callable) this.f12679if).call());
                    return;
                } catch (Exception e2) {
                    ((XV) obj3).m2835native(e2);
                    return;
                } catch (Throwable th) {
                    ((XV) obj3).m2835native(new RuntimeException(th));
                    return;
                }
        }
    }

    public RunnableC2695eT(XV xv, Callable callable) {
        this.f12678for = 6;
        this.f12677do = xv;
        this.f12679if = callable;
    }
}
