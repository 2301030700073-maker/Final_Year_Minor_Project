package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;

/* renamed from: mU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3335mU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzo f14350do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzon f14351do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f14352do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f14353do;

    public RunnableC3335mU(C3217kU c3217kU, zzo zzoVar, boolean z, zzon zzonVar) {
        this.f14350do = zzoVar;
        this.f14353do = z;
        this.f14351do = zzonVar;
        this.f14352do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU c3217kU = this.f14352do;
        YR yr = c3217kU.f13997do;
        if (yr == null) {
            c3217kU.mo2249case().f13717do.m7369if("Discarding data. Failed to set user property");
            return;
        }
        zzo zzoVar = this.f14350do;
        Preconditions.checkNotNull(zzoVar);
        c3217kU.m7270throws(yr, this.f14353do ? null : this.f14351do, zzoVar);
        c3217kU.m7271volatile();
    }
}
