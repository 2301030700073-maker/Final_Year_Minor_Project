package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class g extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public int f2838a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f2839b = "";

    public g() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f2838a;
        int b2 = i != 0 ? 0 + c.b.b.a1.b.b(1, i) : 0;
        return !this.f2839b.equals("") ? b2 + c.b.b.a1.b.f(2, this.f2839b) : b2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                int i = aVar.i();
                if (i == 0 || i == 1 || i == 2) {
                    this.f2838a = i;
                }
            } else if (k == 18) {
                this.f2839b = aVar.j();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f2838a;
        if (i != 0) {
            bVar.m(1, i);
        }
        if (this.f2839b.equals("")) {
            return;
        }
        bVar.s(2, this.f2839b);
    }
}
