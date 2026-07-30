package defpackage;

/* loaded from: classes3.dex */
public class KB<T> extends Cgoto<T> implements InterfaceC3809ub {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0576Wa<T> f1773do;

    public KB(AbstractC0620Ya abstractC0620Ya, InterfaceC3161jb interfaceC3161jb) {
        super(interfaceC3161jb, true);
        this.f1773do = abstractC0620Ya;
    }

    @Override // defpackage.InterfaceC3809ub
    /* renamed from: catch, reason: not valid java name */
    public final InterfaceC3809ub mo1126catch() {
        InterfaceC0576Wa<T> interfaceC0576Wa = this.f1773do;
        if (interfaceC0576Wa instanceof InterfaceC3809ub) {
            return (InterfaceC3809ub) interfaceC0576Wa;
        }
        return null;
    }

    @Override // defpackage.C2713ep
    public final boolean h() {
        return true;
    }

    @Override // defpackage.C2713ep
    /* renamed from: native */
    public void mo43native(Object obj) {
        C3850vF.m8458return(C3645ro.m8008package(this.f1773do), C3850vF.m8457public(obj), null);
    }

    @Override // defpackage.Cgoto
    public void w(Object obj) {
        this.f1773do.mo1746while(C3850vF.m8457public(obj));
    }
}
