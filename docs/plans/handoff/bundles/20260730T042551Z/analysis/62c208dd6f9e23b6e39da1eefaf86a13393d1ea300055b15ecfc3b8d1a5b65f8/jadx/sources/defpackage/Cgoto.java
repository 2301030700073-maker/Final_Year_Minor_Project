package defpackage;

import defpackage.InterfaceC0634Yo;

/* renamed from: goto, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cgoto<T> extends C2713ep implements InterfaceC0576Wa<T>, InterfaceC3632rb {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3161jb f13216do;

    public Cgoto(InterfaceC3161jb interfaceC3161jb, boolean z) {
        super(z);
        g((InterfaceC0634Yo) interfaceC3161jb.mo814new(InterfaceC0634Yo.Cif.f4763do));
        this.f13216do = interfaceC3161jb.k(this);
    }

    @Override // defpackage.C2713ep
    /* renamed from: default */
    public final String mo6578default() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // defpackage.C2713ep
    public final void e(X8 x8) {
        C3515pb.m7796do(this.f13216do, x8);
    }

    @Override // defpackage.C2713ep, defpackage.InterfaceC0634Yo
    /* renamed from: for */
    public final boolean mo2955for() {
        return super.mo2955for();
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        return this.f13216do;
    }

    @Override // defpackage.C2713ep
    public final String m() {
        return super.m();
    }

    @Override // defpackage.C2713ep
    public final void p(Object obj) {
        if (obj instanceof U8) {
            U8 u8 = (U8) obj;
            Throwable th = u8.f3839do;
            u8.getClass();
            U8.f3838do.get(u8);
        }
    }

    @Override // defpackage.InterfaceC3632rb
    /* renamed from: try */
    public final InterfaceC3161jb mo2424try() {
        return this.f13216do;
    }

    public void w(Object obj) {
        mo43native(obj);
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: while */
    public final void mo1746while(Object obj) {
        Throwable m3108do = C0675aA.m3108do(obj);
        if (m3108do != null) {
            obj = new U8(false, m3108do);
        }
        Object i = i(obj);
        if (i == O4.f2578try) {
            return;
        }
        w(i);
    }

    public final void x(int i, Cgoto cgoto, InterfaceC3641rk interfaceC3641rk) {
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 0) {
            try {
                C3850vF.m8458return(C3645ro.m8008package(C3645ro.m8023while(cgoto, this, interfaceC3641rk)), C3206kJ.f13965do, null);
                return;
            } finally {
                mo1746while(C3645ro.m8004import(th));
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                C0173Do.m401try(interfaceC3641rk, "<this>");
                C3645ro.m8008package(C3645ro.m8023while(cgoto, this, interfaceC3641rk)).mo1746while(C3206kJ.f13965do);
                return;
            }
            if (i2 != 3) {
                throw new C0623Yd();
            }
            try {
                InterfaceC3161jb interfaceC3161jb = this.f13216do;
                Object m6541for = C2683eH.m6541for(interfaceC3161jb, null);
                try {
                    JI.m1035do(2, interfaceC3641rk);
                    Object invoke = interfaceC3641rk.invoke(cgoto, this);
                    if (invoke != EnumC3750tb.COROUTINE_SUSPENDED) {
                        mo1746while(invoke);
                    }
                } finally {
                    C2683eH.m6540do(interfaceC3161jb, m6541for);
                }
            } catch (Throwable th) {
            }
        }
    }
}
