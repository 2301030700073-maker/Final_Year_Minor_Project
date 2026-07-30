package d.a.a.a.a.a;

/* loaded from: classes.dex */
public final class a extends c.b.b.a1.e {
    public static volatile a[] h;

    /* renamed from: a, reason: collision with root package name */
    public int f3522a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f3523b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f3524c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f3525d = 0;
    public int e = 0;
    public int f = 0;
    public boolean g = false;

    public a() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f3522a;
        int b2 = i != 0 ? 0 + c.b.b.a1.b.b(1, i) : 0;
        int i2 = this.f3523b;
        if (i2 != 0) {
            b2 += c.b.b.a1.b.b(2, i2);
        }
        int i3 = this.f3524c;
        if (i3 != 0) {
            b2 += c.b.b.a1.b.b(3, i3);
        }
        int i4 = this.f3525d;
        if (i4 != 0) {
            b2 += c.b.b.a1.b.b(4, i4);
        }
        int i5 = this.e;
        if (i5 != 0) {
            b2 += c.b.b.a1.b.b(5, i5);
        }
        int i6 = this.f;
        if (i6 != 0) {
            b2 += c.b.b.a1.b.b(6, i6);
        }
        boolean z = this.g;
        return z ? b2 + c.b.b.a1.b.a(7, z) : b2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.f3522a = aVar.i();
            } else if (k == 16) {
                this.f3523b = aVar.i();
            } else if (k == 24) {
                this.f3524c = aVar.i();
            } else if (k == 32) {
                this.f3525d = aVar.i();
            } else if (k == 40) {
                this.e = aVar.i();
            } else if (k == 48) {
                this.f = aVar.i();
            } else if (k == 56) {
                this.g = aVar.b();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f3522a;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.f3523b;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        int i3 = this.f3524c;
        if (i3 != 0) {
            bVar.m(3, i3);
        }
        int i4 = this.f3525d;
        if (i4 != 0) {
            bVar.m(4, i4);
        }
        int i5 = this.e;
        if (i5 != 0) {
            bVar.m(5, i5);
        }
        int i6 = this.f;
        if (i6 != 0) {
            bVar.m(6, i6);
        }
        boolean z = this.g;
        if (z) {
            bVar.k(7, z);
        }
    }
}
