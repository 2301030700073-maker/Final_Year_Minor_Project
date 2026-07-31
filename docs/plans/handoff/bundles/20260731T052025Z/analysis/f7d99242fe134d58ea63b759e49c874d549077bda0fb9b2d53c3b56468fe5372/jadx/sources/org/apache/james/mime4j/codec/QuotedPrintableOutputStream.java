package org.apache.james.mime4j.codec;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuotedPrintableOutputStream extends FilterOutputStream {
    public static final byte[] HEX_DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    public boolean closed;
    public int nextSoftBreak;
    public final byte[] outBuffer;
    public int outputIndex;
    public boolean pendingCR;
    public boolean pendingSpace;
    public boolean pendingTab;
    public final byte[] singleByte;

    public QuotedPrintableOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.closed = false;
        this.singleByte = new byte[1];
        this.outBuffer = new byte[3072];
        this.pendingSpace = false;
        this.pendingTab = false;
        this.pendingCR = false;
        this.outputIndex = 0;
        this.nextSoftBreak = 77;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.closed) {
            return;
        }
        try {
            writePending();
            flushOutput();
        } finally {
            this.closed = true;
        }
    }

    public final void escape(byte b) {
        int i = this.nextSoftBreak - 1;
        this.nextSoftBreak = i;
        if (i <= 3) {
            write((byte) 61);
            write((byte) 13);
            write((byte) 10);
            this.nextSoftBreak = 76;
        }
        int i2 = b & 255;
        write((byte) 61);
        this.nextSoftBreak--;
        byte[] bArr = HEX_DIGITS;
        write(bArr[i2 >> 4]);
        this.nextSoftBreak--;
        write(bArr[i2 % 16]);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        flushOutput();
    }

    public final void flushOutput() {
        int i = this.outputIndex;
        byte[] bArr = this.outBuffer;
        int length = bArr.length;
        OutputStream outputStream = ((FilterOutputStream) this).out;
        if (i < length) {
            outputStream.write(bArr, 0, i);
        } else {
            outputStream.write(bArr);
        }
        this.outputIndex = 0;
    }

    public final void plain(byte b) {
        int i = this.nextSoftBreak - 1;
        this.nextSoftBreak = i;
        if (i <= 1) {
            write((byte) 61);
            write((byte) 13);
            write((byte) 10);
            this.nextSoftBreak = 76;
        }
        write(b);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
            return;
        }
        for (int i3 = i; i3 < i2 + i; i3++) {
            byte b = bArr[i3];
            if (b == 10) {
                if (this.pendingCR) {
                    if (this.pendingSpace) {
                        escape((byte) 32);
                    } else if (this.pendingTab) {
                        escape((byte) 9);
                    }
                    write((byte) 13);
                    write((byte) 10);
                    this.nextSoftBreak = 76;
                    this.pendingSpace = false;
                    this.pendingTab = false;
                    this.pendingCR = false;
                } else {
                    writePending();
                    plain(b);
                }
            } else if (b == 13) {
                this.pendingCR = true;
            } else {
                writePending();
                if (b == 32) {
                    this.pendingSpace = true;
                } else if (b == 9) {
                    this.pendingTab = true;
                } else if (b < 32) {
                    escape(b);
                } else if (b > 126) {
                    escape(b);
                } else if (b == 61 || b == 46) {
                    escape(b);
                } else {
                    plain(b);
                }
            }
        }
    }

    public final void writePending() {
        if (this.pendingSpace) {
            plain((byte) 32);
        } else if (this.pendingTab) {
            plain((byte) 9);
        } else if (this.pendingCR) {
            plain((byte) 13);
        }
        this.pendingSpace = false;
        this.pendingTab = false;
        this.pendingCR = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        byte[] bArr = this.singleByte;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    public final void write(byte b) {
        int i = this.outputIndex;
        int i2 = i + 1;
        this.outputIndex = i2;
        byte[] bArr = this.outBuffer;
        bArr[i] = b;
        if (i2 >= bArr.length) {
            flushOutput();
        }
    }
}
