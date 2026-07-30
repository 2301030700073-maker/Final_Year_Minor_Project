package c.b.a.c.f;

/* loaded from: classes.dex */
public abstract class A extends F {

    /* renamed from: b, reason: collision with root package name */
    public C f3013b;

    @Override // c.b.a.c.f.F
    /* renamed from: a */
    public /* bridge */ /* synthetic */ F clone() {
        return (A) clone();
    }

    @Override // c.b.a.c.f.F
    public int b() {
        if (this.f3013b != null) {
            int i = 0;
            while (true) {
                C c2 = this.f3013b;
                if (i >= c2.f3017d) {
                    break;
                }
                c2.f3016c[i].a();
                i++;
            }
        }
        return 0;
    }

    @Override // c.b.a.c.f.F
    public void e(z zVar) {
        if (this.f3013b == null) {
            return;
        }
        int i = 0;
        while (true) {
            C c2 = this.f3013b;
            if (i >= c2.f3017d) {
                return;
            }
            c2.f3016c[i].b(zVar);
            i++;
        }
    }

    @Override // c.b.a.c.f.F
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public A clone() {
        A a2 = (A) super.clone();
        E.c(this, a2);
        return a2;
    }
}
