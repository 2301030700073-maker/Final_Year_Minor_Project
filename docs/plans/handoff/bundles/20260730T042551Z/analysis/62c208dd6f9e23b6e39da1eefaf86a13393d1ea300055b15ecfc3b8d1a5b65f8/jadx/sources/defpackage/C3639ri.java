package defpackage;

/* renamed from: ri, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3639ri extends Gw {

    /* renamed from: do, reason: not valid java name */
    public final C0410Ok f15306do;

    public C3639ri(C0410Ok c0410Ok) {
        this.f15306do = c0410Ok;
    }

    @Override // defpackage.Gw
    /* renamed from: do */
    public final boolean mo774do() {
        C0410Ok c0410Ok = this.f15306do;
        return c0410Ok.b() && (c0410Ok.m1681implements() > 0 || c0410Ok.m1683transient() > 0 || (c0410Ok.a() && c0410Ok.m1682synchronized().m1454transient()));
    }
}
