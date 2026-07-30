package defpackage;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* renamed from: mT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3334mT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f14345break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f14346catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzdo f14347do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppMeasurementDynamiteService f14348do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f14349do;

    public RunnableC3334mT(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar, String str, String str2, boolean z) {
        this.f14347do = zzdoVar;
        this.f14345break = str;
        this.f14346catch = str2;
        this.f14349do = z;
        this.f14348do = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU m2261while = this.f14348do.f10293do.m2261while();
        zzdo zzdoVar = this.f14347do;
        String str = this.f14345break;
        String str2 = this.f14346catch;
        boolean z = this.f14349do;
        m2261while.mo1960catch();
        m2261while.m8474import();
        m2261while.m7267static(new RunnableC3276lU(m2261while, str, str2, m2261while.m7263interface(false), z, zzdoVar));
    }
}
