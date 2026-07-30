package defpackage;

import defpackage.AbstractC4077z6;

/* renamed from: cy, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2605cy extends AbstractC4077z6 implements InterfaceC0108Ap {

    /* renamed from: if, reason: not valid java name */
    public final boolean f12410if;

    public AbstractC2605cy(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.f12410if = (i & 2) == 2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2605cy) {
            AbstractC2605cy abstractC2605cy = (AbstractC2605cy) obj;
            return m8786if().equals(abstractC2605cy.m8786if()) && this.f16864break.equals(abstractC2605cy.f16864break) && this.f16865catch.equals(abstractC2605cy.f16865catch) && C0173Do.m394do(((AbstractC4077z6) this).f16867do, ((AbstractC4077z6) abstractC2605cy).f16867do);
        }
        if (obj instanceof InterfaceC0108Ap) {
            return obj.equals(m6403for());
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3764tp m6403for() {
        if (this.f12410if) {
            return this;
        }
        InterfaceC3764tp interfaceC3764tp = ((AbstractC4077z6) this).f16868do;
        if (interfaceC3764tp != null) {
            return interfaceC3764tp;
        }
        InterfaceC3764tp mo288do = mo288do();
        ((AbstractC4077z6) this).f16868do = mo288do;
        return mo288do;
    }

    public final int hashCode() {
        return this.f16865catch.hashCode() + Cif.m6915for(this.f16864break, m8786if().hashCode() * 31, 31);
    }

    public final String toString() {
        InterfaceC3764tp m6403for = m6403for();
        return m6403for != this ? m6403for.toString() : Creturn.m7984try(new StringBuilder("property "), this.f16864break, " (Kotlin reflection is not available)");
    }

    public AbstractC2605cy() {
        super(AbstractC4077z6.Cdo.f16870do, null, null, null, false);
        this.f12410if = false;
    }
}
