package defpackage;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzbf;

/* loaded from: classes3.dex */
public final class ET implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f794break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzdo f795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppMeasurementDynamiteService f796do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbf f797do;

    public ET(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar, zzbf zzbfVar, String str) {
        this.f795do = zzdoVar;
        this.f797do = zzbfVar;
        this.f794break = str;
        this.f796do = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU m2261while = this.f796do.f10293do.m2261while();
        m2261while.mo1960catch();
        m2261while.m8474import();
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(m2261while.m7571break().mo2255for(), GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        zzdo zzdoVar = this.f795do;
        if (isGooglePlayServicesAvailable == 0) {
            m2261while.m7267static(new RunnableC3806uU(m2261while, this.f797do, this.f794break, zzdoVar));
        } else {
            m2261while.mo2249case().f13722new.m7369if("Not bundling data. Service unavailable or out of date");
            m2261while.m7571break().m7598transient(zzdoVar, new byte[0]);
        }
    }
}
