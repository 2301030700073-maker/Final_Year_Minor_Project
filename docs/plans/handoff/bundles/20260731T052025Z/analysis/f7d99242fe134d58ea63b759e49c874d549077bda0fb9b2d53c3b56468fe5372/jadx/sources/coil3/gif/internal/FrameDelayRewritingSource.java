package coil3.gif.internal;

import com.jcraft.jzlib.Adler32;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.Buffer;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameDelayRewritingSource extends ForwardingSource {
    private static final Companion Companion = new Companion(null);
    private static final int DEFAULT_FRAME_DELAY = 10;
    private static final ByteString FRAME_DELAY_START_MARKER;
    private static final int FRAME_DELAY_START_MARKER_SIZE_BYTES = 4;
    private static final int MINIMUM_FRAME_DELAY = 2;
    private final Buffer buffer;

    static {
        ByteString byteString = ByteString.EMPTY;
        FRAME_DELAY_START_MARKER = Adler32.decodeHex("0021F904");
    }

    public FrameDelayRewritingSource(Source source) {
        super(source);
        this.buffer = new Buffer();
    }

    private final long indexOf(ByteString byteString) {
        long j = -1;
        while (true) {
            j = this.buffer.indexOf(byteString.internalGet$okio(0), 1 + j, Long.MAX_VALUE);
            if (j == -1 || (request(byteString.getSize$okio()) && this.buffer.rangeEquals(j, byteString))) {
                break;
            }
        }
        return j;
    }

    private final boolean request(long j) {
        Buffer buffer = this.buffer;
        long j2 = buffer.size;
        if (j2 >= j) {
            return true;
        }
        long j3 = j - j2;
        return super.read(buffer, j3) == j3;
    }

    private final long write(Buffer buffer, long j) {
        long read = this.buffer.read(buffer, j);
        if (read < 0) {
            return 0L;
        }
        return read;
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(Buffer buffer, long j) {
        request(j);
        if (this.buffer.size != 0) {
            long j2 = 0;
            while (true) {
                long indexOf = indexOf(FRAME_DELAY_START_MARKER);
                if (indexOf == -1) {
                    break;
                }
                j2 += write(buffer, indexOf + 4);
                if (request(5L) && this.buffer.getByte(4L) == 0 && (((this.buffer.getByte(2L) & 255) << 8) | (this.buffer.getByte(1L) & 255)) < 2) {
                    buffer.m1053writeByte((int) this.buffer.getByte(0L));
                    buffer.m1053writeByte(10);
                    buffer.m1053writeByte(0);
                    this.buffer.skip(3L);
                }
            }
            if (j2 < j) {
                j2 += write(buffer, j - j2);
            }
            if (j2 != 0) {
                return j2;
            }
        } else if (j == 0) {
            return 0L;
        }
        return -1L;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
