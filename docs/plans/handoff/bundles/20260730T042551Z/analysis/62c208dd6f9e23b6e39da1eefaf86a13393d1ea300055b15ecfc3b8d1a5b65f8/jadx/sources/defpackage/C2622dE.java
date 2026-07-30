package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.C3201kE;
import defpackage.C3371n7;
import defpackage.InterfaceC0634Yo;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: dE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2622dE<T> {

    /* renamed from: do, reason: not valid java name */
    public final V5 f12455do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f12456do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3632rb f12457do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3641rk<T, InterfaceC0576Wa<? super C3206kJ>, Object> f12458do;

    public C2622dE(InterfaceC3632rb interfaceC3632rb, C3260lE c3260lE, C3319mE c3319mE, C3378nE c3378nE) {
        C0173Do.m401try(c3319mE, "onUndeliveredElement");
        this.f12457do = interfaceC3632rb;
        this.f12458do = c3378nE;
        this.f12455do = new V5(Api.BaseClientBuilder.API_PRIORITY_OTHER, null);
        this.f12456do = new AtomicInteger(0);
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) interfaceC3632rb.mo2424try().mo814new(InterfaceC0634Yo.Cif.f4763do);
        if (interfaceC0634Yo == null) {
            return;
        }
        interfaceC0634Yo.f(new C0739bE(c3260lE, this, c3319mE));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6444do(C3201kE.Cdo cdo) {
        Object m2521default = this.f12455do.m2521default(cdo);
        boolean z = m2521default instanceof C3371n7.Cdo;
        if (z) {
            C3371n7.Cdo cdo2 = z ? (C3371n7.Cdo) m2521default : null;
            Throwable th = cdo2 != null ? cdo2.f14466do : null;
            if (th != null) {
                throw th;
            }
            throw new C2910i8("Channel was closed normally");
        }
        if (!(!(m2521default instanceof C3371n7.Cif))) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.f12456do.getAndIncrement() == 0) {
            C0315Kc.m1177static(this.f12457do, new C0798cE(this, null));
        }
    }
}
