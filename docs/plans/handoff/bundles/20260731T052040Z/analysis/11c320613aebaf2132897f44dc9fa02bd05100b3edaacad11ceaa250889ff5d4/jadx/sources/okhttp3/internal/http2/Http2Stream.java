package okhttp3.internal.http2;

import androidx.appcompat.app.TwilightCalculator;
import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.TimeZone;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskQueue;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Http2Stream implements Socket {
    public final Http2Connection connection;
    public ErrorCode errorCode;
    public IOException errorException;
    public boolean hasResponseHeaders;
    public final ArrayDeque headersQueue;
    public final int id;
    public final TwilightCalculator readBytes;
    public final StreamTimeout readTimeout;
    public final FramingSink sink;
    public final FramingSource source;
    public long writeBytesMaximum;
    public long writeBytesTotal;
    public final StreamTimeout writeTimeout;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FramingSink implements Sink {
        public boolean closed;
        public final boolean finished;
        public final Buffer sendBuffer = new Buffer();

        public FramingSink(boolean z) {
            this.finished = z;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.UTC;
            synchronized (http2Stream) {
                if (this.closed) {
                    return;
                }
                boolean z = http2Stream.getErrorCode$okhttp() == null;
                Http2Stream http2Stream2 = Http2Stream.this;
                if (!http2Stream2.sink.finished) {
                    if (this.sendBuffer.size > 0) {
                        while (this.sendBuffer.size > 0) {
                            emitFrame(true);
                        }
                    } else if (z) {
                        http2Stream2.connection.writeData(http2Stream2.id, true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.closed = true;
                    http2Stream3.notifyAll();
                }
                Http2Stream.this.connection.flush();
                Http2Stream.this.cancelStreamIfNecessary$okhttp();
            }
        }

        /* JADX WARN: Finally extract failed */
        public final void emitFrame(boolean z) {
            long min;
            boolean z2;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                http2Stream.writeTimeout.enter();
                while (http2Stream.writeBytesTotal >= http2Stream.writeBytesMaximum && !this.finished && !this.closed && http2Stream.getErrorCode$okhttp() == null) {
                    try {
                        try {
                            http2Stream.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                        throw th;
                    }
                }
                http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                http2Stream.checkOutNotClosed$okhttp();
                min = Math.min(http2Stream.writeBytesMaximum - http2Stream.writeBytesTotal, this.sendBuffer.size);
                http2Stream.writeBytesTotal += min;
                z2 = z && min == this.sendBuffer.size;
            }
            Http2Stream.this.writeTimeout.enter();
            try {
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.connection.writeData(http2Stream2.id, z2, this.sendBuffer, min);
            } finally {
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.UTC;
            synchronized (http2Stream) {
                http2Stream.checkOutNotClosed$okhttp();
            }
            while (this.sendBuffer.size > 0) {
                emitFrame(false);
                Http2Stream.this.connection.flush();
            }
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // okio.Sink
        public final void write(long j, Buffer buffer) {
            TimeZone timeZone = _UtilJvmKt.UTC;
            Buffer buffer2 = this.sendBuffer;
            buffer2.write(j, buffer);
            while (buffer2.size >= 16384) {
                emitFrame(false);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FramingSource implements Source {
        public boolean closed;
        public boolean finished;
        public final long maxByteCount;
        public final Buffer receiveBuffer = new Buffer();
        public final Buffer readBuffer = new Buffer();

        public FramingSource(long j, boolean z) {
            this.maxByteCount = j;
            this.finished = z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.closed = true;
                Buffer buffer = this.readBuffer;
                j = buffer.size;
                buffer.skip(j);
                http2Stream.notifyAll();
            }
            if (j > 0) {
                Http2Stream http2Stream2 = Http2Stream.this;
                TimeZone timeZone = _UtilJvmKt.UTC;
                http2Stream2.connection.updateConnectionFlowControl$okhttp(j);
            }
            Http2Stream.this.cancelStreamIfNecessary$okhttp();
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #2 {, blocks: (B:6:0x0010, B:8:0x001d, B:13:0x0027, B:33:0x00c5, B:64:0x00ee, B:65:0x00f3, B:15:0x0030, B:17:0x0036, B:19:0x003a, B:21:0x003e, B:22:0x004f, B:24:0x0053, B:26:0x005d, B:28:0x007a, B:30:0x008b, B:47:0x00a4, B:51:0x00ae, B:54:0x00b4, B:55:0x00c0, B:58:0x00e3, B:59:0x00eb), top: B:5:0x0010, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0053 A[Catch: all -> 0x004b, TryCatch #1 {all -> 0x004b, blocks: (B:15:0x0030, B:17:0x0036, B:19:0x003a, B:21:0x003e, B:22:0x004f, B:24:0x0053, B:26:0x005d, B:28:0x007a, B:30:0x008b, B:47:0x00a4, B:51:0x00ae, B:54:0x00b4, B:55:0x00c0, B:58:0x00e3, B:59:0x00eb), top: B:14:0x0030, outer: #2, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00e3 A[SYNTHETIC] */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long read(long r28, okio.Buffer r30) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.read(long, okio.Buffer):long");
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return Http2Stream.this.readTimeout;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        public final void exitAndThrowIfTimedOut() {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // okio.AsyncTimeout
        public final IOException newTimeoutException(IOException iOException) {
            return new SocketTimeoutException("timeout");
        }

        @Override // okio.AsyncTimeout
        public final void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Connection http2Connection = Http2Stream.this.connection;
            synchronized (http2Connection) {
                long j = http2Connection.degradedPongsReceived;
                long j2 = http2Connection.degradedPingsSent;
                if (j < j2) {
                    return;
                }
                http2Connection.degradedPingsSent = j2 + 1;
                http2Connection.degradedPongDeadlineNs = System.nanoTime() + C.NANOS_PER_SECOND;
                TaskQueue.execute$default(http2Connection.writerQueue, Modifier.CC.m(new StringBuilder(), http2Connection.connectionName, " ping"), new Scope$$ExternalSyntheticLambda0(http2Connection, 3));
            }
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, Headers headers) {
        http2Connection.getClass();
        this.id = i;
        this.connection = http2Connection;
        this.readBytes = new TwilightCalculator(i);
        this.writeBytesMaximum = http2Connection.peerSettings.getInitialWindowSize();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.headersQueue = arrayDeque;
        this.source = new FramingSource(http2Connection.okHttpSettings.getInitialWindowSize(), z2);
        this.sink = new FramingSink(z);
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        if (headers == null) {
            if (isLocallyInitiated()) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("remotely-initiated streams should have headers");
            throw null;
        }
        if (isLocallyInitiated()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("locally-initiated streams shouldn't have headers yet");
            throw null;
        }
        arrayDeque.add(headers);
    }

    public final void cancelStreamIfNecessary$okhttp() {
        boolean z;
        boolean isOpen;
        TimeZone timeZone = _UtilJvmKt.UTC;
        synchronized (this) {
            try {
                FramingSource framingSource = this.source;
                if (!framingSource.finished && framingSource.closed) {
                    FramingSink framingSink = this.sink;
                    if (!framingSink.finished) {
                        if (framingSink.closed) {
                        }
                    }
                    z = true;
                    isOpen = isOpen();
                }
                z = false;
                isOpen = isOpen();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            close(ErrorCode.CANCEL, null);
        } else {
            if (isOpen) {
                return;
            }
            this.connection.removeStream$okhttp(this.id);
        }
    }

    public final void checkOutNotClosed$okhttp() {
        FramingSink framingSink = this.sink;
        if (framingSink.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("stream closed");
            return;
        }
        if (framingSink.finished) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("stream finished");
            return;
        }
        if (getErrorCode$okhttp() != null) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode$okhttp = getErrorCode$okhttp();
            errorCode$okhttp.getClass();
            throw new StreamResetException(errorCode$okhttp);
        }
    }

    public final void close(ErrorCode errorCode, IOException iOException) {
        if (closeInternal(errorCode, iOException)) {
            Http2Connection http2Connection = this.connection;
            http2Connection.getClass();
            http2Connection.writer.rstStream(this.id, errorCode);
        }
    }

    public final boolean closeInternal(ErrorCode errorCode, IOException iOException) {
        TimeZone timeZone = _UtilJvmKt.UTC;
        synchronized (this) {
            if (getErrorCode$okhttp() != null) {
                return false;
            }
            this.errorCode = errorCode;
            this.errorException = iOException;
            notifyAll();
            if (this.source.finished) {
                if (this.sink.finished) {
                    return false;
                }
            }
            this.connection.removeStream$okhttp(this.id);
            return true;
        }
    }

    public final void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode, null)) {
            this.connection.writeSynResetLater$okhttp(this.id, errorCode);
        }
    }

    public final ErrorCode getErrorCode$okhttp() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.errorCode;
        }
        return errorCode;
    }

    @Override // okio.Socket
    public final Sink getSink() {
        return this.sink;
    }

    @Override // okio.Socket
    public final Source getSource() {
        return this.source;
    }

    public final boolean isLocallyInitiated() {
        boolean z = (this.id & 1) == 1;
        this.connection.getClass();
        return true == z;
    }

    public final boolean isOpen() {
        synchronized (this) {
            try {
                if (getErrorCode$okhttp() != null) {
                    return false;
                }
                FramingSource framingSource = this.source;
                if (!framingSource.finished) {
                    if (framingSource.closed) {
                    }
                    return true;
                }
                FramingSink framingSink = this.sink;
                if (framingSink.finished || framingSink.closed) {
                    if (this.hasResponseHeaders) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:4:0x0006, B:6:0x000b, B:8:0x0013, B:11:0x001c, B:13:0x002d, B:14:0x0031, B:22:0x0024), top: B:3:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void receiveHeaders(okhttp3.Headers r3, boolean r4) {
        /*
            r2 = this;
            r3.getClass()
            java.util.TimeZone r0 = okhttp3.internal._UtilJvmKt.UTC
            monitor-enter(r2)
            boolean r0 = r2.hasResponseHeaders     // Catch: java.lang.Throwable -> L22
            r1 = 1
            if (r0 == 0) goto L24
            java.lang.String r0 = ":status"
            java.lang.String r0 = r3.get(r0)     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L24
            java.lang.String r0 = ":method"
            java.lang.String r0 = r3.get(r0)     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.source     // Catch: java.lang.Throwable -> L22
            r3.getClass()     // Catch: java.lang.Throwable -> L22
            goto L2b
        L22:
            r3 = move-exception
            goto L43
        L24:
            r2.hasResponseHeaders = r1     // Catch: java.lang.Throwable -> L22
            java.util.ArrayDeque r0 = r2.headersQueue     // Catch: java.lang.Throwable -> L22
            r0.add(r3)     // Catch: java.lang.Throwable -> L22
        L2b:
            if (r4 == 0) goto L31
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.source     // Catch: java.lang.Throwable -> L22
            r3.finished = r1     // Catch: java.lang.Throwable -> L22
        L31:
            boolean r3 = r2.isOpen()     // Catch: java.lang.Throwable -> L22
            r2.notifyAll()     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            if (r3 != 0) goto L42
            okhttp3.internal.http2.Http2Connection r3 = r2.connection
            int r2 = r2.id
            r3.removeStream$okhttp(r2)
        L42:
            return
        L43:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.receiveHeaders(okhttp3.Headers, boolean):void");
    }

    public final void receiveRstStream(ErrorCode errorCode) {
        synchronized (this) {
            if (getErrorCode$okhttp() == null) {
                this.errorCode = errorCode;
                notifyAll();
            }
        }
    }
}
