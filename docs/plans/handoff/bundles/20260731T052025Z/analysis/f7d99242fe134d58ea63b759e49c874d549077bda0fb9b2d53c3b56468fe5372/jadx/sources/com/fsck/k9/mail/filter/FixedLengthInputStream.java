package com.fsck.k9.mail.filter;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FixedLengthInputStream extends InputStream implements InputStreamRetargetInterface {
    public final /* synthetic */ int $r8$classId;
    public final InputStream inputStream;
    public int length;
    public int numberOfBytesRead;

    public FixedLengthInputStream(InputStream inputStream) {
        this.$r8$classId = 1;
        this.inputStream = null;
        this.length = 0;
        this.numberOfBytesRead = 3;
        this.inputStream = new PushbackInputStream(inputStream, 2);
        this.numberOfBytesRead = 3;
    }

    private /* synthetic */ long transferTo$com$fsck$k9$mail$filter$FixedLengthInputStream(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    private /* synthetic */ long transferTo$org$apache$james$mime4j$io$EOLConvertingInputStream(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.InputStream
    public int available() {
        switch (this.$r8$classId) {
            case 0:
                return remainingBytes();
            default:
                return super.available();
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        switch (this.$r8$classId) {
            case 1:
                ((PushbackInputStream) this.inputStream).close();
                break;
            default:
                super.close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        int i = this.$r8$classId;
        int i2 = -1;
        InputStream inputStream = this.inputStream;
        switch (i) {
            case 0:
                if (remainingBytes() == 0) {
                    return -1;
                }
                int read = inputStream.read();
                if (read != -1) {
                    this.numberOfBytesRead++;
                }
                return read;
            default:
                PushbackInputStream pushbackInputStream = (PushbackInputStream) inputStream;
                int read2 = pushbackInputStream.read();
                if (read2 != -1) {
                    int i3 = this.numberOfBytesRead;
                    if ((i3 & 1) != 0 && read2 == 13) {
                        int read3 = pushbackInputStream.read();
                        if (read3 != -1) {
                            pushbackInputStream.unread(read3);
                        }
                        if (read3 != 10) {
                            pushbackInputStream.unread(10);
                        }
                    } else if ((i3 & 2) != 0 && read2 == 10 && this.length != 13) {
                        pushbackInputStream.unread(10);
                        i2 = 13;
                        this.length = i2;
                    }
                    i2 = read2;
                    this.length = i2;
                }
                return i2;
        }
    }

    public int remainingBytes() {
        return this.length - this.numberOfBytesRead;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        switch (this.$r8$classId) {
            case 0:
                long remainingBytes = remainingBytes();
                if (j > remainingBytes) {
                    j = remainingBytes;
                }
                long skip = this.inputStream.skip(j);
                if (skip > 0) {
                    this.numberOfBytesRead += (int) skip;
                }
                return skip;
            default:
                return super.skip(j);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return String.format(Locale.ROOT, "FixedLengthInputStream(in=%s, length=%d)", Arrays.copyOf(new Object[]{this.inputStream.toString(), Integer.valueOf(this.length)}, 2));
            default:
                return super.toString();
        }
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        switch (this.$r8$classId) {
            case 0:
                return transferTo$com$fsck$k9$mail$filter$FixedLengthInputStream(outputStream);
            default:
                return transferTo$org$apache$james$mime4j$io$EOLConvertingInputStream(outputStream);
        }
    }

    public FixedLengthInputStream(InputStream inputStream, int i) {
        this.$r8$classId = 0;
        this.inputStream = inputStream;
        this.length = i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        switch (this.$r8$classId) {
            case 0:
                bArr.getClass();
                return read(bArr, 0, bArr.length);
            default:
                return super.read(bArr);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        switch (this.$r8$classId) {
            case 0:
                bArr.getClass();
                if (remainingBytes() == 0) {
                    return -1;
                }
                int remainingBytes = remainingBytes();
                if (i2 > remainingBytes) {
                    i2 = remainingBytes;
                }
                int read = this.inputStream.read(bArr, i, i2);
                if (read != -1) {
                    this.numberOfBytesRead += read;
                }
                return read;
            default:
                return super.read(bArr, i, i2);
        }
    }
}
