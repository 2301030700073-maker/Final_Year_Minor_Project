package okio;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public static void checkEqual(int i, String str, int i2) {
        if (i2 == i) {
            return;
        }
        StringBuilder m = Config.CC.m(str, ": actual 0x");
        m.append(StringsKt.padStart(AtomicFU.toHexString(i2), 8));
        m.append(" != expected 0x");
        m.append(StringsKt.padStart(AtomicFU.toHexString(i), 8));
        throw new IOException(m.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        GzipSource gzipSource = this;
        buffer.getClass();
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(j, "byteCount < 0: "));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b = gzipSource.section;
        CRC32 crc32 = gzipSource.crc;
        RealBufferedSource realBufferedSource = gzipSource.source;
        if (b == 0) {
            realBufferedSource.require(10L);
            Buffer buffer2 = realBufferedSource.bufferField;
            byte b2 = buffer2.getByte(3L);
            boolean z = ((b2 >> 1) & 1) == 1;
            if (z) {
                gzipSource.updateCrc(buffer2, 0L, 10L);
            }
            checkEqual(8075, "ID1ID2", realBufferedSource.readShort());
            realBufferedSource.skip(8L);
            if (((b2 >> 2) & 1) == 1) {
                realBufferedSource.require(2L);
                if (z) {
                    updateCrc(buffer2, 0L, 2L);
                }
                long readShortLe = buffer2.readShortLe() & 65535;
                realBufferedSource.require(readShortLe);
                if (z) {
                    updateCrc(buffer2, 0L, readShortLe);
                }
                realBufferedSource.skip(readShortLe);
            }
            if (((b2 >> 3) & 1) == 1) {
                long indexOf = realBufferedSource.indexOf((byte) 0, 0L, Long.MAX_VALUE);
                if (indexOf == -1) {
                    throw new EOFException();
                }
                if (z) {
                    updateCrc(buffer2, 0L, indexOf + 1);
                }
                realBufferedSource.skip(indexOf + 1);
            }
            if (((b2 >> 4) & 1) == 1) {
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
                checkEqual(realBufferedSource.readShortLe(), "FHCRC", (short) crc32.getValue());
                crc32.reset();
            }
            gzipSource.section = (byte) 1;
        }
        if (gzipSource.section == 1) {
            long j2 = buffer.size;
            long read = gzipSource.inflaterSource.read(buffer, j);
            if (read != -1) {
                gzipSource.updateCrc(buffer, j2, read);
                return read;
            }
            gzipSource.section = (byte) 2;
        }
        if (gzipSource.section == 2) {
            checkEqual(realBufferedSource.readIntLe(), "CRC", (int) crc32.getValue());
            checkEqual(realBufferedSource.readIntLe(), "ISIZE", (int) gzipSource.inflater.getBytesWritten());
            gzipSource.section = (byte) 3;
            if (!realBufferedSource.exhausted()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("gzip finished without exhausting source");
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
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
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
