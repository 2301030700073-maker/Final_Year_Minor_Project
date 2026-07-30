package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: lU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3276lU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f14163break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f14164catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzdo f14165do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f14166do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f14167do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f14168do;

    public RunnableC3276lU(C3217kU c3217kU, String str, String str2, zzo zzoVar, boolean z, zzdo zzdoVar) {
        this.f14163break = str;
        this.f14164catch = str2;
        this.f14166do = zzoVar;
        this.f14168do = z;
        this.f14165do = zzdoVar;
        this.f14167do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzo zzoVar = this.f14166do;
        String str = this.f14163break;
        zzdo zzdoVar = this.f14165do;
        C3217kU c3217kU = this.f14167do;
        Bundle bundle = new Bundle();
        try {
            YR yr = c3217kU.f13997do;
            String str2 = this.f14164catch;
            if (yr == null) {
                c3217kU.mo2249case().f13717do.m7367do(str, "Failed to get user properties; not connected to service", str2);
                return;
            }
            Preconditions.checkNotNull(zzoVar);
            Bundle m7580static = C3395nV.m7580static(yr.mo2919default(str, str2, this.f14168do, zzoVar));
            c3217kU.m7271volatile();
            c3217kU.m7571break().m7599volatile(zzdoVar, m7580static);
        } catch (RemoteException e) {
            c3217kU.mo2249case().f13717do.m7367do(str, "Failed to get user properties; remote exception", e);
        } finally {
            c3217kU.m7571break().m7599volatile(zzdoVar, bundle);
        }
    }
}
