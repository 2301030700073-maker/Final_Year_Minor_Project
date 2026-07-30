package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ze, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4107ze<T> extends AbstractC0119Be<T> implements InterfaceC3809ub, InterfaceC0576Wa<T> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f16931do = AtomicReferenceFieldUpdater.newUpdater(C4107ze.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0576Wa<T> f16932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f16933do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3338mb f16934do;

    /* renamed from: if, reason: not valid java name */
    public final Object f16935if;

    public C4107ze(AbstractC3338mb abstractC3338mb, AbstractC0620Ya abstractC0620Ya) {
        super(-1);
        this.f16934do = abstractC3338mb;
        this.f16932do = abstractC0620Ya;
        this.f16933do = C3850vF.f16040do;
        this.f16935if = C2683eH.m6542if(mo2221if());
    }

    @Override // defpackage.InterfaceC3809ub
    /* renamed from: catch */
    public final InterfaceC3809ub mo1126catch() {
        InterfaceC0576Wa<T> interfaceC0576Wa = this.f16932do;
        if (interfaceC0576Wa instanceof InterfaceC3809ub) {
            return (InterfaceC3809ub) interfaceC0576Wa;
        }
        return null;
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: do */
    public final void mo194do(Object obj, CancellationException cancellationException) {
        if (obj instanceof V8) {
            ((V8) obj).f4043do.mo364this(cancellationException);
        }
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        return this.f16932do.mo2221if();
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: new */
    public final InterfaceC0576Wa<T> mo196new() {
        return this;
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: this */
    public final Object mo197this() {
        Object obj = this.f16933do;
        this.f16933do = C3850vF.f16040do;
        return obj;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f16934do + ", " + C0820cd.m4912case(this.f16932do) + ']';
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: while */
    public final void mo1746while(Object obj) {
        InterfaceC0576Wa<T> interfaceC0576Wa = this.f16932do;
        InterfaceC3161jb mo2221if = interfaceC0576Wa.mo2221if();
        Throwable m3108do = C0675aA.m3108do(obj);
        Object u8 = m3108do == null ? obj : new U8(false, m3108do);
        AbstractC3338mb abstractC3338mb = this.f16934do;
        if (abstractC3338mb.r()) {
            this.f16933do = u8;
            this.f252for = 0;
            abstractC3338mb.mo1340if(mo2221if, this);
            return;
        }
        AbstractC3873vg m6717do = C2801gH.m6717do();
        if (m6717do.f16106do >= 4294967296L) {
            this.f16933do = u8;
            this.f252for = 0;
            A2<AbstractC0119Be<?>> a2 = m6717do.f16107do;
            if (a2 == null) {
                a2 = new A2<>();
                m6717do.f16107do = a2;
            }
            a2.addLast(this);
            return;
        }
        m6717do.t(true);
        try {
            InterfaceC3161jb mo2221if2 = mo2221if();
            Object m6541for = C2683eH.m6541for(mo2221if2, this.f16935if);
            try {
                interfaceC0576Wa.mo1746while(obj);
                C3206kJ c3206kJ = C3206kJ.f13965do;
                while (m6717do.v()) {
                }
            } finally {
                C2683eH.m6540do(mo2221if2, m6541for);
            }
        } finally {
            try {
            } finally {
            }
        }
    }
}
