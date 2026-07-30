package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class d extends c.b.b.a1.e {
    public static volatile d[] e;

    /* renamed from: a, reason: collision with root package name */
    public String f2829a = "";

    /* renamed from: b, reason: collision with root package name */
    public int f2830b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2831c = 0;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2832d = false;

    public d() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int f = this.f2829a.equals("") ? 0 : 0 + c.b.b.a1.b.f(1, this.f2829a);
        int i = this.f2830b;
        if (i != 0) {
            f += c.b.b.a1.b.b(2, i);
        }
        int i2 = this.f2831c;
        if (i2 != 0) {
            f += c.b.b.a1.b.b(3, i2);
        }
        boolean z = this.f2832d;
        return z ? f + c.b.b.a1.b.a(4, z) : f;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                this.f2829a = aVar.j();
            } else if (k == 16) {
                int i = aVar.i();
                if (i == 0 || i == 1 || i == 2 || i == 3) {
                    this.f2830b = i;
                }
            } else if (k == 24) {
                int i2 = aVar.i();
                if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3) {
                    this.f2831c = i2;
                }
            } else if (k == 32) {
                this.f2832d = aVar.b();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        if (!this.f2829a.equals("")) {
            bVar.s(1, this.f2829a);
        }
        int i = this.f2830b;
        if (i != 0) {
            bVar.m(2, i);
        }
        int i2 = this.f2831c;
        if (i2 != 0) {
            bVar.m(3, i2);
        }
        boolean z = this.f2832d;
        if (z) {
            bVar.k(4, z);
        }
    }
}
