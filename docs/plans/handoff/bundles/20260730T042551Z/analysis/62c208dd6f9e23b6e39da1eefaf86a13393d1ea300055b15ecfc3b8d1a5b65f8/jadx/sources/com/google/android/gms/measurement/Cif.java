package com.google.android.gms.measurement;

import android.os.Bundle;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzon;
import defpackage.C0820cd;
import defpackage.C2638dU;
import defpackage.C2696eU;
import defpackage.C3156jS;
import defpackage.C3393nT;
import defpackage.C3395nV;
import defpackage.C4041yT;
import defpackage.F2;
import defpackage.QS;
import defpackage.QT;
import defpackage.RT;
import defpackage.TS;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.gms.measurement.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends AppMeasurement.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final TS f10290do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4041yT f10291do;

    public Cif(TS ts) {
        Preconditions.checkNotNull(ts);
        this.f10290do = ts;
        C4041yT c4041yT = ts.f3702do;
        TS.m2244else(c4041yT);
        this.f10291do = c4041yT;
    }

    @Override // defpackage.YT
    /* renamed from: do */
    public final void mo2931do(String str, String str2, Bundle bundle) {
        C4041yT c4041yT = this.f10290do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.m8734default(str, str2, bundle);
    }

    @Override // defpackage.YT
    /* renamed from: for */
    public final List<Bundle> mo2932for(String str, String str2) {
        C4041yT c4041yT = this.f10291do;
        if (c4041yT.mo2253do().m1966static()) {
            c4041yT.mo2249case().f13717do.m7369if("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (C0820cd.m4913else()) {
            c4041yT.mo2249case().f13717do.m7369if("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        QS qs = ((TS) ((C3393nT) c4041yT).f14527do).f3683do;
        TS.m2247this(qs);
        qs.m1967super(atomicReference, OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS, "get conditional user properties", new RT(c4041yT, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return C3395nV.s(list);
        }
        c4041yT.mo2249case().f13717do.m7368for("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    @Override // defpackage.YT
    /* renamed from: if */
    public final Map<String, Object> mo2933if(String str, String str2, boolean z) {
        C4041yT c4041yT = this.f10291do;
        if (c4041yT.mo2253do().m1966static()) {
            c4041yT.mo2249case().f13717do.m7369if("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (C0820cd.m4913else()) {
            c4041yT.mo2249case().f13717do.m7369if("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        QS qs = ((TS) ((C3393nT) c4041yT).f14527do).f3683do;
        TS.m2247this(qs);
        qs.m1967super(atomicReference, OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS, "get user properties", new QT(c4041yT, atomicReference, str, str2, z));
        List<zzon> list = (List) atomicReference.get();
        if (list == null) {
            C3156jS mo2249case = c4041yT.mo2249case();
            mo2249case.f13717do.m7368for("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        F2 f2 = new F2(list.size());
        for (zzon zzonVar : list) {
            Object f = zzonVar.f();
            if (f != null) {
                f2.put(zzonVar.f10352break, f);
            }
        }
        return f2;
    }

    @Override // defpackage.YT
    /* renamed from: new */
    public final int mo2934new(String str) {
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    @Override // defpackage.YT
    /* renamed from: try */
    public final void mo2935try(String str, String str2, Bundle bundle) {
        C4041yT c4041yT = this.f10291do;
        c4041yT.m8736finally(str, str2, bundle, true, true, c4041yT.mo2257new().currentTimeMillis());
    }

    @Override // defpackage.YT
    public final void zza(Bundle bundle) {
        C4041yT c4041yT = this.f10291do;
        c4041yT.d(bundle, c4041yT.mo2257new().currentTimeMillis());
    }

    @Override // defpackage.YT
    public final void zzb(String str) {
        TS ts = this.f10290do;
        ts.m2252const().m3130public(str, ts.f3692do.elapsedRealtime());
    }

    @Override // defpackage.YT
    public final void zzc(String str) {
        TS ts = this.f10290do;
        ts.m2252const().m3133switch(ts.f3692do.elapsedRealtime(), str);
    }

    @Override // defpackage.YT
    public final long zzf() {
        C3395nV c3395nV = this.f10290do.f3700do;
        TS.m2245goto(c3395nV);
        return c3395nV.L();
    }

    @Override // defpackage.YT
    public final String zzg() {
        return this.f10291do.f16778do.get();
    }

    @Override // defpackage.YT
    public final String zzh() {
        C2638dU c2638dU = ((TS) ((C3393nT) this.f10291do).f14527do).f3694do;
        TS.m2244else(c2638dU);
        C2696eU c2696eU = c2638dU.f12494do;
        if (c2696eU != null) {
            return c2696eU.f12684if;
        }
        return null;
    }

    @Override // defpackage.YT
    public final String zzi() {
        C2638dU c2638dU = ((TS) ((C3393nT) this.f10291do).f14527do).f3694do;
        TS.m2244else(c2638dU);
        C2696eU c2696eU = c2638dU.f12494do;
        if (c2696eU != null) {
            return c2696eU.f12681do;
        }
        return null;
    }

    @Override // defpackage.YT
    public final String zzj() {
        return this.f10291do.f16778do.get();
    }
}
