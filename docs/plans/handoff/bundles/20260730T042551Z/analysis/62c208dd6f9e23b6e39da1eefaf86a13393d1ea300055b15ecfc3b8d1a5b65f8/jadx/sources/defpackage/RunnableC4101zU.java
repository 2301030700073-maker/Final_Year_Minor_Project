package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzo;
import java.util.ArrayList;

/* renamed from: zU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC4101zU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f16912break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f16913catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzdo f16914do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f16915do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f16916do;

    public RunnableC4101zU(C3217kU c3217kU, String str, String str2, zzo zzoVar, zzdo zzdoVar) {
        this.f16912break = str;
        this.f16913catch = str2;
        this.f16915do = zzoVar;
        this.f16914do = zzdoVar;
        this.f16916do = c3217kU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzo zzoVar = this.f16915do;
        String str = this.f16913catch;
        String str2 = this.f16912break;
        zzdo zzdoVar = this.f16914do;
        C3217kU c3217kU = this.f16916do;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            YR yr = c3217kU.f13997do;
            if (yr == null) {
                c3217kU.mo2249case().f13717do.m7367do(str2, "Failed to get conditional properties; not connected to service", str);
                return;
            }
            Preconditions.checkNotNull(zzoVar);
            ArrayList<Bundle> s = C3395nV.s(yr.mo2928throw(str2, str, zzoVar));
            c3217kU.m7271volatile();
            c3217kU.m7571break().m7586interface(zzdoVar, s);
        } catch (RemoteException e) {
            c3217kU.mo2249case().f13717do.m7370new("Failed to get conditional properties; remote exception", str2, str, e);
        } finally {
            c3217kU.m7571break().m7586interface(zzdoVar, arrayList);
        }
    }
}
