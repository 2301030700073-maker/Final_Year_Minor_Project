package c.b.b.a1;

import com.google.protobuf.nano.InvalidProtocolBufferNanoException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3163a;

    /* renamed from: b, reason: collision with root package name */
    public int f3164b;

    /* renamed from: c, reason: collision with root package name */
    public int f3165c;

    /* renamed from: d, reason: collision with root package name */
    public int f3166d;
    public int e;
    public int f;
    public int h;
    public int g = Integer.MAX_VALUE;
    public int i = 64;

    public a(byte[] bArr, int i, int i2) {
        this.f3163a = bArr;
        this.f3164b = i;
        this.f3165c = i2 + i;
        this.e = i;
    }

    public void a(int i) {
        if (this.f != i) {
            throw new InvalidProtocolBufferNanoException("Protocol message end-group tag did not match expected tag.");
        }
    }

    public boolean b() {
        return i() != 0;
    }

    public long c() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((e() & 128) == 0) {
                return j;
            }
        }
        throw new InvalidProtocolBufferNanoException("CodedInputStream encountered a malformed varint.");
    }

    public void d(e eVar) {
        int i = i();
        if (this.h >= 64) {
            throw new InvalidProtocolBufferNanoException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.a();
        }
        int i2 = i + this.e;
        int i3 = this.g;
        if (i2 > i3) {
            throw InvalidProtocolBufferNanoException.b();
        }
        this.g = i2;
        l();
        this.h++;
        eVar.mergeFrom(this);
        a(0);
        this.h--;
        this.g = i3;
        l();
    }

    public byte e() {
        int i = this.e;
        if (i == this.f3165c) {
            throw InvalidProtocolBufferNanoException.b();
        }
        byte[] bArr = this.f3163a;
        this.e = i + 1;
        return bArr[i];
    }

    public byte[] f(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.a();
        }
        int i2 = this.e;
        int i3 = i2 + i;
        int i4 = this.g;
        if (i3 > i4) {
            n(i4 - i2);
            throw InvalidProtocolBufferNanoException.b();
        }
        if (i > this.f3165c - i2) {
            throw InvalidProtocolBufferNanoException.b();
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f3163a, i2, bArr, 0, i);
        this.e += i;
        return bArr;
    }

    public int g() {
        byte e = e();
        byte e2 = e();
        byte e3 = e();
        return ((e() & 255) << 24) | (e & 255) | ((e2 & 255) << 8) | ((e3 & 255) << 16);
    }

    public long h() {
        return ((e() & 255) << 8) | (e() & 255) | ((e() & 255) << 16) | ((e() & 255) << 24) | ((e() & 255) << 32) | ((e() & 255) << 40) | ((e() & 255) << 48) | ((e() & 255) << 56);
    }

    public int i() {
        int i;
        byte e = e();
        if (e >= 0) {
            return e;
        }
        int i2 = e & Byte.MAX_VALUE;
        byte e2 = e();
        if (e2 >= 0) {
            i = e2 << 7;
        } else {
            i2 |= (e2 & Byte.MAX_VALUE) << 7;
            byte e3 = e();
            if (e3 >= 0) {
                i = e3 << 14;
            } else {
                i2 |= (e3 & Byte.MAX_VALUE) << 14;
                byte e4 = e();
                if (e4 < 0) {
                    int i3 = i2 | ((e4 & Byte.MAX_VALUE) << 21);
                    byte e5 = e();
                    int i4 = i3 | (e5 << 28);
                    if (e5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (e() >= 0) {
                            return i4;
                        }
                    }
                    throw new InvalidProtocolBufferNanoException("CodedInputStream encountered a malformed varint.");
                }
                i = e4 << 21;
            }
        }
        return i | i2;
    }

    public String j() {
        int i = i();
        if (i > this.f3165c - this.e || i <= 0) {
            return new String(f(i), d.f3168a);
        }
        String str = new String(this.f3163a, this.e, i, d.f3168a);
        this.e += i;
        return str;
    }

    public int k() {
        if (this.e == this.f3165c) {
            this.f = 0;
            return 0;
        }
        int i = i();
        this.f = i;
        if (i != 0) {
            return i;
        }
        throw new InvalidProtocolBufferNanoException("Protocol message contained an invalid tag (zero).");
    }

    public final void l() {
        int i = this.f3165c + this.f3166d;
        this.f3165c = i;
        int i2 = this.g;
        if (i <= i2) {
            this.f3166d = 0;
            return;
        }
        int i3 = i - i2;
        this.f3166d = i3;
        this.f3165c = i - i3;
    }

    public boolean m(int i) {
        int k;
        int i2 = i & 7;
        if (i2 == 0) {
            i();
            return true;
        }
        if (i2 == 1) {
            h();
            return true;
        }
        if (i2 == 2) {
            n(i());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new InvalidProtocolBufferNanoException("Protocol message tag had invalid wire type.");
            }
            g();
            return true;
        }
        do {
            k = k();
            if (k == 0) {
                break;
            }
        } while (m(k));
        a(((i >>> 3) << 3) | 4);
        return true;
    }

    public void n(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.a();
        }
        int i2 = this.e;
        int i3 = i2 + i;
        int i4 = this.g;
        if (i3 > i4) {
            n(i4 - i2);
            throw InvalidProtocolBufferNanoException.b();
        }
        if (i > this.f3165c - i2) {
            throw InvalidProtocolBufferNanoException.b();
        }
        this.e = i2 + i;
    }
}
