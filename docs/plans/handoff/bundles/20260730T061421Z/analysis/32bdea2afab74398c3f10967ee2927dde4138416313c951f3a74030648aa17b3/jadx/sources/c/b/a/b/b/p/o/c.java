package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class c extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public String f2825a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f2826b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f2827c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f2828d = "";

    public c() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int f = this.f2825a.equals("") ? 0 : 0 + c.b.b.a1.b.f(1, this.f2825a);
        if (!this.f2826b.equals("")) {
            f += c.b.b.a1.b.f(2, this.f2826b);
        }
        if (!this.f2827c.equals("")) {
            f += c.b.b.a1.b.f(3, this.f2827c);
        }
        return !this.f2828d.equals("") ? f + c.b.b.a1.b.f(4, this.f2828d) : f;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                this.f2825a = aVar.j();
            } else if (k == 18) {
                this.f2826b = aVar.j();
            } else if (k == 26) {
                this.f2827c = aVar.j();
            } else if (k == 34) {
                this.f2828d = aVar.j();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        if (!this.f2825a.equals("")) {
            bVar.s(1, this.f2825a);
        }
        if (!this.f2826b.equals("")) {
            bVar.s(2, this.f2826b);
        }
        if (!this.f2827c.equals("")) {
            bVar.s(3, this.f2827c);
        }
        if (this.f2828d.equals("")) {
            return;
        }
        bVar.s(4, this.f2828d);
    }
}
