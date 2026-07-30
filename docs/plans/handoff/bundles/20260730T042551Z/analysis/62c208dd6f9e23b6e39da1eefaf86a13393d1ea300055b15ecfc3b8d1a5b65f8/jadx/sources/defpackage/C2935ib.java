package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: ib, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2935ib extends AbstractC0459Qp implements InterfaceC2650dk<Throwable, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C6<Object> f13525do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC0140Cd<Object> f13526do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935ib(C6<Object> c6, InterfaceC0140Cd<Object> interfaceC0140Cd) {
        super(1);
        this.f13525do = c6;
        this.f13526do = interfaceC0140Cd;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(Throwable th) {
        Throwable th2 = th;
        boolean z = false;
        C6<Object> c6 = this.f13525do;
        if (th2 == null) {
            Object mo278class = this.f13526do.mo278class();
            c6.f335do = true;
            E6<Object> e6 = c6.f332do;
            if (e6 != null && e6.f734do.mo1469throw(mo278class)) {
                z = true;
            }
            if (z) {
                c6.f334do = null;
                c6.f332do = null;
                c6.f333do = null;
            }
        } else if (th2 instanceof CancellationException) {
            c6.f335do = true;
            E6<Object> e62 = c6.f332do;
            if (e62 != null && e62.f734do.cancel(true)) {
                z = true;
            }
            if (z) {
                c6.f334do = null;
                c6.f332do = null;
                c6.f333do = null;
            }
        } else {
            c6.f335do = true;
            E6<Object> e63 = c6.f332do;
            if (e63 != null && e63.f734do.mo1470while(th2)) {
                z = true;
            }
            if (z) {
                c6.f334do = null;
                c6.f332do = null;
                c6.f333do = null;
            }
        }
        return C3206kJ.f13965do;
    }
}
