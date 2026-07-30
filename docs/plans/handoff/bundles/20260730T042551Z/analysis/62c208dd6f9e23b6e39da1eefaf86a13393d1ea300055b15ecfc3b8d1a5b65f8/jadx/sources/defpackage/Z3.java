package defpackage;

/* loaded from: classes.dex */
public final class Z3 extends AbstractC2705eh {

    /* renamed from: do, reason: not valid java name */
    public final Integer f4777do;

    public Z3(Integer num) {
        this.f4777do = num;
    }

    @Override // defpackage.AbstractC2705eh
    /* renamed from: do, reason: not valid java name */
    public final Integer mo2976do() {
        return this.f4777do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2705eh)) {
            return false;
        }
        Integer num = this.f4777do;
        Integer mo2976do = ((AbstractC2705eh) obj).mo2976do();
        return num == null ? mo2976do == null : num.equals(mo2976do);
    }

    public final int hashCode() {
        Integer num = this.f4777do;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f4777do + "}";
    }
}
