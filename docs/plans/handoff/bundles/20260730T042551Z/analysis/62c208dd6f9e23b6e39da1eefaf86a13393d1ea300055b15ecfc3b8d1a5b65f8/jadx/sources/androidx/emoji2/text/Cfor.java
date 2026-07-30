package androidx.emoji2.text;

import androidx.emoji2.text.Cnew;

/* renamed from: androidx.emoji2.text.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends Cnew.Cgoto {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cnew.Cdo f6767do;

    public Cfor(Cnew.Cdo cdo) {
        this.f6767do = cdo;
    }

    @Override // androidx.emoji2.text.Cnew.Cgoto
    /* renamed from: do, reason: not valid java name */
    public final void mo4101do(Throwable th) {
        ((Cnew.Cif) this.f6767do).f6793do.m4109new(th);
    }

    @Override // androidx.emoji2.text.Cnew.Cgoto
    /* renamed from: if, reason: not valid java name */
    public final void mo4102if(Cgoto cgoto) {
        Cnew.Cdo cdo = this.f6767do;
        cdo.f6789do = cgoto;
        cdo.f6788do = new Ccase(cdo.f6789do, new Cnew.Cthis(), ((Cnew.Cif) cdo).f6793do.f6781do);
        ((Cnew.Cif) cdo).f6793do.m4110try();
    }
}
