package com.fsck.k9.mail.filter;

import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CountingOutputStream extends OutputStream {
    public long mCount;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.mCount++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.mCount += i2;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.mCount += bArr.length;
    }
}
