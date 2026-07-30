package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class f extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public e f2836a = null;

    /* renamed from: b, reason: collision with root package name */
    public e f2837b = null;

    public f() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        e eVar = this.f2836a;
        int d2 = eVar != null ? 0 + c.b.b.a1.b.d(1, eVar) : 0;
        e eVar2 = this.f2837b;
        return eVar2 != null ? d2 + c.b.b.a1.b.d(2, eVar2) : d2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                if (this.f2836a == null) {
                    this.f2836a = new e();
                }
                aVar.d(this.f2836a);
            } else if (k == 18) {
                if (this.f2837b == null) {
                    this.f2837b = new e();
                }
                aVar.d(this.f2837b);
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        e eVar = this.f2836a;
        if (eVar != null) {
            bVar.o(1, eVar);
        }
        e eVar2 = this.f2837b;
        if (eVar2 != null) {
            bVar.o(2, eVar2);
        }
    }
}
