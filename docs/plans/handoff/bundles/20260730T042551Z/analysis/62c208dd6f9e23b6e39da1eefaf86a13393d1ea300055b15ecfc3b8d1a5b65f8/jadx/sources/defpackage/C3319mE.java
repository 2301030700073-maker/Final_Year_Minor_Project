package defpackage;

import defpackage.C3201kE;
import java.util.concurrent.CancellationException;

/* renamed from: mE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3319mE extends AbstractC0459Qp implements InterfaceC3641rk<C3201kE.Cdo<Object>, Throwable, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public static final C3319mE f14322do = new C3319mE();

    public C3319mE() {
        super(2);
    }

    @Override // defpackage.InterfaceC3641rk
    public final C3206kJ invoke(C3201kE.Cdo<Object> cdo, Throwable th) {
        C3201kE.Cdo<Object> cdo2 = cdo;
        Throwable th2 = th;
        C0173Do.m401try(cdo2, "msg");
        if (cdo2 instanceof C3201kE.Cdo.Cif) {
            C3201kE.Cdo.Cif cif = (C3201kE.Cdo.Cif) cdo2;
            if (th2 == null) {
                th2 = new CancellationException("DataStore scope was cancelled before updateData could complete");
            }
            cif.f13902do.a(th2);
        }
        return C3206kJ.f13965do;
    }
}
