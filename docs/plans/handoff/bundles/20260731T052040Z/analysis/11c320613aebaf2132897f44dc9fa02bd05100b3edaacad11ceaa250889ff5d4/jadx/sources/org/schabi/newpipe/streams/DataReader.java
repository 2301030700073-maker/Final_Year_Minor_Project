package org.schabi.newpipe.streams;

import com.google.android.exoplayer2.util.Log;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DataReader {
    public long position = 0;
    public final short[] primitive = new short[8];
    public final byte[] readBuffer;
    public int readCount;
    public int readOffset;
    public final SharpStream stream;
    public AnonymousClass1 view;
    public int viewSize;

    public DataReader(SharpStream sharpStream) {
        byte[] bArr = new byte[131072];
        this.readBuffer = bArr;
        this.stream = sharpStream;
        this.readOffset = bArr.length;
    }

    public final boolean available() {
        return this.readCount > 0 || this.stream.available() > 0;
    }

    public final boolean fillBuffer() {
        if (this.readCount >= 0) {
            int i = this.readOffset;
            byte[] bArr = this.readBuffer;
            if (i >= bArr.length) {
                int read = this.stream.read(bArr);
                this.readCount = read;
                if (read < 1) {
                    this.readCount = -1;
                    return true;
                }
                this.readOffset = 0;
            }
            if (this.readCount >= 1) {
                return false;
            }
        }
        return true;
    }

    public final void primitiveRead(int i) {
        byte[] bArr = new byte[i];
        int read = read(bArr, 0, i);
        if (read != i) {
            throw new EOFException("Truncated stream, missing " + (i - read) + " bytes");
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.primitive[i2] = (short) (bArr[i2] & 255);
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = this.readCount;
        if (i5 < 0) {
            return -1;
        }
        byte[] bArr2 = this.readBuffer;
        int i6 = 0;
        if (i2 >= bArr2.length) {
            if (i5 > 0) {
                System.arraycopy(bArr2, this.readOffset, bArr, i, i5);
                int i7 = this.readOffset;
                i4 = this.readCount;
                this.readOffset = i7 + i4;
                i += i4;
                i2 -= i4;
                this.readCount = 0;
            } else {
                i4 = 0;
            }
            i3 = Math.max(this.stream.read(bArr, i, i2), 0) + i4;
        } else {
            while (i2 > 0 && !fillBuffer()) {
                int min = Math.min(this.readCount, i2);
                System.arraycopy(bArr2, this.readOffset, bArr, i, min);
                this.readOffset += min;
                this.readCount -= min;
                i += min;
                i2 -= min;
                i6 += min;
            }
            i3 = i6;
        }
        this.position += i3;
        return i3;
    }

    public final int readInt() {
        primitiveRead(4);
        short[] sArr = this.primitive;
        return sArr[3] | (sArr[0] << 24) | (sArr[1] << 16) | (sArr[2] << 8);
    }

    public final long readLong() {
        primitiveRead(8);
        short[] sArr = this.primitive;
        return (((((sArr[0] << 24) | (sArr[1] << 16)) | (sArr[2] << 8)) | sArr[3]) << 32) | sArr[7] | (sArr[6] << 8) | (sArr[4] << 24) | (sArr[5] << 16);
    }

    public final short readShort() {
        primitiveRead(2);
        short[] sArr = this.primitive;
        return (short) (sArr[1] | (sArr[0] << 8));
    }

    public final long skipBytes(long j) {
        int i = this.readCount;
        if (i < 0) {
            return 0L;
        }
        SharpStream sharpStream = this.stream;
        if (i == 0) {
            j = sharpStream.skip(j);
        } else {
            long j2 = i;
            if (j2 > j) {
                int i2 = (int) j;
                this.readCount = i - i2;
                this.readOffset += i2;
            } else {
                j = sharpStream.skip(j - j2) + j2;
                this.readCount = 0;
                this.readOffset = this.readBuffer.length;
            }
        }
        this.position += j;
        return j;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.streams.DataReader$1, reason: invalid class name */
    public final class AnonymousClass1 extends InputStream implements InputStreamRetargetInterface {
        public final /* synthetic */ int $r8$classId = 0;
        public final Object this$0;

        public AnonymousClass1(SharpStream sharpStream) {
            if (sharpStream.canRead()) {
                this.this$0 = sharpStream;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("SharpStream is not readable");
                throw null;
            }
        }

        private /* synthetic */ long transferTo$org$schabi$newpipe$streams$DataReader$1(OutputStream outputStream) {
            return DesugarInputStream.transferTo(this, outputStream);
        }

        private /* synthetic */ long transferTo$org$schabi$newpipe$streams$io$SharpInputStream(OutputStream outputStream) {
            return DesugarInputStream.transferTo(this, outputStream);
        }

        @Override // java.io.InputStream
        public final int available() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    return ((DataReader) obj).viewSize;
                default:
                    long available = ((SharpStream) obj).available();
                    return available > 2147483647L ? Log.LOG_LEVEL_OFF : (int) available;
            }
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((DataReader) obj).viewSize = 0;
                    break;
                default:
                    ((SharpStream) obj).close();
                    break;
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            switch (this.$r8$classId) {
                case 0:
                    return false;
                default:
                    return super.markSupported();
            }
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int i3 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i3) {
                case 0:
                    DataReader dataReader = (DataReader) obj;
                    int i4 = dataReader.viewSize;
                    if (i4 < 1) {
                        return -1;
                    }
                    int read = dataReader.read(bArr, i, Math.min(i4, i2));
                    dataReader.viewSize -= read;
                    return read;
                default:
                    return ((SharpStream) obj).read(bArr, i, i2);
            }
        }

        @Override // java.io.InputStream
        public final long skip(long j) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    DataReader dataReader = (DataReader) obj;
                    int i2 = dataReader.viewSize;
                    if (i2 < 1) {
                        return 0L;
                    }
                    int skipBytes = (int) dataReader.skipBytes(Math.min(j, i2));
                    dataReader.viewSize -= skipBytes;
                    return skipBytes;
                default:
                    return ((SharpStream) obj).skip(j);
            }
        }

        @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
        public /* synthetic */ long transferTo(OutputStream outputStream) {
            switch (this.$r8$classId) {
                case 0:
                    return transferTo$org$schabi$newpipe$streams$DataReader$1(outputStream);
                default:
                    return transferTo$org$schabi$newpipe$streams$io$SharpInputStream(outputStream);
            }
        }

        public AnonymousClass1(DataReader dataReader) {
            this.this$0 = dataReader;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr) {
            switch (this.$r8$classId) {
                case 0:
                    return read(bArr, 0, bArr.length);
                default:
                    return ((SharpStream) this.this$0).read(bArr);
            }
        }

        @Override // java.io.InputStream
        public final int read() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    DataReader dataReader = (DataReader) obj;
                    if (dataReader.viewSize < 1) {
                        return -1;
                    }
                    int read = dataReader.read();
                    if (read > 0) {
                        dataReader.viewSize--;
                    }
                    return read;
                default:
                    return ((SharpStream) obj).read();
            }
        }
    }

    public final int read() {
        if (fillBuffer()) {
            return -1;
        }
        this.position++;
        this.readCount--;
        int i = this.readOffset;
        this.readOffset = i + 1;
        return this.readBuffer[i] & 255;
    }
}
