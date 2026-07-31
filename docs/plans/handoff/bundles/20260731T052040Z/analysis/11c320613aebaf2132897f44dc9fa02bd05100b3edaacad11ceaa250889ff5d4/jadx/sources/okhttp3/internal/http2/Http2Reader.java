package okhttp3.internal.http2;

import androidx.compose.ui.Modifier;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.Log;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.Hpack;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Http2Reader implements Closeable {
    public static final Logger logger;
    public final ContinuationSource continuation;
    public final Hpack.Reader hpackReader;
    public final BufferedSource source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Companion {
        public static int lengthWithoutPadding(int i, int i2, int i3) {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i3, i, "PROTOCOL_ERROR padding ", " > remaining length "));
            return 0;
        }
    }

    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        logger2.getClass();
        logger = logger2;
    }

    public Http2Reader(RealBufferedSource realBufferedSource) {
        realBufferedSource.getClass();
        this.source = realBufferedSource;
        ContinuationSource continuationSource = new ContinuationSource(realBufferedSource);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(continuationSource);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.source.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0130, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$3(androidx.compose.ui.Modifier.CC.m(r7, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0139, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean nextFrame(boolean r13, okhttp3.internal.http2.Http2Connection.ReaderRunnable r14) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Reader.nextFrame(boolean, okhttp3.internal.http2.Http2Connection$ReaderRunnable):boolean");
    }

    public final void readData(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, final int i3) {
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        if (i3 == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
            return;
        }
        final boolean z4 = true;
        if ((i2 & 1) != 0) {
            z = true;
        } else {
            z = true;
            z4 = false;
        }
        if ((i2 & 32) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
            return;
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.source.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        final int lengthWithoutPadding = Companion.lengthWithoutPadding(i, i2, i4);
        BufferedSource bufferedSource = this.source;
        bufferedSource.getClass();
        final Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        if ((i3 == 0 || (i3 & 1) != 0) ? false : z) {
            final Buffer buffer = new Buffer();
            long j = lengthWithoutPadding;
            bufferedSource.require(j);
            bufferedSource.read(j, buffer);
            TaskQueue.execute$default(http2Connection.pushQueue, http2Connection.connectionName + '[' + i3 + "] onData", new Function0(i3, buffer, lengthWithoutPadding, z4) { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda3
                public final /* synthetic */ int f$1;
                public final /* synthetic */ Buffer f$2;
                public final /* synthetic */ int f$3;

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Http2Connection http2Connection2 = Http2Connection.this;
                    int i5 = this.f$1;
                    Buffer buffer2 = this.f$2;
                    int i6 = this.f$3;
                    try {
                        http2Connection2.pushObserver.getClass();
                        buffer2.skip(i6);
                        http2Connection2.writer.rstStream(i5, ErrorCode.CANCEL);
                        synchronized (http2Connection2) {
                            http2Connection2.currentPushRequests.remove(Integer.valueOf(i5));
                        }
                    } catch (IOException unused) {
                    }
                    return Unit.INSTANCE;
                }
            });
        } else {
            Http2Stream stream = http2Connection.getStream(i3);
            if (stream == null) {
                ((Http2Connection) readerRunnable.this$0).writeSynResetLater$okhttp(i3, ErrorCode.PROTOCOL_ERROR);
                long j2 = lengthWithoutPadding;
                ((Http2Connection) readerRunnable.this$0).updateConnectionFlowControl$okhttp(j2);
                bufferedSource.skip(j2);
            } else {
                TimeZone timeZone = _UtilJvmKt.UTC;
                Http2Stream.FramingSource framingSource = stream.source;
                long j3 = lengthWithoutPadding;
                framingSource.getClass();
                long j4 = j3;
                while (true) {
                    Http2Stream http2Stream = Http2Stream.this;
                    if (j4 <= 0) {
                        TimeZone timeZone2 = _UtilJvmKt.UTC;
                        http2Stream.connection.updateConnectionFlowControl$okhttp(j3);
                        Http2Stream.this.connection.flowControlListener.getClass();
                        break;
                    }
                    synchronized (http2Stream) {
                        z2 = framingSource.finished;
                        z3 = framingSource.readBuffer.size + j4 > framingSource.maxByteCount;
                    }
                    if (z3) {
                        bufferedSource.skip(j4);
                        Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                        break;
                    }
                    if (z2) {
                        bufferedSource.skip(j4);
                        break;
                    }
                    long read = bufferedSource.read(j4, framingSource.receiveBuffer);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    j4 -= read;
                    Http2Stream http2Stream2 = Http2Stream.this;
                    synchronized (http2Stream2) {
                        try {
                            if (framingSource.closed) {
                                Buffer buffer2 = framingSource.receiveBuffer;
                                buffer2.skip(buffer2.size);
                            } else {
                                Buffer buffer3 = framingSource.readBuffer;
                                boolean z5 = buffer3.size == 0;
                                buffer3.writeAll(framingSource.receiveBuffer);
                                if (z5) {
                                    http2Stream2.notifyAll();
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                if (z4) {
                    stream.receiveHeaders(Headers.EMPTY, true);
                }
            }
        }
        this.source.skip(i4);
    }

    public final void readGoAway(Http2Connection.ReaderRunnable readerRunnable, int i, int i2) {
        ErrorCode errorCode;
        Object[] array;
        if (i < 8) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i, "TYPE_GOAWAY length < 8: "));
            return;
        }
        if (i2 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("TYPE_GOAWAY streamId != 0");
            return;
        }
        int readInt = this.source.readInt();
        int readInt2 = this.source.readInt();
        int i3 = i - 8;
        ErrorCode.Companion.getClass();
        ErrorCode[] values = ErrorCode.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                errorCode = null;
                break;
            }
            errorCode = values[i4];
            if (errorCode.getHttpCode() == readInt2) {
                break;
            } else {
                i4++;
            }
        }
        if (errorCode == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(readInt2, "TYPE_GOAWAY unexpected error code: "));
            return;
        }
        ByteString byteString = ByteString.EMPTY;
        if (i3 > 0) {
            byteString = this.source.readByteString(i3);
        }
        byteString.getClass();
        byteString.getSize$okio();
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        synchronized (http2Connection) {
            array = http2Connection.streams.values().toArray(new Http2Stream[0]);
            http2Connection.isShutdown = true;
        }
        for (Http2Stream http2Stream : (Http2Stream[]) array) {
            if (http2Stream.id > readInt && http2Stream.isLocallyInitiated()) {
                http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                ((Http2Connection) readerRunnable.this$0).removeStream$okhttp(http2Stream.id);
            }
        }
    }

    public final List readHeaderBlock(int i, int i2, int i3, int i4) {
        ContinuationSource continuationSource = this.continuation;
        continuationSource.left = i;
        continuationSource.padding = i2;
        continuationSource.flags = i3;
        continuationSource.streamId = i4;
        Hpack.Reader reader = this.hpackReader;
        RealBufferedSource realBufferedSource = reader.source;
        while (!realBufferedSource.exhausted()) {
            byte readByte = realBufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            int i5 = readByte & 255;
            if (i5 == 128) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("index == 0");
                return null;
            }
            if ((readByte & 128) == 128) {
                int readInt = reader.readInt(i5, Token.SWITCH);
                int i6 = readInt - 1;
                if (i6 >= 0) {
                    Header[] headerArr = Hpack.STATIC_HEADER_TABLE;
                    if (i6 <= headerArr.length - 1) {
                        reader.addHeader(headerArr[i6]);
                    }
                }
                int length = reader.nextHeaderIndex + 1 + (i6 - Hpack.STATIC_HEADER_TABLE.length);
                if (length >= 0) {
                    Header[] headerArr2 = reader.dynamicTable;
                    if (length < headerArr2.length) {
                        Header header = headerArr2[length];
                        header.getClass();
                        reader.addHeader(header);
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(readInt, "Header index too large "));
                return null;
            }
            if (i5 == 64) {
                Header[] headerArr3 = Hpack.STATIC_HEADER_TABLE;
                ByteString readByteString = reader.readByteString();
                Hpack.checkLowercase(readByteString);
                reader.insertIntoDynamicTable(new Header(readByteString, reader.readByteString()));
            } else if ((readByte & 64) == 64) {
                reader.insertIntoDynamicTable(new Header(reader.getName(reader.readInt(i5, 63) - 1), reader.readByteString()));
            } else if ((readByte & 32) == 32) {
                int readInt2 = reader.readInt(i5, 31);
                reader.maxDynamicTableByteCount = readInt2;
                if (readInt2 < 0 || readInt2 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + reader.maxDynamicTableByteCount);
                }
                int i7 = reader.dynamicTableByteCount;
                if (readInt2 < i7) {
                    if (readInt2 == 0) {
                        ArraysKt.fill(0, r4.length, null, reader.dynamicTable);
                        reader.nextHeaderIndex = reader.dynamicTable.length - 1;
                        reader.headerCount = 0;
                        reader.dynamicTableByteCount = 0;
                    } else {
                        reader.evictToRecoverBytes(i7 - readInt2);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                Header[] headerArr4 = Hpack.STATIC_HEADER_TABLE;
                ByteString readByteString2 = reader.readByteString();
                Hpack.checkLowercase(readByteString2);
                reader.addHeader(new Header(readByteString2, reader.readByteString()));
            } else {
                reader.addHeader(new Header(reader.getName(reader.readInt(i5, 15) - 1), reader.readByteString()));
            }
        }
        ArrayList arrayList = reader.headerList;
        List list = CollectionsKt.toList(arrayList);
        arrayList.clear();
        reader.headerListByteCount = 0L;
        return list;
    }

    public final void readHeaders(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        int i4;
        if (i3 == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
            return;
        }
        boolean z = false;
        boolean z2 = (i2 & 1) != 0;
        if ((i2 & 8) != 0) {
            byte readByte = this.source.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        if ((i2 & 32) != 0) {
            BufferedSource bufferedSource = this.source;
            bufferedSource.readInt();
            bufferedSource.readByte();
            byte[] bArr2 = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            i -= 5;
        }
        List readHeaderBlock = readHeaderBlock(Companion.lengthWithoutPadding(i, i2, i4), i4, i2, i3);
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        if (i3 != 0 && (i3 & 1) == 0) {
            z = true;
        }
        if (z) {
            TaskQueue.execute$default(http2Connection.pushQueue, http2Connection.connectionName + '[' + i3 + "] onHeaders", new Http2Connection$$ExternalSyntheticLambda4(http2Connection, i3, readHeaderBlock, z2));
            return;
        }
        synchronized (http2Connection) {
            Http2Stream stream = http2Connection.getStream(i3);
            if (stream != null) {
                stream.receiveHeaders(_UtilJvmKt.toHeaders(readHeaderBlock), z2);
                return;
            }
            if (http2Connection.isShutdown) {
                return;
            }
            if (i3 <= http2Connection.lastGoodStreamId) {
                return;
            }
            if (i3 % 2 == http2Connection.nextStreamId % 2) {
                return;
            }
            Http2Stream http2Stream = new Http2Stream(i3, http2Connection, false, z2, _UtilJvmKt.toHeaders(readHeaderBlock));
            http2Connection.lastGoodStreamId = i3;
            http2Connection.streams.put(Integer.valueOf(i3), http2Stream);
            TaskQueue.execute$default(http2Connection.taskRunner.newQueue(), http2Connection.connectionName + '[' + i3 + "] onStream", new ComponentRegistry$Builder$$ExternalSyntheticLambda0(http2Connection, http2Stream, 21));
        }
    }

    public final void readPing(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        if (i != 8) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i, "TYPE_PING length != 8: "));
            return;
        }
        if (i3 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("TYPE_PING streamId != 0");
            return;
        }
        final int readInt = this.source.readInt();
        final int readInt2 = this.source.readInt();
        boolean z = (i2 & 1) != 0;
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        if (!z) {
            TaskQueue taskQueue = http2Connection.writerQueue;
            String m = Modifier.CC.m(new StringBuilder(), ((Http2Connection) readerRunnable.this$0).connectionName, " ping");
            final Http2Connection http2Connection2 = (Http2Connection) readerRunnable.this$0;
            TaskQueue.execute$default(taskQueue, m, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Http2Connection http2Connection3 = Http2Connection.this;
                    try {
                        http2Connection3.writer.ping(readInt, readInt2, true);
                    } catch (IOException e) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection3.close$okhttp(errorCode, errorCode, e);
                    }
                    return Unit.INSTANCE;
                }
            });
            return;
        }
        synchronized (http2Connection) {
            try {
                if (readInt == 1) {
                    http2Connection.intervalPongsReceived++;
                } else if (readInt == 2) {
                    http2Connection.degradedPongsReceived++;
                } else if (readInt == 3) {
                    http2Connection.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void readPushPromise(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        int i4;
        if (i3 == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
            return;
        }
        int i5 = 0;
        if ((i2 & 8) != 0) {
            byte readByte = this.source.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        int readInt = this.source.readInt() & Log.LOG_LEVEL_OFF;
        List readHeaderBlock = readHeaderBlock(Companion.lengthWithoutPadding(i - 4, i2, i4), i4, i2, i3);
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        synchronized (http2Connection) {
            if (http2Connection.currentPushRequests.contains(Integer.valueOf(readInt))) {
                http2Connection.writeSynResetLater$okhttp(readInt, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            http2Connection.currentPushRequests.add(Integer.valueOf(readInt));
            TaskQueue.execute$default(http2Connection.pushQueue, http2Connection.connectionName + '[' + readInt + "] onRequest", new Http2Connection$$ExternalSyntheticLambda4(http2Connection, readInt, readHeaderBlock, i5));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ContinuationSource implements Source {
        public int flags;
        public int left;
        public int padding;
        public final BufferedSource source;
        public int streamId;

        public ContinuationSource(BufferedSource bufferedSource) {
            bufferedSource.getClass();
            this.source = bufferedSource;
        }

        @Override // okio.Source
        public final long read(long j, Buffer buffer) {
            int i;
            int readInt;
            buffer.getClass();
            do {
                int i2 = this.left;
                BufferedSource bufferedSource = this.source;
                if (i2 == 0) {
                    bufferedSource.skip(this.padding);
                    this.padding = 0;
                    if ((this.flags & 4) == 0) {
                        i = this.streamId;
                        int readMedium = _UtilCommonKt.readMedium(bufferedSource);
                        this.left = readMedium;
                        int readByte = bufferedSource.readByte() & 255;
                        this.flags = bufferedSource.readByte() & 255;
                        Logger logger = Http2Reader.logger;
                        if (logger.isLoggable(Level.FINE)) {
                            ByteString byteString = Http2.CONNECTION_PREFACE;
                            logger.fine(Http2.frameLog(true, this.streamId, readMedium, readByte, this.flags));
                        }
                        readInt = bufferedSource.readInt() & Log.LOG_LEVEL_OFF;
                        this.streamId = readInt;
                        if (readByte != 9) {
                            throw new IOException(readByte + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long read = bufferedSource.read(Math.min(j, i2), buffer);
                    if (read != -1) {
                        this.left -= (int) read;
                        return read;
                    }
                }
                return -1L;
            } while (readInt == i);
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("TYPE_CONTINUATION streamId changed");
            return 0L;
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return this.source.timeout();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }
}
