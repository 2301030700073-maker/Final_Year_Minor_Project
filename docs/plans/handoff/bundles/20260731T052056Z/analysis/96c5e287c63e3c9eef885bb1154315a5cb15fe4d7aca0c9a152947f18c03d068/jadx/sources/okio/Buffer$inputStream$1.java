package okio;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Buffer$inputStream$1 extends InputStream {
    public final /* synthetic */ int $r8$classId;
    public final Object this$0;

    public Buffer$inputStream$1(ByteBuffer byteBuffer) {
        this.$r8$classId = 1;
        this.this$0 = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return (int) Math.min(((Buffer) obj).size, 2147483647L);
            case 1:
                return ((ByteBuffer) obj).remaining();
            default:
                RealBufferedSource realBufferedSource = (RealBufferedSource) obj;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.bufferField.size, 2147483647L);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
                return 0;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        switch (this.$r8$classId) {
            case 0:
                break;
            case 1:
            default:
                super.close();
                break;
            case 2:
                ((RealBufferedSource) this.this$0).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i3) {
            case 0:
                bArr.getClass();
                return ((Buffer) obj).read(bArr, i, i2);
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                if (!byteBuffer.hasRemaining()) {
                    return -1;
                }
                int min = Math.min(i2, byteBuffer.remaining());
                byteBuffer.get(bArr, i, min);
                return min;
            default:
                bArr.getClass();
                RealBufferedSource realBufferedSource = (RealBufferedSource) obj;
                Buffer buffer = realBufferedSource.bufferField;
                if (realBufferedSource.closed) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
                    return 0;
                }
                HttpUrl.Companion.checkOffsetAndCount(bArr.length, i, i2);
                if (buffer.size == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return buffer.read(bArr, i, i2);
        }
    }

    public String toString() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return ((Buffer) obj) + ".inputStream()";
            case 1:
            default:
                return super.toString();
            case 2:
                return ((RealBufferedSource) obj) + ".inputStream()";
        }
    }

    @Override // java.io.InputStream
    public long transferTo(OutputStream outputStream) {
        switch (this.$r8$classId) {
            case 2:
                outputStream.getClass();
                RealBufferedSource realBufferedSource = (RealBufferedSource) this.this$0;
                Buffer buffer = realBufferedSource.bufferField;
                if (realBufferedSource.closed) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
                    return 0L;
                }
                long j = 0;
                while (true) {
                    if (buffer.size == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                        return j;
                    }
                    long j2 = buffer.size;
                    j += j2;
                    HttpUrl.Companion.checkOffsetAndCount(j2, 0L, j2);
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
                break;
            default:
                return super.transferTo(outputStream);
        }
    }

    public /* synthetic */ Buffer$inputStream$1(BufferedSource bufferedSource, int i) {
        this.$r8$classId = i;
        this.this$0 = bufferedSource;
    }

    private final void close$okio$Buffer$inputStream$1() {
    }

    @Override // java.io.InputStream
    public final int read() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                Buffer buffer = (Buffer) obj;
                if (buffer.size > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                if (byteBuffer.hasRemaining()) {
                    return byteBuffer.get() & 255;
                }
                return -1;
            default:
                RealBufferedSource realBufferedSource = (RealBufferedSource) obj;
                Buffer buffer2 = realBufferedSource.bufferField;
                if (realBufferedSource.closed) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
                    return 0;
                }
                if (buffer2.size == 0 && realBufferedSource.source.read(buffer2, 8192L) == -1) {
                    return -1;
                }
                return buffer2.readByte() & 255;
        }
    }
}
