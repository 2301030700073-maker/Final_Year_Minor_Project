package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: w7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3901w7 extends AbstractC0713ap {

    /* renamed from: do, reason: not valid java name */
    public final U6<?> f16208do;

    public C3901w7(U6<?> u6) {
        this.f16208do = u6;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final /* bridge */ /* synthetic */ C3206kJ mo364this(Throwable th) {
        mo1461throw(th);
        return C3206kJ.f13965do;
    }

    @Override // defpackage.W8
    /* renamed from: throw */
    public final void mo1461throw(Throwable th) {
        boolean z;
        C2713ep m6465while = m6465while();
        U6<?> u6 = this.f16208do;
        Throwable mo2357public = u6.mo2357public(m6465while);
        boolean z2 = false;
        if (u6.m2351default()) {
            InterfaceC0576Wa<?> interfaceC0576Wa = u6.f3831do;
            C0173Do.m396for(interfaceC0576Wa, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            C4107ze c4107ze = (C4107ze) interfaceC0576Wa;
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C4107ze.f16931do;
                Object obj = atomicReferenceFieldUpdater.get(c4107ze);
                C0174Dp c0174Dp = C3850vF.f16048if;
                boolean z3 = true;
                if (C0173Do.m394do(obj, c0174Dp)) {
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(c4107ze, c0174Dp, mo2357public)) {
                            z = true;
                            break;
                        } else if (atomicReferenceFieldUpdater.get(c4107ze) != c0174Dp) {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        break;
                    }
                } else {
                    if (obj instanceof Throwable) {
                        break;
                    }
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(c4107ze, obj, null)) {
                            break;
                        } else if (atomicReferenceFieldUpdater.get(c4107ze) != obj) {
                            z3 = false;
                            break;
                        }
                    }
                    if (z3) {
                        break;
                    }
                }
            }
            z2 = true;
        }
        if (z2) {
            return;
        }
        u6.mo2219super(mo2357public);
        if (u6.m2351default()) {
            return;
        }
        u6.m2353import();
    }
}
