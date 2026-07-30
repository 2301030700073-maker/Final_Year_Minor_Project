package defpackage;

/* renamed from: gG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2800gG extends AbstractC0620Ya implements InterfaceC0125Bk<Object> {

    /* renamed from: for, reason: not valid java name */
    public final int f13084for;

    public AbstractC2800gG(int i, InterfaceC0576Wa<Object> interfaceC0576Wa) {
        super(interfaceC0576Wa);
        this.f13084for = i;
    }

    @Override // defpackage.InterfaceC0125Bk
    public final int getArity() {
        return this.f13084for;
    }

    @Override // defpackage.P4
    public final String toString() {
        if (((P4) this).f2733do != null) {
            return super.toString();
        }
        C2782fz.f13022do.getClass();
        String m6754do = C2841gz.m6754do(this);
        C0173Do.m399new(m6754do, "renderLambdaToString(this)");
        return m6754do;
    }
}
