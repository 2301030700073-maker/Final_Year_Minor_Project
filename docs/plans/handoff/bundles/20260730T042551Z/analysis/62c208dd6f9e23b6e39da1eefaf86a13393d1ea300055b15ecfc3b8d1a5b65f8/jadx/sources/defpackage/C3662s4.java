package defpackage;

/* renamed from: s4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3662s4 extends AbstractC2914iC {

    /* renamed from: do, reason: not valid java name */
    public final C0823cg f15374do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3146jI<?, byte[]> f15375do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15376do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3343mg<?> f15377do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3794uI f15378do;

    public C3662s4(AbstractC3794uI abstractC3794uI, String str, AbstractC3343mg abstractC3343mg, InterfaceC3146jI interfaceC3146jI, C0823cg c0823cg) {
        this.f15378do = abstractC3794uI;
        this.f15376do = str;
        this.f15377do = abstractC3343mg;
        this.f15375do = interfaceC3146jI;
        this.f15374do = c0823cg;
    }

    @Override // defpackage.AbstractC2914iC
    /* renamed from: do */
    public final C0823cg mo6881do() {
        return this.f15374do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2914iC)) {
            return false;
        }
        AbstractC2914iC abstractC2914iC = (AbstractC2914iC) obj;
        return this.f15378do.equals(abstractC2914iC.mo6884new()) && this.f15376do.equals(abstractC2914iC.mo6885try()) && this.f15377do.equals(abstractC2914iC.mo6883if()) && this.f15375do.equals(abstractC2914iC.mo6882for()) && this.f15374do.equals(abstractC2914iC.mo6881do());
    }

    @Override // defpackage.AbstractC2914iC
    /* renamed from: for */
    public final InterfaceC3146jI<?, byte[]> mo6882for() {
        return this.f15375do;
    }

    public final int hashCode() {
        return ((((((((this.f15378do.hashCode() ^ 1000003) * 1000003) ^ this.f15376do.hashCode()) * 1000003) ^ this.f15377do.hashCode()) * 1000003) ^ this.f15375do.hashCode()) * 1000003) ^ this.f15374do.hashCode();
    }

    @Override // defpackage.AbstractC2914iC
    /* renamed from: if */
    public final AbstractC3343mg<?> mo6883if() {
        return this.f15377do;
    }

    @Override // defpackage.AbstractC2914iC
    /* renamed from: new */
    public final AbstractC3794uI mo6884new() {
        return this.f15378do;
    }

    public final String toString() {
        return "SendRequest{transportContext=" + this.f15378do + ", transportName=" + this.f15376do + ", event=" + this.f15377do + ", transformer=" + this.f15375do + ", encoding=" + this.f15374do + "}";
    }

    @Override // defpackage.AbstractC2914iC
    /* renamed from: try */
    public final String mo6885try() {
        return this.f15376do;
    }
}
