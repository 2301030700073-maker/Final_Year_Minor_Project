package defpackage;

import android.os.RemoteException;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.android.gms.measurement.internal.zzo;

/* loaded from: classes.dex */
public final /* synthetic */ class QO implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2933do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2934for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2935if;

    public /* synthetic */ QO(int i, Object obj, Object obj2) {
        this.f2934for = i;
        this.f2933do = obj;
        this.f2935if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int delete;
        switch (this.f2934for) {
            case 0:
                C3428o5 c3428o5 = (C3428o5) this.f2933do;
                InterfaceC4127zy interfaceC4127zy = (InterfaceC4127zy) this.f2935if;
                c3428o5.getClass();
                Cdo cdo = Cif.f9117final;
                c3428o5.m7663default(24, 9, cdo);
                interfaceC4127zy.mo5222do(cdo, zzco.zzl());
                return;
            case 1:
                YS ys = (YS) this.f2933do;
                zzo zzoVar = (zzo) this.f2935if;
                ZU zu = ys.f4740do;
                zu.p();
                zu.j(zzoVar);
                return;
            case 2:
                Object obj = this.f2933do;
                Object obj2 = this.f2935if;
                C3217kU c3217kU = (C3217kU) obj2;
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Failed to send measurementEnabled to service");
                    return;
                }
                try {
                    Preconditions.checkNotNull((zzo) obj);
                    yr.mo2924package((zzo) obj);
                    ((C3217kU) obj2).m7271volatile();
                    return;
                } catch (RemoteException e) {
                    c3217kU.mo2249case().f13717do.m7368for("Failed to send measurementEnabled to the service", e);
                    return;
                }
            case 3:
                synchronized (((AU) this.f2935if)) {
                    ((AU) this.f2935if).f91do = false;
                    if (!((AU) this.f2935if).f90do.m7264package()) {
                        ((AU) this.f2935if).f90do.mo2249case().f13720goto.m7369if("Connected to remote service");
                        C3217kU c3217kU2 = ((AU) this.f2935if).f90do;
                        YR yr2 = (YR) this.f2933do;
                        c3217kU2.mo1960catch();
                        Preconditions.checkNotNull(yr2);
                        c3217kU2.f13997do = yr2;
                        c3217kU2.m7271volatile();
                        c3217kU2.m7268strictfp();
                    }
                }
                return;
            default:
                ZU zu2 = (ZU) this.f2935if;
                zu2.mo2253do().mo1960catch();
                zu2.f4828do = new DS(zu2);
                C2868hP c2868hP = new C2868hP(zu2);
                c2868hP.m2734throw();
                zu2.f4838do = c2868hP;
                zu2.e().f4818do = (InterfaceC2691eP) Preconditions.checkNotNull(zu2.f4831do);
                DU du = new DU(zu2);
                du.m2734throw();
                zu2.f4829do = du;
                NV nv = new NV(zu2);
                nv.m2734throw();
                zu2.f4832do = nv;
                C0814cU c0814cU = new C0814cU(zu2);
                c0814cU.m2734throw();
                zu2.f4836do = c0814cU;
                VU vu = new VU(zu2);
                vu.m2734throw();
                zu2.f4834do = vu;
                zu2.f4847do = new C3686sS(zu2);
                if (zu2.f4826do != zu2.f4852if) {
                    zu2.mo2249case().f13717do.m7367do(Integer.valueOf(zu2.f4826do), "Not all upload components initialized", Integer.valueOf(zu2.f4852if));
                }
                zu2.f4848do = true;
                zu2.mo2253do().mo1960catch();
                C2868hP c2868hP2 = zu2.f4838do;
                ZU.m3016extends(c2868hP2);
                c2868hP2.L();
                C2868hP c2868hP3 = zu2.f4838do;
                ZU.m3016extends(c2868hP3);
                c2868hP3.mo1960catch();
                c2868hP3.m2733super();
                if (c2868hP3.k()) {
                    SR<Long> sr = C3684sQ.u;
                    if (sr.m2158do(null).longValue() != 0 && (delete = c2868hP3.m6806native().delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(c2868hP3.mo2257new().currentTimeMillis()), String.valueOf(sr.m2158do(null))})) > 0) {
                        c2868hP3.mo2249case().f13723this.m7368for("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(delete));
                    }
                }
                if (zu2.f4829do.f623new.m8802do() == 0) {
                    zu2.f4829do.f623new.m8803if(zu2.mo2257new().currentTimeMillis());
                }
                zu2.m3041strictfp();
                return;
        }
    }

    public /* synthetic */ QO(Object obj, Object obj2, int i) {
        this.f2934for = i;
        this.f2933do = obj2;
        this.f2935if = obj;
    }
}
