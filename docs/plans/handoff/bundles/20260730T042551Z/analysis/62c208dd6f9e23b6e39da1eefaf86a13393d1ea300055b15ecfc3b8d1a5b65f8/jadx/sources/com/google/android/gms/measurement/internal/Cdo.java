package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import defpackage.C4041yT;
import defpackage.InterfaceC3864vT;
import defpackage.TS;

/* renamed from: com.google.android.gms.measurement.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppMeasurementDynamiteService.Cdo f10298do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppMeasurementDynamiteService f10299do;

    public Cdo(AppMeasurementDynamiteService appMeasurementDynamiteService, AppMeasurementDynamiteService.Cdo cdo) {
        this.f10298do = cdo;
        this.f10299do = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3864vT interfaceC3864vT;
        C4041yT c4041yT = this.f10299do.f10293do.f3702do;
        TS.m2244else(c4041yT);
        c4041yT.mo1960catch();
        c4041yT.m8474import();
        AppMeasurementDynamiteService.Cdo cdo = this.f10298do;
        if (cdo != null && cdo != (interfaceC3864vT = c4041yT.f16780do)) {
            Preconditions.checkState(interfaceC3864vT == null, "EventInterceptor already set.");
        }
        c4041yT.f16780do = cdo;
    }
}
