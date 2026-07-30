package c.b.a.b.b.p.o;

import com.google.protobuf.nano.CodedOutputByteBufferNano$OutOfSpaceException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public h f2819a = null;

    /* renamed from: b, reason: collision with root package name */
    public long f2820b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f2821c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2822d = 0;
    public byte[] e = c.b.b.a1.f.f3170a;
    public boolean f = false;

    public a() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        h hVar = this.f2819a;
        int d2 = hVar != null ? 0 + c.b.b.a1.b.d(1, hVar) : 0;
        long j = this.f2820b;
        if (j != 0) {
            d2 += c.b.b.a1.b.c(2, j);
        }
        long j2 = this.f2821c;
        if (j2 != 0) {
            d2 += c.b.b.a1.b.c(3, j2);
        }
        int i = this.f2822d;
        if (i != 0) {
            d2 += c.b.b.a1.b.b(4, i);
        }
        if (!Arrays.equals(this.e, c.b.b.a1.f.f3170a)) {
            byte[] bArr = this.e;
            d2 += c.b.b.a1.b.e(bArr.length) + bArr.length + c.b.b.a1.b.g(5);
        }
        boolean z = this.f;
        return z ? d2 + c.b.b.a1.b.a(6, z) : d2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        byte[] f;
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                if (this.f2819a == null) {
                    this.f2819a = new h();
                }
                aVar.d(this.f2819a);
            } else if (k == 16) {
                this.f2820b = aVar.c();
            } else if (k == 24) {
                this.f2821c = aVar.c();
            } else if (k == 32) {
                this.f2822d = aVar.i();
            } else if (k == 42) {
                int i = aVar.i();
                int i2 = aVar.f3165c;
                int i3 = aVar.e;
                if (i > i2 - i3 || i <= 0) {
                    f = i == 0 ? c.b.b.a1.f.f3170a : aVar.f(i);
                } else {
                    f = new byte[i];
                    System.arraycopy(aVar.f3163a, i3, f, 0, i);
                    aVar.e += i;
                }
                this.e = f;
            } else if (k == 48) {
                this.f = aVar.b();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        h hVar = this.f2819a;
        if (hVar != null) {
            bVar.o(1, hVar);
        }
        long j = this.f2820b;
        if (j != 0) {
            bVar.n(2, j);
        }
        long j2 = this.f2821c;
        if (j2 != 0) {
            bVar.n(3, j2);
        }
        int i = this.f2822d;
        if (i != 0) {
            bVar.m(4, i);
        }
        if (!Arrays.equals(this.e, c.b.b.a1.f.f3170a)) {
            byte[] bArr = this.e;
            bVar.q(42);
            bVar.q(bArr.length);
            int length = bArr.length;
            if (bVar.f3167a.remaining() < length) {
                throw new CodedOutputByteBufferNano$OutOfSpaceException(bVar.f3167a.position(), bVar.f3167a.limit());
            }
            bVar.f3167a.put(bArr, 0, length);
        }
        boolean z = this.f;
        if (z) {
            bVar.k(6, z);
        }
    }
}
