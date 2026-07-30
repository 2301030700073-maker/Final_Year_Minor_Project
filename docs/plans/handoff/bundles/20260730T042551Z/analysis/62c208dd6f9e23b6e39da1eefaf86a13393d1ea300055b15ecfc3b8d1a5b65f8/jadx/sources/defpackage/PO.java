package defpackage;

import android.content.SharedPreferences;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final /* synthetic */ class PO implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2778do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2779for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2780if;

    public /* synthetic */ PO(int i, Object obj, Object obj2) {
        this.f2779for = i;
        this.f2778do = obj;
        this.f2780if = obj2;
    }

    /* renamed from: do, reason: not valid java name */
    private final void m1771do() {
        synchronized (((AU) this.f2780if)) {
            try {
                ((AU) this.f2780if).f91do = false;
                if (!((AU) this.f2780if).f90do.m7264package()) {
                    ((AU) this.f2780if).f90do.mo2249case().f13723this.m7369if("Connected to service");
                    C3217kU c3217kU = ((AU) this.f2780if).f90do;
                    YR yr = (YR) this.f2778do;
                    c3217kU.mo1960catch();
                    Preconditions.checkNotNull(yr);
                    c3217kU.f13997do = yr;
                    c3217kU.m7271volatile();
                    c3217kU.m7268strictfp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 3;
        switch (this.f2779for) {
            case 0:
                C3428o5 c3428o5 = (C3428o5) this.f2778do;
                InterfaceC4085zE interfaceC4085zE = (InterfaceC4085zE) this.f2780if;
                c3428o5.getClass();
                Cdo cdo = Cif.f9117final;
                c3428o5.m7663default(24, 8, cdo);
                interfaceC4085zE.mo5225new(cdo, null);
                return;
            case 1:
                C3428o5 c3428o52 = (C3428o5) this.f2778do;
                D d = (D) this.f2780if;
                c3428o52.getClass();
                Cdo cdo2 = Cif.f9117final;
                c3428o52.m7663default(24, 3, cdo2);
                d.mo324if(cdo2);
                return;
            case 2:
                ServiceConnectionC3630rV serviceConnectionC3630rV = (ServiceConnectionC3630rV) this.f2778do;
                int i2 = ((JV) this.f2780if).f1647do;
                synchronized (serviceConnectionC3630rV) {
                    JV jv = (JV) serviceConnectionC3630rV.f15291do.get(i2);
                    if (jv != null) {
                        serviceConnectionC3630rV.f15291do.remove(i2);
                        jv.m1039for(new C2855hC("Timed out waiting for response", null));
                        serviceConnectionC3630rV.m7969for();
                    }
                }
                return;
            case 3:
                C4041yT c4041yT = (C4041yT) this.f2778do;
                String str = (String) this.f2780if;
                C0812cS m8796class = c4041yT.m8796class();
                String str2 = m8796class.f8544goto;
                r1 = (str2 == null || str2.equals(str)) ? false : true;
                m8796class.f8544goto = str;
                if (r1) {
                    c4041yT.m8796class().m4909switch();
                    return;
                }
                return;
            case 4:
                C4041yT c4041yT2 = (C4041yT) this.f2780if;
                C4040yS m7574this = c4041yT2.m7574this();
                MP mp = (MP) this.f2778do;
                m7574this.mo1960catch();
                if (C3628rT.m7956this(mp.f2177do, m7574this.m8728throws().f2177do)) {
                    SharedPreferences.Editor edit = m7574this.m8724static().edit();
                    edit.putString("dma_consent_settings", mp.f2179do);
                    edit.apply();
                } else {
                    r1 = false;
                }
                if (!r1) {
                    c4041yT2.mo2249case().f13718else.m7368for("Lower precedence consent source ignored, proposed source", Integer.valueOf(mp.f2177do));
                    return;
                }
                c4041yT2.mo2249case().f13723this.m7368for("Setting DMA consent(FE)", mp);
                if (!c4041yT2.m8800throw().m7258abstract()) {
                    c4041yT2.m8800throw().m7260default(false);
                    return;
                }
                C3217kU m8800throw = c4041yT2.m8800throw();
                m8800throw.mo1960catch();
                m8800throw.m8474import();
                m8800throw.m7267static(new PR(m8800throw, i));
                return;
            case 5:
                m1771do();
                return;
            default:
                Object obj = this.f2780if;
                try {
                    FG then = ((C3748tV) obj).f15720do.then(((FG) this.f2778do).mo592class());
                    if (then == null) {
                        ((C3748tV) obj).onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    C3748tV c3748tV = (C3748tV) obj;
                    OV ov = JG.f1620do;
                    then.mo590case(ov, c3748tV);
                    then.mo605try(ov, c3748tV);
                    then.mo594do(ov, c3748tV);
                    return;
                } catch (WA e) {
                    if (e.getCause() instanceof Exception) {
                        ((C3748tV) obj).onFailure((Exception) e.getCause());
                        return;
                    } else {
                        ((C3748tV) obj).onFailure(e);
                        return;
                    }
                } catch (CancellationException unused) {
                    ((C3748tV) obj).mo355for();
                    return;
                } catch (Exception e2) {
                    ((C3748tV) obj).onFailure(e2);
                    return;
                }
        }
    }

    public /* synthetic */ PO(Object obj, Object obj2, int i) {
        this.f2779for = i;
        this.f2778do = obj2;
        this.f2780if = obj;
    }
}
