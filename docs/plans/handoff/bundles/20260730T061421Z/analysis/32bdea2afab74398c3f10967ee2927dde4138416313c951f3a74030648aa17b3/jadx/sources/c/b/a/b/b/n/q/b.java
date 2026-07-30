package c.b.a.b.b.n.q;

import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class b extends e {
    public static volatile b[] e;

    /* renamed from: a, reason: collision with root package name */
    public String f2781a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f2782b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f2783c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f2784d = "";

    public b() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int f = this.f2781a.equals("") ? 0 : 0 + c.b.b.a1.b.f(1, this.f2781a);
        if (!this.f2782b.equals("")) {
            f += c.b.b.a1.b.f(2, this.f2782b);
        }
        if (!this.f2783c.equals("")) {
            f += c.b.b.a1.b.f(3, this.f2783c);
        }
        return !this.f2784d.equals("") ? f + c.b.b.a1.b.f(4, this.f2784d) : f;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                this.f2781a = aVar.j();
            } else if (k == 18) {
                this.f2782b = aVar.j();
            } else if (k == 26) {
                this.f2783c = aVar.j();
            } else if (k == 34) {
                this.f2784d = aVar.j();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        if (!this.f2781a.equals("")) {
            bVar.s(1, this.f2781a);
        }
        if (!this.f2782b.equals("")) {
            bVar.s(2, this.f2782b);
        }
        if (!this.f2783c.equals("")) {
            bVar.s(3, this.f2783c);
        }
        if (this.f2784d.equals("")) {
            return;
        }
        bVar.s(4, this.f2784d);
    }
}
