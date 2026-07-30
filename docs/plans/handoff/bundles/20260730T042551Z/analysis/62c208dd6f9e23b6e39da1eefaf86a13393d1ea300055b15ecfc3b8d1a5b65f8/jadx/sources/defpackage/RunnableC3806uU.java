package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzbf;

/* renamed from: uU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3806uU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f15892break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzdo f15893do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbf f15894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f15895do;

    public RunnableC3806uU(C3217kU c3217kU, zzbf zzbfVar, String str, zzdo zzdoVar) {
        this.f15894do = zzbfVar;
        this.f15892break = str;
        this.f15893do = zzdoVar;
        this.f15895do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdo zzdoVar = this.f15893do;
        C3217kU c3217kU = this.f15895do;
        try {
            YR yr = c3217kU.f13997do;
            if (yr == null) {
                c3217kU.mo2249case().f13717do.m7369if("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] mo2920extends = yr.mo2920extends(this.f15894do, this.f15892break);
            c3217kU.m7271volatile();
            c3217kU.m7571break().m7598transient(zzdoVar, mo2920extends);
        } catch (RemoteException e) {
            c3217kU.mo2249case().f13717do.m7368for("Failed to send event to the service to bundle", e);
        } finally {
            c3217kU.m7571break().m7598transient(zzdoVar, null);
        }
    }
}
