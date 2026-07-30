package c.b.b;

import com.google.protobuf.InvalidProtocolBufferException;

/* renamed from: c.b.b.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0469o extends AbstractC0471p {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3196b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3197c;

    /* renamed from: d, reason: collision with root package name */
    public int f3198d;
    public int e;
    public int f;
    public int g;
    public int h;

    public C0469o(byte[] bArr, int i, int i2, boolean z, C0467n c0467n) {
        super(null);
        this.h = Integer.MAX_VALUE;
        this.f3196b = bArr;
        this.f3198d = i2 + i;
        this.f = i;
        this.g = i;
        this.f3197c = z;
    }

    public int d() {
        return this.f - this.g;
    }

    public int e(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.d();
        }
        int d2 = d() + i;
        int i2 = this.h;
        if (d2 > i2) {
            throw InvalidProtocolBufferException.f();
        }
        this.h = d2;
        f();
        return i2;
    }

    public final void f() {
        int i = this.f3198d + this.e;
        this.f3198d = i;
        int i2 = i - this.g;
        int i3 = this.h;
        if (i2 <= i3) {
            this.e = 0;
            return;
        }
        int i4 = i2 - i3;
        this.e = i4;
        this.f3198d = i - i4;
    }
}
