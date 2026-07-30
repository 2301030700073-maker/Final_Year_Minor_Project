package defpackage;

import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import java.util.List;

/* renamed from: s9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC3667s9 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f15409do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15410for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f15411if;

    public /* synthetic */ RunnableC3667s9(int i, Object obj, Object obj2) {
        this.f15410for = i;
        this.f15409do = obj;
        this.f15411if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15410for) {
            case 0:
                C0525Tp c0525Tp = (C0525Tp) this.f15409do;
                InterfaceC3655ry interfaceC3655ry = (InterfaceC3655ry) this.f15411if;
                synchronized (c0525Tp) {
                    if (c0525Tp.f3749if == null) {
                        c0525Tp.f3748do.add(interfaceC3655ry);
                    } else {
                        c0525Tp.f3749if.add(interfaceC3655ry.get());
                    }
                }
                return;
            case 1:
                ((C0357Mb) this.f15409do).m1440for((String) this.f15411if, Boolean.FALSE);
                return;
            case 2:
                KJ kj = (KJ) this.f15409do;
                kj.f1785do.m2969goto(kj.f1786do, (List) this.f15411if);
                return;
            case 3:
                AppStartTrace appStartTrace = (AppStartTrace) this.f15409do;
                C2684eI.Cdo cdo = (C2684eI.Cdo) this.f15411if;
                Timer timer = AppStartTrace.f11925catch;
                appStartTrace.getClass();
                appStartTrace.f11931do.m66for(cdo.m6305const(), EnumC3601r2.FOREGROUND_BACKGROUND);
                return;
            default:
                C0177Ds c0177Ds = (C0177Ds) this.f15409do;
                Timer timer2 = (Timer) this.f15411if;
                Q0 q0 = C0177Ds.f694do;
                R0 m406for = c0177Ds.m406for(timer2);
                if (m406for != null) {
                    c0177Ds.f697do.add(m406for);
                    return;
                }
                return;
        }
    }
}
