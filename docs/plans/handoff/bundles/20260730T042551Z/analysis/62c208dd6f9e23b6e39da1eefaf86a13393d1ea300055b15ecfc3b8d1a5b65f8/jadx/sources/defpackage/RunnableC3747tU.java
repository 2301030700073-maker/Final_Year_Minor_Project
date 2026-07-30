package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: tU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3747tU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Bundle f15717do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f15718do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f15719do;

    public RunnableC3747tU(C3217kU c3217kU, zzo zzoVar, Bundle bundle) {
        this.f15718do = zzoVar;
        this.f15717do = bundle;
        this.f15719do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzo zzoVar = this.f15718do;
        C3217kU c3217kU = this.f15719do;
        YR yr = c3217kU.f13997do;
        if (yr == null) {
            c3217kU.mo2249case().f13717do.m7369if("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(zzoVar);
            yr.mo2917catch(this.f15717do, zzoVar);
        } catch (RemoteException e) {
            c3217kU.mo2249case().f13717do.m7368for("Failed to send default event parameters to service", e);
        }
    }
}
