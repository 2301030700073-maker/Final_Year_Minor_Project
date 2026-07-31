package org.apache.james.mime4j.util;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteArrayBuffer implements ByteSequence {
    public byte[] buffer;
    public int len;

    public ByteArrayBuffer(int i) {
        if (i >= 0) {
            this.buffer = new byte[i];
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Buffer capacity may not be negative");
            throw null;
        }
    }

    public final void append(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null) {
            return;
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.len + i2;
        byte[] bArr2 = this.buffer;
        if (i4 > bArr2.length) {
            byte[] bArr3 = new byte[Math.max(bArr2.length << 1, i4)];
            System.arraycopy(this.buffer, 0, bArr3, 0, this.len);
            this.buffer = bArr3;
        }
        System.arraycopy(bArr, i, this.buffer, this.len, i2);
        this.len = i4;
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public final byte byteAt(int i) {
        if (i < 0 || i >= this.len) {
            throw new IndexOutOfBoundsException();
        }
        return this.buffer[i];
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public final int length() {
        return this.len;
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public final byte[] toByteArray() {
        int i = this.len;
        byte[] bArr = new byte[i];
        if (i > 0) {
            System.arraycopy(this.buffer, 0, bArr, 0, i);
        }
        return bArr;
    }

    public final String toString() {
        return new String(this.buffer, 0, this.len, StandardCharsets.ISO_8859_1);
    }

    public final void append(int i) {
        int i2 = this.len + 1;
        byte[] bArr = this.buffer;
        if (i2 > bArr.length) {
            byte[] bArr2 = new byte[Math.max(bArr.length << 1, i2)];
            System.arraycopy(this.buffer, 0, bArr2, 0, this.len);
            this.buffer = bArr2;
        }
        this.buffer[this.len] = (byte) i;
        this.len = i2;
    }
}
