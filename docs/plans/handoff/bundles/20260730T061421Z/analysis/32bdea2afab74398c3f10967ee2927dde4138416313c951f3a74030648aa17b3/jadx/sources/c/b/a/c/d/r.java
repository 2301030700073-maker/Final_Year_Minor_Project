package c.b.a.c.d;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class r extends q {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f2995b;

    public r(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f2995b = bArr;
    }

    @Override // c.b.a.c.d.q
    public final byte[] a() {
        return this.f2995b;
    }
}
