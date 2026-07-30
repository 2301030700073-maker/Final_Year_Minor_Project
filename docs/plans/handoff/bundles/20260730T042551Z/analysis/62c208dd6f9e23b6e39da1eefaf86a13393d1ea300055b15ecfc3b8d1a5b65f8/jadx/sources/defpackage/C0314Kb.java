package defpackage;

import java.io.File;
import java.util.Iterator;

/* renamed from: Kb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0314Kb implements NF<Boolean, Void> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FG f1825do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C0357Mb f1826do;

    public C0314Kb(C0357Mb c0357Mb, XV xv) {
        this.f1826do = c0357Mb;
        this.f1825do = xv;
    }

    @Override // defpackage.NF
    public final FG<Void> then(Boolean bool) {
        Boolean bool2 = bool;
        boolean booleanValue = bool2.booleanValue();
        C0357Mb c0357Mb = this.f1826do;
        if (booleanValue) {
            boolean booleanValue2 = bool2.booleanValue();
            C0271Ic c0271Ic = c0357Mb.f2197do;
            if (!booleanValue2) {
                c0271Ic.getClass();
                throw new IllegalStateException("An invalid data collection token was used.");
            }
            c0271Ic.f1542if.m722new(null);
            return this.f1825do.mo600import(c0357Mb.f2207do.f13734do, new C0292Jb(this));
        }
        Iterator it = C0495Sh.m2182try(c0357Mb.f2202do.f3538if.listFiles(C0357Mb.f2193do)).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
        C0495Sh c0495Sh = c0357Mb.f2199do.f2594do.f4875do;
        C0643Zb.m3052do(C0495Sh.m2182try(c0495Sh.f3539new.listFiles()));
        C0643Zb.m3052do(C0495Sh.m2182try(c0495Sh.f3540try.listFiles()));
        C0643Zb.m3052do(C0495Sh.m2182try(c0495Sh.f3534case.listFiles()));
        c0357Mb.f2209for.m722new(null);
        return LG.m1320try(null);
    }
}
