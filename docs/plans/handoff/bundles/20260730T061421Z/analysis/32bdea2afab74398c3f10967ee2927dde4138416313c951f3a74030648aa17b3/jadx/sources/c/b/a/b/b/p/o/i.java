package c.b.a.b.b.p.o;

/* loaded from: classes.dex */
public final class i extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public h[] f2844a;

    public i() {
        if (h.n == null) {
            synchronized (c.b.b.a1.d.f3169b) {
                if (h.n == null) {
                    h.n = new h[0];
                }
            }
        }
        this.f2844a = h.n;
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        h[] hVarArr = this.f2844a;
        int i = 0;
        if (hVarArr == null || hVarArr.length <= 0) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            h[] hVarArr2 = this.f2844a;
            if (i >= hVarArr2.length) {
                return i2;
            }
            h hVar = hVarArr2[i];
            if (hVar != null) {
                i2 += c.b.b.a1.b.d(1, hVar);
            }
            i++;
        }
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                int a2 = c.b.b.a1.f.a(aVar, 10);
                h[] hVarArr = this.f2844a;
                int length = hVarArr == null ? 0 : hVarArr.length;
                int i = a2 + length;
                h[] hVarArr2 = new h[i];
                if (length != 0) {
                    System.arraycopy(this.f2844a, 0, hVarArr2, 0, length);
                }
                while (length < i - 1) {
                    hVarArr2[length] = new h();
                    aVar.d(hVarArr2[length]);
                    aVar.k();
                    length++;
                }
                hVarArr2[length] = new h();
                aVar.d(hVarArr2[length]);
                this.f2844a = hVarArr2;
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        h[] hVarArr = this.f2844a;
        if (hVarArr == null || hVarArr.length <= 0) {
            return;
        }
        int i = 0;
        while (true) {
            h[] hVarArr2 = this.f2844a;
            if (i >= hVarArr2.length) {
                return;
            }
            h hVar = hVarArr2[i];
            if (hVar != null) {
                bVar.o(1, hVar);
            }
            i++;
        }
    }
}
