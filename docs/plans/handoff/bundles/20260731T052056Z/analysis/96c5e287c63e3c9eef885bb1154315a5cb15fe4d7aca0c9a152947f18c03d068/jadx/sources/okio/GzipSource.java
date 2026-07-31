package okio;

import androidx.compose.animation.core.Animation;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GzipSource implements Source {
    public final CRC32 crc;
    public final Inflater inflater;
    public final InflaterSource inflaterSource;
    public byte section;
    public final RealBufferedSource source;

    public GzipSource(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        RealBufferedSource realBufferedSource = new RealBufferedSource(bufferedSource);
        this.source = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource(realBufferedSource, inflater);
        this.crc = new CRC32();
    }

    public static void checkEqual(int i, int i2, String str) {
        if (i2 == i) {
            return;
        }
        throw new IOException(str + ": actual 0x" + StringsKt.padStart(8, HttpUrl.Companion.toHexString(i2)) + " != expected 0x" + StringsKt.padStart(8, HttpUrl.Companion.toHexString(i)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        byte b;
        Buffer buffer2;
        GzipSource gzipSource = this;
        RealBufferedSource realBufferedSource = gzipSource.source;
        Buffer buffer3 = realBufferedSource.bufferField;
        buffer.getClass();
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b2 = gzipSource.section;
        CRC32 crc32 = gzipSource.crc;
        if (b2 == 0) {
            realBufferedSource.require(10L);
            byte b3 = buffer3.getByte(3L);
            boolean z = ((b3 >> 1) & 1) == 1;
            if (z) {
                gzipSource.updateCrc(buffer3, 0L, 10L);
            }
            checkEqual(8075, realBufferedSource.readShort(), "ID1ID2");
            realBufferedSource.skip(8L);
            if (((b3 >> 2) & 1) == 1) {
                realBufferedSource.require(2L);
                if (z) {
                    updateCrc(buffer3, 0L, 2L);
                }
                long readShortLe = buffer3.readShortLe() & 65535;
                realBufferedSource.require(readShortLe);
                if (z) {
                    updateCrc(buffer3, 0L, readShortLe);
                }
                buffer2 = buffer3;
                realBufferedSource.skip(readShortLe);
            } else {
                buffer2 = buffer3;
            }
            if (((b3 >> 3) & 1) == 1) {
                long indexOf = realBufferedSource.indexOf((byte) 0, 0L, Long.MAX_VALUE);
                if (indexOf == -1) {
                    throw new EOFException();
                }
                if (z) {
                    updateCrc(buffer2, 0L, indexOf + 1);
                }
                realBufferedSource.skip(indexOf + 1);
            }
            if (((b3 >> 4) & 1) == 1) {
                long indexOf2 = realBufferedSource.indexOf((byte) 0, 0L, Long.MAX_VALUE);
                if (indexOf2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    gzipSource = this;
                    gzipSource.updateCrc(buffer2, 0L, indexOf2 + 1);
                } else {
                    gzipSource = this;
                }
                realBufferedSource.skip(indexOf2 + 1);
            } else {
                gzipSource = this;
            }
            if (z) {
                checkEqual(realBufferedSource.readShortLe(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            gzipSource.section = (byte) 1;
            b2 = 1;
        }
        if (b2 == 1) {
            long j2 = buffer.size;
            long read = gzipSource.inflaterSource.read(buffer, j);
            if (read != -1) {
                gzipSource.updateCrc(buffer, j2, read);
                return read;
            }
            b = 2;
            gzipSource.section = (byte) 2;
            b2 = 2;
        } else {
            b = 2;
        }
        if (b2 == b) {
            checkEqual(realBufferedSource.readIntLe(), (int) crc32.getValue(), "CRC");
            checkEqual(realBufferedSource.readIntLe(), (int) gzipSource.inflater.getBytesWritten(), "ISIZE");
            gzipSource.section = (byte) 3;
            if (!realBufferedSource.exhausted()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.source.source.timeout();
    }

    public final void updateCrc(Buffer buffer, long j, long j2) {
        Segment segment = buffer.head;
        segment.getClass();
        while (true) {
            long j3 = segment.limit - segment.pos;
            if (j < j3) {
                break;
            }
            j -= j3;
            segment = segment.next;
            segment.getClass();
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.limit - r6, j2);
            this.crc.update(segment.data, (int) (segment.pos + j), min);
            j2 -= min;
            segment = segment.next;
            segment.getClass();
            j = 0;
        }
    }
}
