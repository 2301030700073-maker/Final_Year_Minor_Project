package c.b.b;

import com.google.protobuf.ByteString;

/* renamed from: c.b.b.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0463l {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0476s f3194a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3195b;

    public C0463l(int i, C0455h c0455h) {
        byte[] bArr = new byte[i];
        this.f3195b = bArr;
        this.f3194a = AbstractC0476s.N(bArr);
    }

    public ByteString a() {
        if (this.f3194a.O() == 0) {
            return new ByteString.LiteralByteString(this.f3195b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }
}
