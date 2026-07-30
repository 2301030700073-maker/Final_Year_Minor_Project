package defpackage;

import defpackage.InterfaceC3161jb;

/* renamed from: this, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthis implements InterfaceC3161jb.Cif {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3161jb.Cfor<?> f15761do;

    public Cthis(InterfaceC3161jb.Cfor<?> cfor) {
        this.f15761do = cfor;
    }

    @Override // defpackage.InterfaceC3161jb.Cif
    /* renamed from: break */
    public final InterfaceC3161jb.Cfor<?> mo6576break() {
        return this.f15761do;
    }

    @Override // defpackage.InterfaceC3161jb
    public final InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb) {
        C0173Do.m401try(interfaceC3161jb, "context");
        return InterfaceC3161jb.Cdo.m7138do(this, interfaceC3161jb);
    }

    @Override // defpackage.InterfaceC3161jb.Cif, defpackage.InterfaceC3161jb
    /* renamed from: new */
    public <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        return (E) InterfaceC3161jb.Cif.Cdo.m7141if(this, cfor);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: strictfp */
    public final <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super InterfaceC3161jb.Cif, ? extends R> interfaceC3641rk) {
        C0173Do.m401try(interfaceC3641rk, "operation");
        return interfaceC3641rk.invoke(r, this);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: this */
    public InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        return InterfaceC3161jb.Cif.Cdo.m7140for(this, cfor);
    }
}
