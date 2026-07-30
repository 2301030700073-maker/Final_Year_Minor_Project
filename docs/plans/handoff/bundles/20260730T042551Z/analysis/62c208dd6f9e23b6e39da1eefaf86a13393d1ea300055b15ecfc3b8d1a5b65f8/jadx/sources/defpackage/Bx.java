package defpackage;

/* loaded from: classes3.dex */
public final class Bx<T> extends AbstractC2838gw<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f294do;

    public Bx(T t) {
        this.f294do = t;
    }

    @Override // defpackage.AbstractC2838gw
    /* renamed from: do, reason: not valid java name */
    public final T mo242do() {
        return this.f294do;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Bx) {
            return this.f294do.equals(((Bx) obj).f294do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f294do.hashCode() + 1502476572;
    }

    @Override // defpackage.AbstractC2838gw
    /* renamed from: if, reason: not valid java name */
    public final boolean mo243if() {
        return true;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f294do);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
