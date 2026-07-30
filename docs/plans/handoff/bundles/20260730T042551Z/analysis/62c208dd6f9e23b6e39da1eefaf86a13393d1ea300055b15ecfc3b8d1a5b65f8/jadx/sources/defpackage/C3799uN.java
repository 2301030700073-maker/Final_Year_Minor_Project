package defpackage;

/* renamed from: uN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3799uN extends AbstractRunnableC2749fO {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ServiceConnectionC3858vN f15879do;

    public C3799uN(ServiceConnectionC3858vN serviceConnectionC3858vN) {
        this.f15879do = serviceConnectionC3858vN;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        ServiceConnectionC3858vN serviceConnectionC3858vN = this.f15879do;
        C3917wN c3917wN = serviceConnectionC3858vN.f16081do;
        c3917wN.f16327do.m6563if("unlinkToDeath", new Object[0]);
        c3917wN.f16326do.asBinder().unlinkToDeath(c3917wN.f16328do, 0);
        C3917wN c3917wN2 = serviceConnectionC3858vN.f16081do;
        c3917wN2.f16326do = null;
        c3917wN2.f16337do = false;
    }
}
