package com.bumptech.glide.disklrucache;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StrictLineReader implements Closeable {
    public byte[] buf;
    public final Charset charset;
    public int end;
    public final FileInputStream in;
    public int pos;

    public StrictLineReader(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(Util.US_ASCII)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Unsupported encoding");
            throw null;
        }
        this.in = fileInputStream;
        this.charset = charset;
        this.buf = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.in) {
            try {
                if (this.buf != null) {
                    this.buf = null;
                    this.in.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String readLine() {
        int i;
        synchronized (this.in) {
            try {
                byte[] bArr = this.buf;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.pos >= this.end) {
                    int read = this.in.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.pos = 0;
                    this.end = read;
                }
                for (int i2 = this.pos; i2 != this.end; i2++) {
                    byte[] bArr2 = this.buf;
                    if (bArr2[i2] == 10) {
                        int i3 = this.pos;
                        if (i2 != i3) {
                            i = i2 - 1;
                            if (bArr2[i] == 13) {
                                String str = new String(bArr2, i3, i - i3, this.charset.name());
                                this.pos = i2 + 1;
                                return str;
                            }
                        }
                        i = i2;
                        String str2 = new String(bArr2, i3, i - i3, this.charset.name());
                        this.pos = i2 + 1;
                        return str2;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.end - this.pos) + 80) { // from class: com.bumptech.glide.disklrucache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public final String toString() {
                        int i4 = ((ByteArrayOutputStream) this).count;
                        if (i4 > 0) {
                            int i5 = i4 - 1;
                            if (((ByteArrayOutputStream) this).buf[i5] == 13) {
                                i4 = i5;
                            }
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i4, StrictLineReader.this.charset.name());
                        } catch (UnsupportedEncodingException e) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
                            return null;
                        }
                    }
                };
                while (true) {
                    byte[] bArr3 = this.buf;
                    int i4 = this.pos;
                    byteArrayOutputStream.write(bArr3, i4, this.end - i4);
                    this.end = -1;
                    FileInputStream fileInputStream = this.in;
                    byte[] bArr4 = this.buf;
                    int read2 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (read2 == -1) {
                        throw new EOFException();
                    }
                    this.pos = 0;
                    this.end = read2;
                    for (int i5 = 0; i5 != this.end; i5++) {
                        byte[] bArr5 = this.buf;
                        if (bArr5[i5] == 10) {
                            int i6 = this.pos;
                            if (i5 != i6) {
                                byteArrayOutputStream.write(bArr5, i6, i5 - i6);
                            }
                            this.pos = i5 + 1;
                            return byteArrayOutputStream.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
