package defpackage;

/* renamed from: Ck, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0147Ck extends AbstractC4077z6 implements InterfaceC0125Bk, InterfaceC3882vp {

    /* renamed from: for, reason: not valid java name */
    public final int f408for;

    /* renamed from: new, reason: not valid java name */
    public final int f409new;

    public C0147Ck(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.f408for = i;
        this.f409new = i2 >> 1;
    }

    @Override // defpackage.AbstractC4077z6
    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3764tp mo288do() {
        C2782fz.f13022do.getClass();
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0147Ck) {
            C0147Ck c0147Ck = (C0147Ck) obj;
            return this.f16864break.equals(c0147Ck.f16864break) && this.f16865catch.equals(c0147Ck.f16865catch) && this.f409new == c0147Ck.f409new && this.f408for == c0147Ck.f408for && C0173Do.m394do(((AbstractC4077z6) this).f16867do, ((AbstractC4077z6) c0147Ck).f16867do) && C0173Do.m394do(m8786if(), c0147Ck.m8786if());
        }
        if (!(obj instanceof InterfaceC3882vp)) {
            return false;
        }
        InterfaceC3764tp interfaceC3764tp = ((AbstractC4077z6) this).f16868do;
        if (interfaceC3764tp == null) {
            mo288do();
            ((AbstractC4077z6) this).f16868do = this;
            interfaceC3764tp = this;
        }
        return obj.equals(interfaceC3764tp);
    }

    @Override // defpackage.InterfaceC0125Bk
    public final int getArity() {
        return this.f408for;
    }

    public final int hashCode() {
        return this.f16865catch.hashCode() + Cif.m6915for(this.f16864break, m8786if() == null ? 0 : m8786if().hashCode() * 31, 31);
    }

    public final String toString() {
        InterfaceC3764tp interfaceC3764tp = ((AbstractC4077z6) this).f16868do;
        if (interfaceC3764tp == null) {
            mo288do();
            ((AbstractC4077z6) this).f16868do = this;
            interfaceC3764tp = this;
        }
        if (interfaceC3764tp != this) {
            return interfaceC3764tp.toString();
        }
        String str = this.f16864break;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : Cif.m6908case("function ", str, " (Kotlin reflection is not available)");
    }
}
