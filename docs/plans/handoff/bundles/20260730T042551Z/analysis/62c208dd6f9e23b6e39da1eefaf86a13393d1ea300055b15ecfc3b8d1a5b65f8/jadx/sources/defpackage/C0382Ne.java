package defpackage;

import defpackage.InterfaceC3161jb;

/* renamed from: Ne, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0382Ne implements InterfaceC3161jb {

    /* renamed from: do, reason: not valid java name */
    public final Throwable f2415do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3161jb f2416do;

    public C0382Ne(InterfaceC3161jb interfaceC3161jb, Throwable th) {
        this.f2415do = th;
        this.f2416do = interfaceC3161jb;
    }

    @Override // defpackage.InterfaceC3161jb
    public final InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb) {
        return this.f2416do.k(interfaceC3161jb);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: new */
    public final <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        return (E) this.f2416do.mo814new(cfor);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: strictfp */
    public final <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super InterfaceC3161jb.Cif, ? extends R> interfaceC3641rk) {
        return (R) this.f2416do.mo815strictfp(r, interfaceC3641rk);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: this */
    public final InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        return this.f2416do.mo816this(cfor);
    }
}
