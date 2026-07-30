package defpackage;

import android.os.Build;
import android.os.RemoteException;
import android.util.SparseArray;
import com.android.billingclient.api.Cdo;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zzo;
import java.util.ArrayList;
import java.util.List;

/* renamed from: uV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3807uV implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f15896do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15897for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f15898if;

    public /* synthetic */ RunnableC3807uV(int i, Object obj, Object obj2) {
        this.f15897for = i;
        this.f15896do = obj;
        this.f15898if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean contains;
        switch (this.f15897for) {
            case 0:
                C3428o5 c3428o5 = (C3428o5) this.f15896do;
                Cdo cdo = (Cdo) this.f15898if;
                if (c3428o5.f14664do.f1641do != null) {
                    c3428o5.f14664do.f1641do.mo133try(cdo, null);
                    break;
                } else {
                    zze.zzl("BillingClient", "No valid listener is set in BroadcastManager");
                    break;
                }
            case 1:
                ((InterfaceC3511pT) this.f15896do).mo2260try();
                if (C0820cd.m4913else()) {
                    ((InterfaceC3511pT) this.f15896do).mo2253do().m1964public(this);
                    break;
                } else {
                    boolean z = ((EP) this.f15898if).f788do != 0;
                    ((EP) this.f15898if).f788do = 0L;
                    if (z) {
                        ((EP) this.f15898if).mo451for();
                        break;
                    }
                }
                break;
            case 2:
                YS ys = (YS) this.f15898if;
                ys.f4740do.p();
                ys.f4740do.f((zzo) this.f15896do);
                break;
            case 3:
                C4041yT c4041yT = (C4041yT) this.f15896do;
                List<zzno> list = (List) this.f15898if;
                c4041yT.mo1960catch();
                if (Build.VERSION.SDK_INT >= 30) {
                    SparseArray<Long> m8726switch = c4041yT.m7574this().m8726switch();
                    for (zzno zznoVar : list) {
                        contains = m8726switch.contains(zznoVar.f10319for);
                        if (!contains || m8726switch.get(zznoVar.f10319for).longValue() < zznoVar.f10318do) {
                            c4041yT.m8747transient().add(zznoVar);
                        }
                    }
                    c4041yT.b();
                    break;
                }
                break;
            case 4:
                ((C4041yT) this.f15898if).m8744switch((Boolean) this.f15896do, true);
                break;
            case 5:
                Object obj = this.f15898if;
                C3217kU c3217kU = (C3217kU) obj;
                YR yr = c3217kU.f13997do;
                if (yr == null) {
                    c3217kU.mo2249case().f13717do.m7369if("Failed to send current screen to service");
                    break;
                } else {
                    try {
                        Object obj2 = this.f15896do;
                        if (((C2696eU) obj2) == null) {
                            yr.mo2923native(0L, null, null, ((C3217kU) obj).mo2255for().getPackageName());
                        } else {
                            yr.mo2923native(((C2696eU) obj2).f12680do, ((C2696eU) obj2).f12681do, ((C2696eU) obj2).f12684if, ((C3217kU) obj).mo2255for().getPackageName());
                        }
                        ((C3217kU) obj).m7271volatile();
                        break;
                    } catch (RemoteException e) {
                        c3217kU.mo2249case().f13717do.m7368for("Failed to send current screen to the service", e);
                        return;
                    }
                }
            case 6:
                ZU zu = (ZU) this.f15896do;
                zu.p();
                Runnable runnable = (Runnable) this.f15898if;
                zu.mo2253do().mo1960catch();
                if (zu.f4843do == null) {
                    zu.f4843do = new ArrayList();
                }
                zu.f4843do.add(runnable);
                zu.r();
                break;
            default:
                Object obj3 = this.f15896do;
                boolean mo596final = ((FG) obj3).mo596final();
                Object obj4 = this.f15898if;
                if (mo596final) {
                    ((C3685sR) obj4).f15491do.m2837return();
                    break;
                } else {
                    try {
                        ((C3685sR) obj4).f15491do.m2836public(((C3685sR) obj4).f15492do.then((FG) obj3));
                        break;
                    } catch (WA e2) {
                        if (e2.getCause() instanceof Exception) {
                            ((C3685sR) obj4).f15491do.m2835native((Exception) e2.getCause());
                            return;
                        } else {
                            ((C3685sR) obj4).f15491do.m2835native(e2);
                            return;
                        }
                    } catch (Exception e3) {
                        ((C3685sR) obj4).f15491do.m2835native(e3);
                        return;
                    }
                }
        }
    }

    public /* synthetic */ RunnableC3807uV(Object obj, Object obj2, int i) {
        this.f15897for = i;
        this.f15896do = obj2;
        this.f15898if = obj;
    }

    public RunnableC3807uV(ZU zu, Runnable runnable) {
        this.f15897for = 6;
        this.f15896do = zu;
        this.f15898if = runnable;
    }
}
