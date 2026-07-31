package coil3.gif.internal;

import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FrameDelayRewritingSource extends ForwardingSource {
    public static final ByteString FRAME_DELAY_START_MARKER;
    public final Buffer buffer;

    static {
        ByteString byteString = ByteString.EMPTY;
        FRAME_DELAY_START_MARKER = ByteString.Companion.decodeHex("0021F904");
    }

    public FrameDelayRewritingSource(BufferedSource bufferedSource) {
        super(bufferedSource);
        this.buffer = new Buffer();
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j) {
        long j2;
        long j3;
        request$1(j);
        Buffer buffer2 = this.buffer;
        long j4 = 0;
        if (buffer2.size == 0) {
            return j == 0 ? 0L : -1L;
        }
        long j5 = 0;
        while (true) {
            long j6 = -1;
            while (true) {
                ByteString byteString = FRAME_DELAY_START_MARKER;
                j2 = j4;
                j6 = buffer2.indexOf(byteString.data[0], j6 + 1, Long.MAX_VALUE);
                if (j6 == -1 || (request$1(byteString.data.length) && buffer2.rangeEquals(j6, byteString, byteString.getSize$okio()))) {
                    break;
                }
                j4 = j2;
            }
            if (j6 == -1) {
                break;
            }
            long read = buffer2.read(buffer, j6 + 4);
            if (read < j2) {
                read = j2;
            }
            j5 += read;
            if (request$1(5L) && buffer2.getByte(4L) == 0 && (((buffer2.getByte(2L) & 255) << 8) | (buffer2.getByte(1L) & 255)) < 2) {
                buffer.m877writeByte((int) buffer2.getByte(j2));
                buffer.m877writeByte(10);
                buffer.m877writeByte(0);
                buffer2.skip(3L);
            }
            j4 = 0;
        }
        if (j5 < j) {
            long read2 = buffer2.read(buffer, j - j5);
            j3 = 0;
            if (read2 < 0) {
                read2 = 0;
            }
            j5 += read2;
        } else {
            j3 = 0;
        }
        if (j5 == j3) {
            return -1L;
        }
        return j5;
    }

    public final boolean request$1(long j) {
        Buffer buffer = this.buffer;
        long j2 = buffer.size;
        if (j2 >= j) {
            return true;
        }
        long j3 = j - j2;
        return this.delegate.read(buffer, j3) == j3;
    }
}
