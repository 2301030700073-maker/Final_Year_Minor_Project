package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: xU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3983xU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzae f16559do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f16560do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f16561do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f16562do;

    public RunnableC3983xU(C3217kU c3217kU, zzo zzoVar, boolean z, zzae zzaeVar, zzae zzaeVar2) {
        this.f16560do = zzoVar;
        this.f16562do = z;
        this.f16559do = zzaeVar;
        this.f16561do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU c3217kU = this.f16561do;
        YR yr = c3217kU.f13997do;
        if (yr == null) {
            c3217kU.mo2249case().f13717do.m7369if("Discarding data. Failed to send conditional user property to service");
            return;
        }
        zzo zzoVar = this.f16560do;
        Preconditions.checkNotNull(zzoVar);
        c3217kU.m7270throws(yr, this.f16562do ? null : this.f16559do, zzoVar);
        c3217kU.m7271volatile();
    }
}
