package c.b.a.b.b.n.q;

import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class d extends e {

    /* renamed from: a, reason: collision with root package name */
    public c f2789a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f2790b = "";

    public d() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        c cVar = this.f2789a;
        int d2 = cVar != null ? 0 + c.b.b.a1.b.d(1, cVar) : 0;
        return !this.f2790b.equals("") ? d2 + c.b.b.a1.b.f(2, this.f2790b) : d2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                if (this.f2789a == null) {
                    this.f2789a = new c();
                }
                aVar.d(this.f2789a);
            } else if (k == 18) {
                this.f2790b = aVar.j();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        c cVar = this.f2789a;
        if (cVar != null) {
            bVar.o(1, cVar);
        }
        if (this.f2790b.equals("")) {
            return;
        }
        bVar.s(2, this.f2790b);
    }
}
