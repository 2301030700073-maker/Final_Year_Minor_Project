package d.a.a.a.a.a;

import c.b.b.a1.f;

/* loaded from: classes.dex */
public final class d extends c.b.b.a1.e {

    /* renamed from: c, reason: collision with root package name */
    public static volatile d[] f3533c;

    /* renamed from: a, reason: collision with root package name */
    public a[] f3534a;

    /* renamed from: b, reason: collision with root package name */
    public String f3535b;

    public d() {
        if (a.h == null) {
            synchronized (c.b.b.a1.d.f3169b) {
                if (a.h == null) {
                    a.h = new a[0];
                }
            }
        }
        this.f3534a = a.h;
        this.f3535b = "";
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        a[] aVarArr = this.f3534a;
        int i = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                a[] aVarArr2 = this.f3534a;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    i2 += c.b.b.a1.b.d(1, aVar);
                }
                i++;
            }
            i = i2;
        }
        return !this.f3535b.equals("") ? i + c.b.b.a1.b.f(2, this.f3535b) : i;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                int a2 = f.a(aVar, 10);
                a[] aVarArr = this.f3534a;
                int length = aVarArr == null ? 0 : aVarArr.length;
                int i = a2 + length;
                a[] aVarArr2 = new a[i];
                if (length != 0) {
                    System.arraycopy(this.f3534a, 0, aVarArr2, 0, length);
                }
                while (length < i - 1) {
                    aVarArr2[length] = new a();
                    aVar.d(aVarArr2[length]);
                    aVar.k();
                    length++;
                }
                aVarArr2[length] = new a();
                aVar.d(aVarArr2[length]);
                this.f3534a = aVarArr2;
            } else if (k == 18) {
                this.f3535b = aVar.j();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        a[] aVarArr = this.f3534a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i = 0;
            while (true) {
                a[] aVarArr2 = this.f3534a;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    bVar.o(1, aVar);
                }
                i++;
            }
        }
        if (this.f3535b.equals("")) {
            return;
        }
        bVar.s(2, this.f3535b);
    }
}
