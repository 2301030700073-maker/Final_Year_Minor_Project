package okhttp3.internal.http2;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.collections.ArraysKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Http2Writer implements Closeable {
    public static final Logger logger = Logger.getLogger(Http2.class.getName());
    public boolean closed;
    public final Buffer hpackBuffer;
    public final Hpack.Writer hpackWriter;
    public int maxFrameSize;
    public final BufferedSink sink;

    public Http2Writer(RealBufferedSink realBufferedSink) {
        realBufferedSink.getClass();
        this.sink = realBufferedSink;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(buffer);
    }

    public final void applyAndAckSettings(Settings settings) {
        settings.getClass();
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                int i = this.maxFrameSize;
                int i2 = settings.set;
                if ((i2 & 32) != 0) {
                    i = settings.values[5];
                }
                this.maxFrameSize = i;
                if (((i2 & 2) != 0 ? settings.values[1] : -1) != -1) {
                    Hpack.Writer writer = this.hpackWriter;
                    int i3 = (i2 & 2) != 0 ? settings.values[1] : -1;
                    writer.getClass();
                    int min = Math.min(i3, 16384);
                    int i4 = writer.maxDynamicTableByteCount;
                    if (i4 != min) {
                        if (min < i4) {
                            writer.smallestHeaderTableSizeSetting = Math.min(writer.smallestHeaderTableSizeSetting, min);
                        }
                        writer.emitDynamicTableSizeUpdate = true;
                        writer.maxDynamicTableByteCount = min;
                        int i5 = writer.dynamicTableByteCount;
                        if (min < i5) {
                            if (min == 0) {
                                Header[] headerArr = writer.dynamicTable;
                                ArraysKt.fill(0, headerArr.length, null, headerArr);
                                writer.nextHeaderIndex = writer.dynamicTable.length - 1;
                                writer.headerCount = 0;
                                writer.dynamicTableByteCount = 0;
                            } else {
                                writer.evictToRecoverBytes(i5 - min);
                            }
                        }
                    }
                }
                frameHeader(0, 0, 4, 1);
                this.sink.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
        }
    }

    public final void data(boolean z, int i, Buffer buffer, int i2) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                BufferedSink bufferedSink = this.sink;
                buffer.getClass();
                bufferedSink.write(i2, buffer);
            }
        }
    }

    public final void flush() {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
        }
    }

    public final void frameHeader(int i, int i2, int i3, int i4) {
        if (i3 != 8) {
            Level level = Level.FINE;
            Logger logger2 = logger;
            if (logger2.isLoggable(level)) {
                logger2.fine(Http2.frameLog(false, i, i2, i3, i4));
            }
        }
        if (i2 > this.maxFrameSize) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "reserved bit set: "));
            return;
        }
        byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
        BufferedSink bufferedSink = this.sink;
        bufferedSink.getClass();
        bufferedSink.writeByte((i2 >>> 16) & 255);
        bufferedSink.writeByte((i2 >>> 8) & 255);
        bufferedSink.writeByte(i2 & 255);
        bufferedSink.writeByte(i3 & 255);
        bufferedSink.writeByte(i4 & 255);
        bufferedSink.writeInt(i & Log.LOG_LEVEL_OFF);
    }

    public final void goAway(int i, ErrorCode errorCode, byte[] bArr) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            frameHeader(0, bArr.length + 8, 7, 0);
            this.sink.writeInt(i);
            this.sink.writeInt(errorCode.getHttpCode());
            if (bArr.length != 0) {
                this.sink.write(bArr);
            }
            this.sink.flush();
        }
    }

    public final void headers(boolean z, int i, ArrayList arrayList) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.hpackWriter.writeHeaders(arrayList);
            long j = this.hpackBuffer.size;
            long min = Math.min(this.maxFrameSize, j);
            int i2 = j == min ? 4 : 0;
            if (z) {
                i2 |= 1;
            }
            frameHeader(i, (int) min, 1, i2);
            this.sink.write(min, this.hpackBuffer);
            if (j > min) {
                long j2 = j - min;
                while (j2 > 0) {
                    long min2 = Math.min(this.maxFrameSize, j2);
                    j2 -= min2;
                    frameHeader(i, (int) min2, 9, j2 == 0 ? 4 : 0);
                    this.sink.write(min2, this.hpackBuffer);
                }
            }
        }
    }

    public final void ping(int i, int i2, boolean z) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(0, 8, 6, z ? 1 : 0);
            this.sink.writeInt(i);
            this.sink.writeInt(i2);
            this.sink.flush();
        }
    }

    public final void rstStream(int i, ErrorCode errorCode) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            frameHeader(i, 4, 3, 0);
            this.sink.writeInt(errorCode.getHttpCode());
            this.sink.flush();
        }
    }

    public final void settings(Settings settings) {
        settings.getClass();
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                frameHeader(0, Integer.bitCount(settings.set) * 6, 4, 0);
                for (int i = 0; i < 10; i++) {
                    boolean z = true;
                    if (((1 << i) & settings.set) == 0) {
                        z = false;
                    }
                    if (z) {
                        this.sink.writeShort(i);
                        this.sink.writeInt(settings.values[i]);
                    }
                }
                this.sink.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void windowUpdate(int i, long j) {
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Http2.frameLogWindowUpdate(i, 4, j, false));
                }
                frameHeader(i, 4, 8, 0);
                this.sink.writeInt((int) j);
                this.sink.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
