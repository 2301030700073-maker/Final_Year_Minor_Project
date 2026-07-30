package defpackage;

/* renamed from: Mf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0361Mf implements InterfaceC4116zn {

    /* renamed from: do, reason: not valid java name */
    public final boolean f2221do;

    public C0361Mf(boolean z) {
        this.f2221do = z;
    }

    @Override // defpackage.InterfaceC4116zn
    /* renamed from: case, reason: not valid java name */
    public final C0640Yu mo1445case() {
        return null;
    }

    @Override // defpackage.InterfaceC4116zn
    /* renamed from: for, reason: not valid java name */
    public final boolean mo1446for() {
        return this.f2221do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f2221do ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
