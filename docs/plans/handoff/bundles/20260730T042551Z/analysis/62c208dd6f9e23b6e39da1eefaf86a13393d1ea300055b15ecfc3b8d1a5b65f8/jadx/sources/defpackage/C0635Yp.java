package defpackage;

import java.io.OutputStream;

/* renamed from: Yp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0635Yp extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    public long f4764do = 0;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f4764do++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f4764do += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
            this.f4764do += i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
