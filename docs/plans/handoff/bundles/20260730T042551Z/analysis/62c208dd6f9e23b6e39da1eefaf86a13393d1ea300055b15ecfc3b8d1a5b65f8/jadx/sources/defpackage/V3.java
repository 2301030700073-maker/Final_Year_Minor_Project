package defpackage;

/* loaded from: classes.dex */
public final class V3<T> extends AbstractC3343mg<T> {

    /* renamed from: do, reason: not valid java name */
    public final Ex f4021do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Nx f4022do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f4023do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final T f4024do;

    /* JADX WARN: Multi-variable type inference failed */
    public V3(Object obj, Ex ex, C3309m4 c3309m4) {
        if (obj == 0) {
            throw new NullPointerException("Null payload");
        }
        this.f4024do = obj;
        this.f4021do = ex;
        this.f4022do = c3309m4;
    }

    @Override // defpackage.AbstractC3343mg
    /* renamed from: do, reason: not valid java name */
    public final Integer mo2507do() {
        return this.f4023do;
    }

    public final boolean equals(Object obj) {
        Nx nx;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3343mg)) {
            return false;
        }
        AbstractC3343mg abstractC3343mg = (AbstractC3343mg) obj;
        Integer num = this.f4023do;
        if (num != null ? num.equals(abstractC3343mg.mo2507do()) : abstractC3343mg.mo2507do() == null) {
            if (this.f4024do.equals(abstractC3343mg.mo2508for()) && this.f4021do.equals(abstractC3343mg.mo2510new()) && ((nx = this.f4022do) != null ? nx.equals(abstractC3343mg.mo2511try()) : abstractC3343mg.mo2511try() == null)) {
                abstractC3343mg.mo2509if();
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC3343mg
    /* renamed from: for, reason: not valid java name */
    public final T mo2508for() {
        return this.f4024do;
    }

    public final int hashCode() {
        Integer num = this.f4023do;
        int hashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f4024do.hashCode()) * 1000003) ^ this.f4021do.hashCode()) * 1000003;
        Nx nx = this.f4022do;
        return 0 ^ ((hashCode ^ (nx == null ? 0 : nx.hashCode())) * 1000003);
    }

    @Override // defpackage.AbstractC3343mg
    /* renamed from: if, reason: not valid java name */
    public final void mo2509if() {
    }

    @Override // defpackage.AbstractC3343mg
    /* renamed from: new, reason: not valid java name */
    public final Ex mo2510new() {
        return this.f4021do;
    }

    public final String toString() {
        return "Event{code=" + this.f4023do + ", payload=" + this.f4024do + ", priority=" + this.f4021do + ", productData=" + this.f4022do + ", eventContext=null}";
    }

    @Override // defpackage.AbstractC3343mg
    /* renamed from: try, reason: not valid java name */
    public final Nx mo2511try() {
        return this.f4022do;
    }
}
