package defpackage;

import android.app.job.JobParameters;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzo;

/* loaded from: classes.dex */
public final /* synthetic */ class RQ implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3173do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3174for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f3175for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f3176if;

    public /* synthetic */ RQ(Object obj, Object obj2, Object obj3, int i) {
        this.f3174for = i;
        this.f3173do = obj;
        this.f3176if = obj2;
        this.f3175for = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f3174for;
        Object obj = this.f3175for;
        Object obj2 = this.f3176if;
        Object obj3 = this.f3173do;
        switch (i) {
            case 0:
                ((C2811gR) obj3).m6735continue((C4026yE) obj2, (InterfaceC4085zE) obj);
                return;
            case 1:
                try {
                    if (!((C3217kU) obj).m7574this().m8718default().m7965while()) {
                        ((C3217kU) obj).mo2249case().f13713case.m7369if("Analytics storage consent denied; will not get app instance id");
                        ((C3217kU) obj).m8798final().e(null);
                        ((C3217kU) obj).m7574this().f16745do.m188if(null);
                        return;
                    }
                    YR yr = ((C3217kU) obj).f13997do;
                    if (yr == null) {
                        ((C3217kU) obj).mo2249case().f13717do.m7369if("Failed to get app instance id");
                        return;
                    }
                    Preconditions.checkNotNull((zzo) obj3);
                    String mo2918class = yr.mo2918class((zzo) obj3);
                    if (mo2918class != null) {
                        ((C3217kU) obj).m8798final().e(mo2918class);
                        ((C3217kU) obj).m7574this().f16745do.m188if(mo2918class);
                    }
                    ((C3217kU) obj).m7271volatile();
                    ((C3217kU) obj).m7571break().m7584implements(mo2918class, (zzdo) obj2);
                    return;
                } catch (RemoteException e) {
                    ((C3217kU) obj).mo2249case().f13717do.m7368for("Failed to get app instance id", e);
                    return;
                } finally {
                    ((C3217kU) obj).m7571break().m7584implements(null, (zzdo) obj2);
                }
            default:
                EU eu = (EU) obj3;
                eu.getClass();
                ((C3156jS) obj2).f13723this.m7369if("AppMeasurementJobService processed last upload request.");
                eu.f798do.mo1430do((JobParameters) obj);
                return;
        }
    }

    public RQ(C3217kU c3217kU, zzo zzoVar, zzdo zzdoVar) {
        this.f3174for = 1;
        this.f3173do = zzoVar;
        this.f3176if = zzdoVar;
        this.f3175for = c3217kU;
    }
}
