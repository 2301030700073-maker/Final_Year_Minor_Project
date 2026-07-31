package okio;

import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, ": actual 0x");
        m.append(StringsKt.padStart(8, UStringsKt.toHexString(i2)));
        m.append(" != expected 0x");
        m.append(StringsKt.padStart(8, UStringsKt.toHexString(i)));
        throw new IOException(m.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public final long read(long j, Buffer buffer) {
        GzipSource gzipSource = this;
        buffer.getClass();
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j));
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
            checkEqual(8075, realBufferedSource.readShort(), "ID1ID2");
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
                checkEqual(realBufferedSource.readShortLe(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            gzipSource.section = (byte) 1;
        }
        if (gzipSource.section == 1) {
            long j2 = buffer.size;
            long read = gzipSource.inflaterSource.read(j, buffer);
            if (read != -1) {
                gzipSource.updateCrc(buffer, j2, read);
                return read;
            }
            gzipSource.section = (byte) 2;
        }
        if (gzipSource.section == 2) {
            checkEqual(realBufferedSource.readIntLe(), (int) crc32.getValue(), "CRC");
            checkEqual(realBufferedSource.readIntLe(), (int) gzipSource.inflater.getBytesWritten(), "ISIZE");
            gzipSource.section = (byte) 3;
            if (!realBufferedSource.exhausted()) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("gzip finished without exhausting source");
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
