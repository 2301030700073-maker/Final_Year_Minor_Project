package com.fsck.k9.mail.filter;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LineWrapOutputStream extends FilterOutputStream {
    public static final byte[] CRLF = {13, 10};
    public final byte[] buffer;
    public int bufferStart;
    public int endOfLastWord;
    public int lineLength;

    public LineWrapOutputStream(SmtpDataStuffing smtpDataStuffing) {
        super(smtpDataStuffing);
        this.bufferStart = 0;
        this.lineLength = 0;
        this.endOfLastWord = 0;
        this.buffer = new byte[998];
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        int i = this.lineLength;
        int i2 = this.bufferStart;
        if (i > i2) {
            byte[] bArr = this.buffer;
            ((FilterOutputStream) this).out.write(bArr, i2, i - i2);
            int i3 = this.lineLength;
            if (i3 == bArr.length) {
                i3 = 0;
            }
            this.bufferStart = i3;
            this.endOfLastWord = 0;
        }
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        int i2 = this.lineLength;
        byte[] bArr = this.buffer;
        if (i2 == bArr.length) {
            int i3 = this.endOfLastWord;
            OutputStream outputStream = ((FilterOutputStream) this).out;
            byte[] bArr2 = CRLF;
            if (i3 > 0) {
                int i4 = this.bufferStart;
                outputStream.write(bArr, i4, i3 - i4);
                ((FilterOutputStream) this).out.write(bArr2);
                this.bufferStart = 0;
                int i5 = this.endOfLastWord + 1;
                this.endOfLastWord = i5;
                int length = bArr.length - i5;
                this.lineLength = length;
                if (length > 0) {
                    System.arraycopy(bArr, i5, bArr, 0, length);
                }
                this.endOfLastWord = 0;
            } else {
                int i6 = this.bufferStart;
                outputStream.write(bArr, i6, bArr.length - i6);
                ((FilterOutputStream) this).out.write(bArr2);
                this.lineLength = 0;
                this.bufferStart = 0;
            }
        }
        if (i != 10 && i != 13) {
            if (i == 32) {
                this.endOfLastWord = this.lineLength;
            }
            int i7 = this.lineLength;
            bArr[i7] = (byte) i;
            this.lineLength = i7 + 1;
            return;
        }
        int i8 = this.lineLength;
        int i9 = this.bufferStart;
        if (i8 - i9 > 0) {
            ((FilterOutputStream) this).out.write(bArr, i9, i8 - i9);
        }
        ((FilterOutputStream) this).out.write(i);
        this.lineLength = 0;
        this.bufferStart = 0;
        this.endOfLastWord = 0;
    }
}
