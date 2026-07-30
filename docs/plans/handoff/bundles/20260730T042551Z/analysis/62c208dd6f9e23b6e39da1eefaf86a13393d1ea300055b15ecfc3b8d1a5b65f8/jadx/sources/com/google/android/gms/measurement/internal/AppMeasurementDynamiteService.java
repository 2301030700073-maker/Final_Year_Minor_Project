package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.zzdm;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzdw;
import com.google.android.gms.internal.measurement.zzpu;
import defpackage.BinderC3652rv;
import defpackage.C2638dU;
import defpackage.C2696eU;
import defpackage.C3156jS;
import defpackage.C3393nT;
import defpackage.C3395nV;
import defpackage.C3684sQ;
import defpackage.C4041yT;
import defpackage.ET;
import defpackage.F2;
import defpackage.GT;
import defpackage.InterfaceC0456Qm;
import defpackage.InterfaceC3805uT;
import defpackage.InterfaceC3864vT;
import defpackage.JT;
import defpackage.KO;
import defpackage.LT;
import defpackage.OS;
import defpackage.OT;
import defpackage.PO;
import defpackage.QS;
import defpackage.RunnableC0754bT;
import defpackage.RunnableC2695eT;
import defpackage.RunnableC3334mT;
import defpackage.RunnableC3807uV;
import defpackage.TS;
import defpackage.TT;
import defpackage.UT;
import defpackage.VS;
import j$.util.Objects;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

@DynamiteApi
/* loaded from: classes3.dex */
public class AppMeasurementDynamiteService extends zzdm {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TS f10293do = null;

    /* renamed from: do, reason: not valid java name */
    public final F2 f10292do = new F2();

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$do, reason: invalid class name */
    public class Cdo implements InterfaceC3864vT {

        /* renamed from: do, reason: not valid java name */
        public final zzdp f10294do;

        public Cdo(zzdp zzdpVar) {
            this.f10294do = zzdpVar;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5616do(String str, String str2, Bundle bundle, long j) {
            try {
                this.f10294do.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                TS ts = AppMeasurementDynamiteService.this.f10293do;
                if (ts != null) {
                    C3156jS c3156jS = ts.f3695do;
                    TS.m2247this(c3156jS);
                    c3156jS.f13722new.m7368for("Event interceptor threw exception", e);
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$if, reason: invalid class name */
    public class Cif implements InterfaceC3805uT {

        /* renamed from: do, reason: not valid java name */
        public final zzdp f10296do;

        public Cif(zzdp zzdpVar) {
            this.f10296do = zzdpVar;
        }

        @Override // defpackage.InterfaceC3805uT
        /* renamed from: do */
        public final void mo1152do(String str, String str2, Bundle bundle, long j) {
            try {
                this.f10296do.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                TS ts = AppMeasurementDynamiteService.this.f10293do;
                if (ts != null) {
                    C3156jS c3156jS = ts.f3695do;
                    TS.m2247this(c3156jS);
                    c3156jS.f13722new.m7368for("Event listener threw exception", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void beginAdUnitExposure(String str, long j) {
        zza();
        this.f10293do.m2252const().m3130public(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8734default(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearMeasurementEnabled(long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8474import();
        c4041yT.mo2253do().m1964public(new RunnableC3807uV(c4041yT, (Object) null, 4));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void endAdUnitExposure(String str, long j) {
        zza();
        this.f10293do.m2252const().m3133switch(j, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void generateEventId(zzdo zzdoVar) {
        zza();
        C3395nV c3395nV = this.f10293do.f3700do;
        TS.m2245goto(c3395nV);
        long L = c3395nV.L();
        zza();
        C3395nV c3395nV2 = this.f10293do.f3700do;
        TS.m2245goto(c3395nV2);
        c3395nV2.m7592strictfp(zzdoVar, L);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getAppInstanceId(zzdo zzdoVar) {
        zza();
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        qs.m1964public(new VS(0, this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCachedAppInstanceId(zzdo zzdoVar) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        n(c4041yT.f16778do.get(), zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getConditionalUserProperties(String str, String str2, zzdo zzdoVar) {
        zza();
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        qs.m1964public(new UT(this, zzdoVar, str, str2, 0));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenClass(zzdo zzdoVar) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        C2638dU c2638dU = ((TS) ((C3393nT) c4041yT).f14527do).f3694do;
        TS.m2244else(c2638dU);
        C2696eU c2696eU = c2638dU.f12494do;
        n(c2696eU != null ? c2696eU.f12684if : null, zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenName(zzdo zzdoVar) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        C2638dU c2638dU = ((TS) ((C3393nT) c4041yT).f14527do).f3694do;
        TS.m2244else(c2638dU);
        C2696eU c2696eU = c2638dU.f12494do;
        n(c2696eU != null ? c2696eU.f12681do : null, zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getGmpAppId(zzdo zzdoVar) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        Object obj = ((C3393nT) c4041yT).f14527do;
        TS ts = (TS) obj;
        String str = ts.f3697do;
        if (str == null) {
            try {
                Context mo2255for = c4041yT.mo2255for();
                String str2 = ((TS) obj).f3713new;
                Preconditions.checkNotNull(mo2255for);
                Resources resources = mo2255for.getResources();
                if (TextUtils.isEmpty(str2)) {
                    str2 = OS.m1670do(mo2255for);
                }
                int identifier = resources.getIdentifier("google_app_id", "string", str2);
                if (identifier != 0) {
                    try {
                        str = resources.getString(identifier);
                    } catch (Resources.NotFoundException unused) {
                    }
                }
            } catch (IllegalStateException e) {
                C3156jS c3156jS = ts.f3695do;
                TS.m2247this(c3156jS);
                c3156jS.f13717do.m7368for("getGoogleAppId failed with exception", e);
            }
            str = null;
        }
        n(str, zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getMaxUserProperties(String str, zzdo zzdoVar) {
        zza();
        TS.m2244else(this.f10293do.f3702do);
        Preconditions.checkNotEmpty(str);
        zza();
        C3395nV c3395nV = this.f10293do.f3700do;
        TS.m2245goto(c3395nV);
        c3395nV.m7582continue(zzdoVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getSessionId(zzdo zzdoVar) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo2253do().m1964public(new RunnableC0754bT(c4041yT, zzdoVar, 2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getTestFlag(zzdo zzdoVar, int i) {
        zza();
        int i2 = 1;
        if (i == 0) {
            C3395nV c3395nV = this.f10293do.f3700do;
            TS.m2245goto(c3395nV);
            C4041yT c4041yT = this.f10293do.f3702do;
            TS.m2244else(c4041yT);
            AtomicReference atomicReference = new AtomicReference();
            c3395nV.m7584implements((String) c4041yT.mo2253do().m1967super(atomicReference, 15000L, "String test flag value", new GT(c4041yT, atomicReference, i2)), zzdoVar);
            return;
        }
        int i3 = 2;
        if (i == 1) {
            C3395nV c3395nV2 = this.f10293do.f3700do;
            TS.m2245goto(c3395nV2);
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            AtomicReference atomicReference2 = new AtomicReference();
            c3395nV2.m7592strictfp(zzdoVar, ((Long) c4041yT2.mo2253do().m1967super(atomicReference2, 15000L, "long test flag value", new VS(i3, c4041yT2, atomicReference2))).longValue());
            return;
        }
        if (i == 2) {
            C3395nV c3395nV3 = this.f10293do.f3700do;
            TS.m2245goto(c3395nV3);
            C4041yT c4041yT3 = this.f10293do.f3702do;
            TS.m2244else(c4041yT3);
            AtomicReference atomicReference3 = new AtomicReference();
            double doubleValue = ((Double) c4041yT3.mo2253do().m1967super(atomicReference3, 15000L, "double test flag value", new RunnableC2695eT(i3, c4041yT3, atomicReference3))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zzdoVar.zza(bundle);
                return;
            } catch (RemoteException e) {
                C3156jS c3156jS = ((TS) ((C3393nT) c3395nV3).f14527do).f3695do;
                TS.m2247this(c3156jS);
                c3156jS.f13722new.m7368for("Error returning double value to wrapper", e);
                return;
            }
        }
        if (i == 3) {
            C3395nV c3395nV4 = this.f10293do.f3700do;
            TS.m2245goto(c3395nV4);
            C4041yT c4041yT4 = this.f10293do.f3702do;
            TS.m2244else(c4041yT4);
            AtomicReference atomicReference4 = new AtomicReference();
            c3395nV4.m7582continue(zzdoVar, ((Integer) c4041yT4.mo2253do().m1967super(atomicReference4, 15000L, "int test flag value", new GT(c4041yT4, atomicReference4, i3))).intValue());
            return;
        }
        if (i != 4) {
            return;
        }
        C3395nV c3395nV5 = this.f10293do.f3700do;
        TS.m2245goto(c3395nV5);
        C4041yT c4041yT5 = this.f10293do.f3702do;
        TS.m2244else(c4041yT5);
        AtomicReference atomicReference5 = new AtomicReference();
        c3395nV5.m7589protected(zzdoVar, ((Boolean) c4041yT5.mo2253do().m1967super(atomicReference5, 15000L, "boolean test flag value", new GT(c4041yT5, atomicReference5, 0))).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getUserProperties(String str, String str2, boolean z, zzdo zzdoVar) {
        zza();
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        qs.m1964public(new RunnableC3334mT(this, zzdoVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initForTests(Map map) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initialize(InterfaceC0456Qm interfaceC0456Qm, zzdw zzdwVar, long j) {
        TS ts = this.f10293do;
        if (ts == null) {
            this.f10293do = TS.m2246if((Context) Preconditions.checkNotNull((Context) BinderC3652rv.o(interfaceC0456Qm)), zzdwVar, Long.valueOf(j));
            return;
        }
        C3156jS c3156jS = ts.f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13722new.m7369if("Attempting to initialize multiple times");
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void isDataCollectionEnabled(zzdo zzdoVar) {
        zza();
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        qs.m1964public(new RunnableC2695eT(4, this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8736finally(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzdo zzdoVar, long j) {
        zza();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        zzbf zzbfVar = new zzbf(str2, new zzbe(bundle), "app", j);
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        qs.m1964public(new ET(this, zzdoVar, zzbfVar, str));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logHealthData(int i, String str, InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        zza();
        Object o = interfaceC0456Qm == null ? null : BinderC3652rv.o(interfaceC0456Qm);
        Object o2 = interfaceC0456Qm2 == null ? null : BinderC3652rv.o(interfaceC0456Qm2);
        Object o3 = interfaceC0456Qm3 != null ? BinderC3652rv.o(interfaceC0456Qm3) : null;
        C3156jS c3156jS = this.f10293do.f3695do;
        TS.m2247this(c3156jS);
        c3156jS.m7110import(i, true, false, str, o, o2, o3);
    }

    public final void n(String str, zzdo zzdoVar) {
        zza();
        C3395nV c3395nV = this.f10293do.f3700do;
        TS.m2245goto(c3395nV);
        c3395nV.m7584implements(str, zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityCreated(InterfaceC0456Qm interfaceC0456Qm, Bundle bundle, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        TT tt = c4041yT.f16773do;
        if (tt != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
            tt.onActivityCreated((Activity) BinderC3652rv.o(interfaceC0456Qm), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityDestroyed(InterfaceC0456Qm interfaceC0456Qm, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        TT tt = c4041yT.f16773do;
        if (tt != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
            tt.onActivityDestroyed((Activity) BinderC3652rv.o(interfaceC0456Qm));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityPaused(InterfaceC0456Qm interfaceC0456Qm, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        TT tt = c4041yT.f16773do;
        if (tt != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
            tt.onActivityPaused((Activity) BinderC3652rv.o(interfaceC0456Qm));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityResumed(InterfaceC0456Qm interfaceC0456Qm, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        TT tt = c4041yT.f16773do;
        if (tt != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
            tt.onActivityResumed((Activity) BinderC3652rv.o(interfaceC0456Qm));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivitySaveInstanceState(InterfaceC0456Qm interfaceC0456Qm, zzdo zzdoVar, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        TT tt = c4041yT.f16773do;
        Bundle bundle = new Bundle();
        if (tt != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
            tt.onActivitySaveInstanceState((Activity) BinderC3652rv.o(interfaceC0456Qm), bundle);
        }
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = this.f10293do.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStarted(InterfaceC0456Qm interfaceC0456Qm, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        if (c4041yT.f16773do != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStopped(InterfaceC0456Qm interfaceC0456Qm, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        if (c4041yT.f16773do != null) {
            C4041yT c4041yT2 = this.f10293do.f3702do;
            TS.m2244else(c4041yT2);
            c4041yT2.m8738instanceof();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void performAction(Bundle bundle, zzdo zzdoVar, long j) {
        zza();
        zzdoVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void registerOnMeasurementEventListener(zzdp zzdpVar) {
        Object obj;
        zza();
        synchronized (this.f10292do) {
            obj = (InterfaceC3805uT) this.f10292do.getOrDefault(Integer.valueOf(zzdpVar.zza()), null);
            if (obj == null) {
                obj = new Cif(zzdpVar);
                this.f10292do.put(Integer.valueOf(zzdpVar.zza()), obj);
            }
        }
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8474import();
        Preconditions.checkNotNull(obj);
        if (c4041yT.f16776do.add(obj)) {
            return;
        }
        c4041yT.mo2249case().f13722new.m7369if("OnEventListener already registered");
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void resetAnalyticsData(long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.e(null);
        c4041yT.mo2253do().m1964public(new OT(c4041yT, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConditionalUserProperty(Bundle bundle, long j) {
        zza();
        if (bundle == null) {
            C3156jS c3156jS = this.f10293do.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13717do.m7369if("Conditional user property must not be null");
        } else {
            C4041yT c4041yT = this.f10293do.f3702do;
            TS.m2244else(c4041yT);
            c4041yT.d(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsent(Bundle bundle, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo2253do().m1965return(new KO(c4041yT, bundle, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsentThirdParty(Bundle bundle, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8742static(bundle, -20, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setCurrentScreen(InterfaceC0456Qm interfaceC0456Qm, String str, String str2, long j) {
        zza();
        C2638dU c2638dU = this.f10293do.f3694do;
        TS.m2244else(c2638dU);
        Activity activity = (Activity) BinderC3652rv.o(interfaceC0456Qm);
        if (!c2638dU.m7572else().m3000finally()) {
            c2638dU.mo2249case().f13713case.m7369if("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        C2696eU c2696eU = c2638dU.f12494do;
        if (c2696eU == null) {
            c2638dU.mo2249case().f13713case.m7369if("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (c2638dU.f12495do.get(Integer.valueOf(activity.hashCode())) == null) {
            c2638dU.mo2249case().f13713case.m7369if("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = c2638dU.m6458return(activity.getClass());
        }
        boolean equals = Objects.equals(c2696eU.f12684if, str2);
        boolean equals2 = Objects.equals(c2696eU.f12681do, str);
        if (equals && equals2) {
            c2638dU.mo2249case().f13713case.m7369if("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > c2638dU.m7572else().m2999final(null, false))) {
            c2638dU.mo2249case().f13713case.m7368for("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > c2638dU.m7572else().m2999final(null, false))) {
            c2638dU.mo2249case().f13713case.m7368for("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        c2638dU.mo2249case().f13723this.m7367do(str == null ? "null" : str, "Setting current screen to name, class", str2);
        C2696eU c2696eU2 = new C2696eU(str, str2, c2638dU.m7571break().L());
        c2638dU.f12495do.put(Integer.valueOf(activity.hashCode()), c2696eU2);
        c2638dU.m6461throws(activity, c2696eU2, true);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDataCollectionEnabled(boolean z) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8474import();
        c4041yT.mo2253do().m1964public(new JT(c4041yT, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDefaultEventParameters(Bundle bundle) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo2253do().m1964public(new VS(c4041yT, bundle == null ? new Bundle() : new Bundle(bundle)));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setEventInterceptor(zzdp zzdpVar) {
        zza();
        Cdo cdo = new Cdo(zzdpVar);
        QS qs = this.f10293do.f3683do;
        TS.m2247this(qs);
        if (!qs.m1966static()) {
            QS qs2 = this.f10293do.f3683do;
            TS.m2247this(qs2);
            qs2.m1964public(new com.google.android.gms.measurement.internal.Cdo(this, cdo));
            return;
        }
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo1960catch();
        c4041yT.m8474import();
        InterfaceC3864vT interfaceC3864vT = c4041yT.f16780do;
        if (cdo != interfaceC3864vT) {
            Preconditions.checkState(interfaceC3864vT == null, "EventInterceptor already set.");
        }
        c4041yT.f16780do = cdo;
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setInstanceIdProvider(zzdu zzduVar) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMeasurementEnabled(boolean z, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        Boolean valueOf = Boolean.valueOf(z);
        c4041yT.m8474import();
        c4041yT.mo2253do().m1964public(new RunnableC3807uV(c4041yT, valueOf, 4));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMinimumSessionDuration(long j) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSessionTimeoutDuration(long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo2253do().m1964public(new LT(c4041yT, j, 0));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSgtmDebugInfo(Intent intent) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        if (zzpu.zza() && c4041yT.m7572else().m3012throws(null, C3684sQ.K)) {
            Uri data = intent.getData();
            if (data == null) {
                c4041yT.mo2249case().f13718else.m7369if("Activity intent has no data. Preview Mode was not enabled.");
                return;
            }
            String queryParameter = data.getQueryParameter("sgtm_debug_enable");
            if (queryParameter == null || !queryParameter.equals(AppEventsConstants.EVENT_PARAM_VALUE_YES)) {
                c4041yT.mo2249case().f13718else.m7369if("Preview Mode was not enabled.");
                c4041yT.m7572else().f4820do = null;
                return;
            }
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (TextUtils.isEmpty(queryParameter2)) {
                return;
            }
            c4041yT.mo2249case().f13718else.m7368for("Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
            c4041yT.m7572else().f4820do = queryParameter2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserId(String str, long j) {
        zza();
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        if (str == null || !TextUtils.isEmpty(str)) {
            c4041yT.mo2253do().m1964public(new PO(3, c4041yT, str));
            c4041yT.m8740private(null, "_id", str, true, j);
        } else {
            C3156jS c3156jS = ((TS) ((C3393nT) c4041yT).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7369if("User ID must be non-empty or null");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserProperty(String str, String str2, InterfaceC0456Qm interfaceC0456Qm, boolean z, long j) {
        zza();
        Object o = BinderC3652rv.o(interfaceC0456Qm);
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8740private(str, str2, o, z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void unregisterOnMeasurementEventListener(zzdp zzdpVar) {
        Object obj;
        zza();
        synchronized (this.f10292do) {
            obj = (InterfaceC3805uT) this.f10292do.remove(Integer.valueOf(zzdpVar.zza()));
        }
        if (obj == null) {
            obj = new Cif(zzdpVar);
        }
        C4041yT c4041yT = this.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8474import();
        Preconditions.checkNotNull(obj);
        if (c4041yT.f16776do.remove(obj)) {
            return;
        }
        c4041yT.mo2249case().f13722new.m7369if("OnEventListener had not been registered");
    }

    public final void zza() {
        if (this.f10293do == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }
}
