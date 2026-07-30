package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class b extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public long f2823a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2824b = 0;

    public b() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        long j = this.f2823a;
        int c2 = j != 0 ? 0 + c.b.b.a1.b.c(1, j) : 0;
        int i = this.f2824b;
        return i != 0 ? c2 + c.b.b.a1.b.b(2, i) : c2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.f2823a = aVar.c();
            } else if (k == 16) {
                this.f2824b = aVar.i();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        long j = this.f2823a;
        if (j != 0) {
            bVar.n(1, j);
        }
        int i = this.f2824b;
        if (i != 0) {
            bVar.m(2, i);
        }
    }
}
