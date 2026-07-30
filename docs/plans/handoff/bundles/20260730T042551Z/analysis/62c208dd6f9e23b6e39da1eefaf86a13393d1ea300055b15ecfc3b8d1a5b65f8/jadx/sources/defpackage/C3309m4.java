package defpackage;

/* renamed from: m4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3309m4 extends Nx {

    /* renamed from: do, reason: not valid java name */
    public final Integer f14310do;

    public C3309m4(Integer num) {
        this.f14310do = num;
    }

    @Override // defpackage.Nx
    /* renamed from: do */
    public final Integer mo1559do() {
        return this.f14310do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Nx)) {
            return false;
        }
        Integer num = this.f14310do;
        Integer mo1559do = ((Nx) obj).mo1559do();
        return num == null ? mo1559do == null : num.equals(mo1559do);
    }

    public final int hashCode() {
        Integer num = this.f14310do;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ProductData{productId=" + this.f14310do + "}";
    }
}
