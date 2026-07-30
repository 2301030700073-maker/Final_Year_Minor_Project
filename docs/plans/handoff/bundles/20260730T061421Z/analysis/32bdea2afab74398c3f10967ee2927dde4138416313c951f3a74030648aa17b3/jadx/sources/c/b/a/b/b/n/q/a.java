package c.b.a.b.b.n.q;

import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: a, reason: collision with root package name */
    public int f2777a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2778b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2779c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2780d = 0;

    public a() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f2777a;
        int b2 = i != 0 ? 0 + c.b.b.a1.b.b(1, i) : 0;
        int i2 = this.f2778b;
        if (i2 != 0) {
            b2 += c.b.b.a1.b.b(2, i2);
        }
        int i3 = this.f2779c;
        if (i3 != 0) {
            b2 += c.b.b.a1.b.b(3, i3);
        }
        int i4 = this.f2780d;
        return i4 != 0 ? b2 + c.b.b.a1.b.b(4, i4) : b2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.f2777a = aVar.i();
            } else if (k == 16) {
                this.f2778b = aVar.i();
            } else if (k == 24) {
                this.f2779c = aVar.i();
            } else if (k == 32) {
                this.f2780d = aVar.i();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f2777a;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.f2778b;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        int i3 = this.f2779c;
        if (i3 != 0) {
            bVar.m(3, i3);
        }
        int i4 = this.f2780d;
        if (i4 != 0) {
            bVar.m(4, i4);
        }
    }
}
