package okio;

import androidx.compose.animation.core.Animation;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.text.Charsets;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.ZipFilesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer bufferField;
    public boolean closed;
    public final Source source;

    public RealBufferedSource(Source source) {
        source.getClass();
        this.source = source;
        this.bufferField = new Buffer();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    public final boolean exhausted() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return false;
        }
        Buffer buffer = this.bufferField;
        return buffer.exhausted() && this.source.read(buffer, 8192L) == -1;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public final Buffer getBuffer() {
        return this.bufferField;
    }

    public final long indexOf(byte b, long j, long j2) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0L;
        }
        if (0 > j2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("fromIndex=0 toIndex=", j2));
            return 0L;
        }
        long j3 = 0;
        while (j3 < j2) {
            Buffer buffer = this.bufferField;
            byte b2 = b;
            long j4 = j2;
            long indexOf = buffer.indexOf(b2, j3, j4);
            if (indexOf == -1) {
                long j5 = buffer.size;
                if (j5 >= j4 || this.source.read(buffer, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                b = b2;
                j2 = j4;
            } else {
                return indexOf;
            }
        }
        return -1L;
    }

    public final long indexOfElement(ByteString byteString) {
        byteString.getClass();
        long j = 0;
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0L;
        }
        while (true) {
            Buffer buffer = this.bufferField;
            long indexOfElement = buffer.indexOfElement(j, byteString);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long j2 = buffer.size;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // okio.BufferedSource
    public final InputStream inputStream() {
        return new Buffer$inputStream$1(this, 2);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.closed;
    }

    public final RealBufferedSource peek() {
        return new RealBufferedSource(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public final boolean rangeEquals(long j, ByteString byteString) {
        byteString.getClass();
        int size$okio = byteString.getSize$okio();
        if (!this.closed) {
            return size$okio >= 0 && j >= 0 && size$okio <= byteString.getSize$okio() && (size$okio == 0 || ZipFilesKt.commonIndexOf(this, byteString, size$okio, j, j + 1) != -1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
        return false;
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        buffer.getClass();
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
            return 0L;
        }
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0L;
        }
        Buffer buffer2 = this.bufferField;
        if (buffer2.size == 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.source.read(buffer2, 8192L) == -1) {
                return -1L;
            }
        }
        return buffer2.read(buffer, Math.min(j, buffer2.size));
    }

    @Override // okio.BufferedSource
    public final long readAll(Sink sink) {
        Buffer buffer;
        long j = 0;
        while (true) {
            Source source = this.source;
            buffer = this.bufferField;
            if (source.read(buffer, 8192L) == -1) {
                break;
            }
            long completeSegmentByteCount = buffer.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j += completeSegmentByteCount;
                sink.write(buffer, completeSegmentByteCount);
            }
        }
        long j2 = buffer.size;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        sink.write(buffer, j2);
        return j3;
    }

    public final byte readByte() {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public final byte[] readByteArray() {
        Source source = this.source;
        Buffer buffer = this.bufferField;
        buffer.writeAll(source);
        return buffer.readByteArray(buffer.size);
    }

    public final ByteString readByteString(long j) {
        require(j);
        return this.bufferField.readByteString(j);
    }

    public final int readInt() {
        require(4L);
        return this.bufferField.readInt();
    }

    public final int readIntLe() {
        require(4L);
        int readInt = this.bufferField.readInt();
        return ((readInt & 255) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    public final long readLongLe() {
        char c;
        char c2;
        long j;
        require(8L);
        Buffer buffer = this.bufferField;
        if (buffer.size < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        segment.getClass();
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            j = ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
            c = 24;
            c2 = '(';
        } else {
            byte[] bArr = segment.data;
            c = 24;
            c2 = '(';
            int i3 = i + 7;
            long j2 = ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
            int i4 = i + 8;
            j = j2 | (bArr[i3] & 255);
            buffer.size -= 8;
            if (i4 == i2) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i4;
            }
        }
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> c2) | ((280375465082880L & j) >>> c) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << c) | ((65280 & j) << c2);
    }

    public final short readShort() {
        require(2L);
        return this.bufferField.readShort();
    }

    public final short readShortLe() {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public final String readString(Charset charset) {
        charset.getClass();
        Source source = this.source;
        Buffer buffer = this.bufferField;
        buffer.writeAll(source);
        return buffer.readString(buffer.size, charset);
    }

    public final String readUtf8(long j) {
        require(j);
        return this.bufferField.readString(j, Charsets.UTF_8);
    }

    public final String readUtf8LineStrict(long j) {
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("limit < 0: ", j));
            return null;
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long indexOf = indexOf((byte) 10, 0L, j2);
        Buffer buffer = this.bufferField;
        if (indexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(buffer, indexOf);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && buffer.getByte(j2 - 1) == 13 && request(j2 + 1) && buffer.getByte(j2) == 10) {
            return okio.internal.Buffer.readUtf8Line(buffer, j2);
        }
        Buffer buffer2 = new Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32L, buffer.size));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size, j) + " content=" + buffer2.readByteString(buffer2.size).hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public final boolean request(long j) {
        Buffer buffer;
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
            return false;
        }
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return false;
        }
        do {
            buffer = this.bufferField;
            if (buffer.size >= j) {
                return true;
            }
        } while (this.source.read(buffer, 8192L) != -1);
        return false;
    }

    public final void require(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public final int select(Options options) {
        options.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0;
        }
        while (true) {
            Buffer buffer = this.bufferField;
            int selectPrefix = okio.internal.Buffer.selectPrefix(buffer, options, true);
            if (selectPrefix != -2) {
                if (selectPrefix != -1) {
                    buffer.skip(options.byteStrings[selectPrefix].getSize$okio());
                    return selectPrefix;
                }
            } else if (this.source.read(buffer, 8192L) == -1) {
                break;
            }
        }
        return -1;
    }

    public final void skip(long j) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return;
        }
        while (j > 0) {
            Buffer buffer = this.bufferField;
            if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, buffer.size);
            buffer.skip(min);
            j -= min;
        }
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.source.timeout();
    }

    public final String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Buffer buffer = this.bufferField;
        if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return buffer.read(byteBuffer);
    }

    @Override // okio.BufferedSource
    public final long indexOf(long j, ByteString byteString) {
        byteString.getClass();
        return ZipFilesKt.commonIndexOf(this, byteString, byteString.getSize$okio(), 0L, j);
    }
}
