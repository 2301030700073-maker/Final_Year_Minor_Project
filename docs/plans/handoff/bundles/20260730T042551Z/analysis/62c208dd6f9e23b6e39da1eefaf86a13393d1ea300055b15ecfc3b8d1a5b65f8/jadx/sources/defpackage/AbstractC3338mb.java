package defpackage;

import defpackage.InterfaceC0642Za;
import defpackage.InterfaceC3161jb;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: mb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3338mb extends Cthis implements InterfaceC0642Za {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f14362do = new Cdo();

    /* renamed from: mb$do, reason: invalid class name */
    public static final class Cdo extends Cbreak<InterfaceC0642Za, AbstractC3338mb> {

        /* renamed from: mb$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0088do extends AbstractC0459Qp implements InterfaceC2650dk<InterfaceC3161jb.Cif, AbstractC3338mb> {

            /* renamed from: do, reason: not valid java name */
            public static final C0088do f14363do = new C0088do();

            public C0088do() {
                super(1);
            }

            @Override // defpackage.InterfaceC2650dk
            /* renamed from: this */
            public final AbstractC3338mb mo364this(InterfaceC3161jb.Cif cif) {
                InterfaceC3161jb.Cif cif2 = cif;
                if (cif2 instanceof AbstractC3338mb) {
                    return (AbstractC3338mb) cif2;
                }
                return null;
            }
        }

        public Cdo() {
            super(InterfaceC0642Za.Cdo.f4868do, C0088do.f14363do);
        }
    }

    public AbstractC3338mb() {
        super(InterfaceC0642Za.Cdo.f4868do);
    }

    /* renamed from: if */
    public abstract void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable);

    @Override // defpackage.InterfaceC0642Za
    /* renamed from: instanceof */
    public final C4107ze mo3051instanceof(AbstractC0620Ya abstractC0620Ya) {
        return new C4107ze(this, abstractC0620Ya);
    }

    @Override // defpackage.InterfaceC0642Za
    public final void l(InterfaceC0576Wa<?> interfaceC0576Wa) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C4107ze c4107ze = (C4107ze) interfaceC0576Wa;
        do {
            atomicReferenceFieldUpdater = C4107ze.f16931do;
        } while (atomicReferenceFieldUpdater.get(c4107ze) == C3850vF.f16048if);
        Object obj = atomicReferenceFieldUpdater.get(c4107ze);
        U6 u6 = obj instanceof U6 ? (U6) obj : null;
        if (u6 != null) {
            u6.m2353import();
        }
    }

    @Override // defpackage.Cthis, defpackage.InterfaceC3161jb.Cif, defpackage.InterfaceC3161jb
    /* renamed from: new */
    public final <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        C0173Do.m401try(cfor, "key");
        if (cfor instanceof Cbreak) {
            Cbreak cbreak = (Cbreak) cfor;
            InterfaceC3161jb.Cfor<?> cfor2 = this.f15761do;
            C0173Do.m401try(cfor2, "key");
            if (cfor2 == cbreak || cbreak.f8459do == cfor2) {
                E e = (E) cbreak.m4865do(this);
                if (e instanceof InterfaceC3161jb.Cif) {
                    return e;
                }
            }
        } else if (InterfaceC0642Za.Cdo.f4868do == cfor) {
            return this;
        }
        return null;
    }

    public boolean r() {
        return !(this instanceof C2685eJ);
    }

    @Override // defpackage.Cthis, defpackage.InterfaceC3161jb
    /* renamed from: this */
    public final InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        C0173Do.m401try(cfor, "key");
        boolean z = cfor instanceof Cbreak;
        C0405Of c0405Of = C0405Of.f2659do;
        if (z) {
            Cbreak cbreak = (Cbreak) cfor;
            InterfaceC3161jb.Cfor<?> cfor2 = this.f15761do;
            C0173Do.m401try(cfor2, "key");
            if ((cfor2 == cbreak || cbreak.f8459do == cfor2) && cbreak.m4865do(this) != null) {
                return c0405Of;
            }
        } else if (InterfaceC0642Za.Cdo.f4868do == cfor) {
            return c0405Of;
        }
        return this;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + C0820cd.m4914try(this);
    }
}
