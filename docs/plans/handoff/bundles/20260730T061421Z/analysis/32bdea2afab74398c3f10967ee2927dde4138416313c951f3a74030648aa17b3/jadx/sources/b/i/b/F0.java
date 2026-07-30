package b.i.b;

/* loaded from: classes.dex */
public class F0 implements b.e.f.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H0 f845a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.e.f.b f846b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ J0 f847c;

    public F0(J0 j0, H0 h0, b.e.f.b bVar) {
        this.f847c = j0;
        this.f845a = h0;
        this.f846b = bVar;
    }

    @Override // b.e.f.a
    public void onCancel() {
        synchronized (this.f847c.f860b) {
            this.f847c.f860b.remove(this.f845a);
            this.f847c.f861c.remove(this.f845a.f855b);
            this.f846b.a();
        }
    }
}
