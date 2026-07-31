package okio;

import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealBufferedSource$inputStream$1 extends InputStream implements InputStreamRetargetInterface {
    public final /* synthetic */ RealBufferedSource this$0;

    public RealBufferedSource$inputStream$1(RealBufferedSource realBufferedSource) {
        this.this$0 = realBufferedSource;
    }

    @Override // java.io.InputStream
    public final int available() {
        RealBufferedSource realBufferedSource = this.this$0;
        if (!realBufferedSource.closed) {
            return (int) Math.min(realBufferedSource.bufferField.size, 2147483647L);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("closed");
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.this$0.close();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        RealBufferedSource realBufferedSource = this.this$0;
        Buffer buffer = realBufferedSource.bufferField;
        if (realBufferedSource.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("closed");
            return 0;
        }
        UStringsKt.checkOffsetAndCount(bArr.length, i, i2);
        if (buffer.size == 0 && realBufferedSource.source.read(8192L, buffer) == -1) {
            return -1;
        }
        return buffer.read(bArr, i, i2);
    }

    public final String toString() {
        return this.this$0 + ".inputStream()";
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public final long transferTo(OutputStream outputStream) {
        outputStream.getClass();
        RealBufferedSource realBufferedSource = this.this$0;
        Buffer buffer = realBufferedSource.bufferField;
        if (realBufferedSource.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("closed");
            return 0L;
        }
        long j = 0;
        while (true) {
            if (buffer.size == 0 && realBufferedSource.source.read(8192L, buffer) == -1) {
                return j;
            }
            long j2 = buffer.size;
            j += j2;
            UStringsKt.checkOffsetAndCount(j2, 0L, j2);
            Segment segment = buffer.head;
            while (j2 > 0) {
                segment.getClass();
                int min = (int) Math.min(j2, segment.limit - segment.pos);
                outputStream.write(segment.data, segment.pos, min);
                int i = segment.pos + min;
                segment.pos = i;
                long j3 = min;
                buffer.size -= j3;
                j2 -= j3;
                if (i == segment.limit) {
                    Segment pop = segment.pop();
                    buffer.head = pop;
                    SegmentPool.recycle(segment);
                    segment = pop;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        RealBufferedSource realBufferedSource = this.this$0;
        Buffer buffer = realBufferedSource.bufferField;
        if (realBufferedSource.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("closed");
            return 0;
        }
        if (buffer.size == 0 && realBufferedSource.source.read(8192L, buffer) == -1) {
            return -1;
        }
        return buffer.readByte() & 255;
    }
}
