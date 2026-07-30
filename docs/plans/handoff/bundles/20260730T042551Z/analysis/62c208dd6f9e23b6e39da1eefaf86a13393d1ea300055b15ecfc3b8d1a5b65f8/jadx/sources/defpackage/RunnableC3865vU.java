package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: vU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3865vU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzbf f16090do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f16091do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f16092do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f16093do;

    public RunnableC3865vU(C3217kU c3217kU, zzo zzoVar, boolean z, zzbf zzbfVar, String str) {
        this.f16091do = zzoVar;
        this.f16093do = z;
        this.f16090do = zzbfVar;
        this.f16092do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU c3217kU = this.f16092do;
        YR yr = c3217kU.f13997do;
        if (yr == null) {
            c3217kU.mo2249case().f13717do.m7369if("Discarding data. Failed to send event to service");
            return;
        }
        zzo zzoVar = this.f16091do;
        Preconditions.checkNotNull(zzoVar);
        c3217kU.m7270throws(yr, this.f16093do ? null : this.f16090do, zzoVar);
        c3217kU.m7271volatile();
    }
}
