package d.a.a.a.a.a;

/* loaded from: classes.dex */
public final class e extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public int f3536a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f3537b = 1;

    /* renamed from: c, reason: collision with root package name */
    public int f3538c = 999999;

    public e() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f3536a;
        int b2 = i != 0 ? 0 + c.b.b.a1.b.b(1, i) : 0;
        int i2 = this.f3537b;
        if (i2 != 1) {
            b2 += c.b.b.a1.b.b(2, i2);
        }
        int i3 = this.f3538c;
        return i3 != 999999 ? b2 + c.b.b.a1.b.b(3, i3) : b2;
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
                if (i == 0 || i == 1) {
                    this.f3536a = i;
                }
            } else if (k == 16) {
                this.f3537b = aVar.i();
            } else if (k == 24) {
                this.f3538c = aVar.i();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f3536a;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.f3537b;
        if (i2 != 1) {
            bVar.m(2, i2);
        }
        int i3 = this.f3538c;
        if (i3 != 999999) {
            bVar.m(3, i3);
        }
    }
}
