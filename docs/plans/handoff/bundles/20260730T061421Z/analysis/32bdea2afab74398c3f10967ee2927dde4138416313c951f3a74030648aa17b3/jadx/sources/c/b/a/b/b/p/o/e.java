package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class e extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public String f2833a;

    /* renamed from: b, reason: collision with root package name */
    public int f2834b;

    /* renamed from: c, reason: collision with root package name */
    public d[] f2835c;

    public e() {
        a();
    }

    public e a() {
        this.f2833a = "";
        this.f2834b = 0;
        if (d.e == null) {
            synchronized (c.b.b.a1.d.f3169b) {
                if (d.e == null) {
                    d.e = new d[0];
                }
            }
        }
        this.f2835c = d.e;
        this.cachedSize = -1;
        return this;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = 0;
        int f = !this.f2833a.equals("") ? c.b.b.a1.b.f(1, this.f2833a) + 0 : 0;
        int i2 = this.f2834b;
        if (i2 != 0) {
            f += c.b.b.a1.b.b(2, i2);
        }
        d[] dVarArr = this.f2835c;
        if (dVarArr != null && dVarArr.length > 0) {
            while (true) {
                d[] dVarArr2 = this.f2835c;
                if (i >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i];
                if (dVar != null) {
                    f += c.b.b.a1.b.d(3, dVar);
                }
                i++;
            }
        }
        return f;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                this.f2833a = aVar.j();
            } else if (k == 16) {
                int i = aVar.i();
                if (i == 0 || i == 1 || i == 2 || i == 3) {
                    this.f2834b = i;
                }
            } else if (k == 26) {
                int a2 = c.b.b.a1.f.a(aVar, 26);
                d[] dVarArr = this.f2835c;
                int length = dVarArr == null ? 0 : dVarArr.length;
                int i2 = a2 + length;
                d[] dVarArr2 = new d[i2];
                if (length != 0) {
                    System.arraycopy(this.f2835c, 0, dVarArr2, 0, length);
                }
                while (length < i2 - 1) {
                    dVarArr2[length] = new d();
                    aVar.d(dVarArr2[length]);
                    aVar.k();
                    length++;
                }
                dVarArr2[length] = new d();
                aVar.d(dVarArr2[length]);
                this.f2835c = dVarArr2;
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        if (!this.f2833a.equals("")) {
            bVar.s(1, this.f2833a);
        }
        int i = this.f2834b;
        if (i != 0) {
            bVar.m(2, i);
        }
        d[] dVarArr = this.f2835c;
        if (dVarArr == null || dVarArr.length <= 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            d[] dVarArr2 = this.f2835c;
            if (i2 >= dVarArr2.length) {
                return;
            }
            d dVar = dVarArr2[i2];
            if (dVar != null) {
                bVar.o(3, dVar);
            }
            i2++;
        }
    }
}
