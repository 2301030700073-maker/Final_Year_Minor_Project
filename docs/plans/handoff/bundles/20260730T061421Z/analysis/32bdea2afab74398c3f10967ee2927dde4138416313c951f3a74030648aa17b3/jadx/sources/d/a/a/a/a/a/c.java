package d.a.a.a.a.a;

import c.b.b.a1.f;

/* loaded from: classes.dex */
public final class c extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public int f3530a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f3531b = 0;

    /* renamed from: c, reason: collision with root package name */
    public d[] f3532c;

    public c() {
        if (d.f3533c == null) {
            synchronized (c.b.b.a1.d.f3169b) {
                if (d.f3533c == null) {
                    d.f3533c = new d[0];
                }
            }
        }
        this.f3532c = d.f3533c;
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f3530a;
        int i2 = 0;
        int b2 = i != 0 ? c.b.b.a1.b.b(1, i) + 0 : 0;
        int i3 = this.f3531b;
        if (i3 != 0) {
            b2 += c.b.b.a1.b.b(2, i3);
        }
        d[] dVarArr = this.f3532c;
        if (dVarArr != null && dVarArr.length > 0) {
            while (true) {
                d[] dVarArr2 = this.f3532c;
                if (i2 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i2];
                if (dVar != null) {
                    b2 += c.b.b.a1.b.d(3, dVar);
                }
                i2++;
            }
        }
        return b2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.f3530a = aVar.i();
            } else if (k == 16) {
                this.f3531b = aVar.i();
            } else if (k == 26) {
                int a2 = f.a(aVar, 26);
                d[] dVarArr = this.f3532c;
                int length = dVarArr == null ? 0 : dVarArr.length;
                int i = a2 + length;
                d[] dVarArr2 = new d[i];
                if (length != 0) {
                    System.arraycopy(this.f3532c, 0, dVarArr2, 0, length);
                }
                while (length < i - 1) {
                    dVarArr2[length] = new d();
                    aVar.d(dVarArr2[length]);
                    aVar.k();
                    length++;
                }
                dVarArr2[length] = new d();
                aVar.d(dVarArr2[length]);
                this.f3532c = dVarArr2;
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f3530a;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.f3531b;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        d[] dVarArr = this.f3532c;
        if (dVarArr == null || dVarArr.length <= 0) {
            return;
        }
        int i3 = 0;
        while (true) {
            d[] dVarArr2 = this.f3532c;
            if (i3 >= dVarArr2.length) {
                return;
            }
            d dVar = dVarArr2[i3];
            if (dVar != null) {
                bVar.o(3, dVar);
            }
            i3++;
        }
    }
}
