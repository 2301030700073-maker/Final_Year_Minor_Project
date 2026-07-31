package okhttp3.internal.http2;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Http2Reader implements Closeable {
    public static final Logger logger;
    public final ContinuationSource continuation;
    public final Hpack.Reader hpackReader;
    public final BufferedSource source;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static int lengthWithoutPadding(int i, int i2, int i3) {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Modifier.CC.m(i3, i, "PROTOCOL_ERROR padding ", " > remaining length "));
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
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$4(androidx.camera.camera2.pipe.CameraDevices$CC.m("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", r7));
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
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Reader.nextFrame(boolean, okhttp3.internal.http2.Http2Connection$ReaderRunnable):boolean");
    }

    public final void readData(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        if (i3 == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
            return;
        }
        boolean z4 = true;
        if ((i2 & 1) != 0) {
            z = true;
        } else {
            z = true;
            z4 = false;
        }
        if ((i2 & 32) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
            return;
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.source.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        int lengthWithoutPadding = Companion.lengthWithoutPadding(i, i2, i4);
        BufferedSource bufferedSource = this.source;
        bufferedSource.getClass();
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        if ((i3 == 0 || (i3 & 1) != 0) ? false : z) {
            Buffer buffer = new Buffer();
            long j = lengthWithoutPadding;
            bufferedSource.require(j);
            bufferedSource.read(buffer, j);
            TaskQueue.execute$default(http2Connection.pushQueue, http2Connection.connectionName + '[' + i3 + "] onData", new Http2Connection$$ExternalSyntheticLambda3(http2Connection, i3, buffer, lengthWithoutPadding, z4));
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
                    long read = bufferedSource.read(framingSource.receiveBuffer, j4);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    j4 -= read;
                    Http2Stream http2Stream2 = Http2Stream.this;
                    synchronized (http2Stream2) {
                        try {
                            if (framingSource.closed) {
                                framingSource.receiveBuffer.clear();
                            } else {
                                Buffer buffer2 = framingSource.readBuffer;
                                boolean z5 = buffer2.size == 0;
                                buffer2.writeAll(framingSource.receiveBuffer);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(CameraDevices$CC.m("TYPE_GOAWAY length < 8: ", i));
            return;
        }
        if (i2 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("TYPE_GOAWAY streamId != 0");
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
            if (errorCode.httpCode == readInt2) {
                break;
            } else {
                i4++;
            }
        }
        if (errorCode == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(CameraDevices$CC.m("TYPE_GOAWAY unexpected error code: ", readInt2));
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
        continuationSource.length = i;
        continuationSource.padding = i2;
        continuationSource.flags = i3;
        continuationSource.streamId = i4;
        Hpack.Reader reader = this.hpackReader;
        RealBufferedSource realBufferedSource = reader.source;
        ArrayList arrayList = reader.headerList;
        while (!realBufferedSource.exhausted()) {
            byte readByte = realBufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            int i5 = readByte & 255;
            if (i5 == 128) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("index == 0");
                return null;
            }
            if ((readByte & 128) == 128) {
                int readInt = reader.readInt(i5, 127);
                int i6 = readInt - 1;
                if (i6 >= 0) {
                    Header[] headerArr = Hpack.STATIC_HEADER_TABLE;
                    if (i6 <= headerArr.length - 1) {
                        arrayList.add(headerArr[i6]);
                    }
                }
                int length = reader.nextHeaderIndex + 1 + (i6 - Hpack.STATIC_HEADER_TABLE.length);
                if (length >= 0) {
                    Header[] headerArr2 = reader.dynamicTable;
                    if (length < headerArr2.length) {
                        Header header = headerArr2[length];
                        header.getClass();
                        arrayList.add(header);
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4(CameraDevices$CC.m("Header index too large ", readInt));
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
                        ArraysKt___ArraysKt.fill(0, r6.length, null, reader.dynamicTable);
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
                arrayList.add(new Header(readByteString2, reader.readByteString()));
            } else {
                arrayList.add(new Header(reader.getName(reader.readInt(i5, 15) - 1), reader.readByteString()));
            }
        }
        List list = CollectionsKt.toList(arrayList);
        arrayList.clear();
        return list;
    }

    public final void readHeaders(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        int i4;
        if (i3 == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
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
            TaskQueue.execute$default(http2Connection.taskRunner.newQueue(), http2Connection.connectionName + '[' + i3 + "] onStream", new SealedClassSerializer$$ExternalSyntheticLambda0(14, http2Connection, http2Stream));
        }
    }

    public final void readPing(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        if (i != 8) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(CameraDevices$CC.m("TYPE_PING length != 8: ", i));
            return;
        }
        if (i3 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("TYPE_PING streamId != 0");
            return;
        }
        final int readInt = this.source.readInt();
        final int readInt2 = this.source.readInt();
        boolean z = (i2 & 1) != 0;
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        if (!z) {
            TaskQueue taskQueue = http2Connection.writerQueue;
            String m = CameraDevices$CC.m(new StringBuilder(), ((Http2Connection) readerRunnable.this$0).connectionName, " ping");
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
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
        int readInt = this.source.readInt() & Integer.MAX_VALUE;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ContinuationSource implements Source {
        public int flags;
        public int left;
        public int length;
        public int padding;
        public final BufferedSource source;
        public int streamId;

        public ContinuationSource(BufferedSource bufferedSource) {
            bufferedSource.getClass();
            this.source = bufferedSource;
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j) {
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
                        this.length = readMedium;
                        int readByte = bufferedSource.readByte() & 255;
                        this.flags = bufferedSource.readByte() & 255;
                        Logger logger = Http2Reader.logger;
                        if (logger.isLoggable(Level.FINE)) {
                            ByteString byteString = Http2.CONNECTION_PREFACE;
                            logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
                        }
                        readInt = bufferedSource.readInt() & Integer.MAX_VALUE;
                        this.streamId = readInt;
                        if (readByte != 9) {
                            throw new IOException(readByte + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long read = bufferedSource.read(buffer, Math.min(j, i2));
                    if (read != -1) {
                        this.left -= (int) read;
                        return read;
                    }
                }
                return -1L;
            } while (readInt == i);
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("TYPE_CONTINUATION streamId changed");
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
