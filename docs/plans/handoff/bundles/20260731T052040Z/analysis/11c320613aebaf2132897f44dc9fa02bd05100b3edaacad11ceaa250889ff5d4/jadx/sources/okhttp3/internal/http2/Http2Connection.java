package okhttp3.internal.http2;

import androidx.appcompat.app.TwilightCalculator;
import coil3.ComponentRegistry;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.model.Link;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.ErrorCode;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Http2Connection implements Closeable {
    public static final Settings DEFAULT_SETTINGS;
    public final String connectionName;
    public final LinkedHashSet currentPushRequests;
    public long degradedPingsSent;
    public long degradedPongDeadlineNs;
    public long degradedPongsReceived;
    public final FlowControlListener$None flowControlListener;
    public long intervalPongsReceived;
    public boolean isShutdown;
    public int lastGoodStreamId;
    public final Listener listener;
    public int nextStreamId;
    public final Settings okHttpSettings;
    public Settings peerSettings;
    public final ErrorCode.Companion pushObserver;
    public final TaskQueue pushQueue;
    public final TwilightCalculator readBytes;
    public final ReaderRunnable readerRunnable;
    public final TaskQueue settingsListenerQueue;
    public final ProcessFinisher socket;
    public final LinkedHashMap streams = new LinkedHashMap();
    public final TaskRunner taskRunner;
    public long writeBytesMaximum;
    public long writeBytesTotal;
    public final Http2Writer writer;
    public final TaskQueue writerQueue;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Listener {
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 REFUSE_INCOMING_STREAMS = new Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1();

        public void onSettings(Http2Connection http2Connection, Settings settings) {
            settings.getClass();
        }

        public abstract void onStream(Http2Stream http2Stream);
    }

    static {
        Settings settings = new Settings();
        settings.set(4, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(ComponentRegistry.Builder builder) {
        this.listener = (Listener) builder.lazyFetcherFactories;
        String str = (String) builder.keyers;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            throw null;
        }
        this.connectionName = str;
        this.nextStreamId = 3;
        TaskRunner taskRunner = (TaskRunner) builder.interceptors;
        this.taskRunner = taskRunner;
        this.writerQueue = taskRunner.newQueue();
        this.pushQueue = taskRunner.newQueue();
        this.settingsListenerQueue = taskRunner.newQueue();
        this.pushObserver = ErrorCode.Companion.CANCEL;
        this.flowControlListener = (FlowControlListener$None) builder.lazyDecoderFactories;
        Settings settings = new Settings();
        settings.set(4, 16777216);
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        this.readBytes = new TwilightCalculator(0);
        this.writeBytesMaximum = r0.getInitialWindowSize();
        ProcessFinisher processFinisher = (ProcessFinisher) builder.mappers;
        if (processFinisher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        this.socket = processFinisher;
        this.writer = new Http2Writer((RealBufferedSink) processFinisher.lastActivityManager);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader((RealBufferedSource) processFinisher.config));
        this.currentPushRequests = new LinkedHashSet();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Object[] objArr;
        TimeZone timeZone = _UtilJvmKt.UTC;
        try {
            shutdown(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.streams.isEmpty()) {
                objArr = null;
            } else {
                objArr = this.streams.values().toArray(new Http2Stream[0]);
                this.streams.clear();
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            ((Socket) ((Dispatcher) this.socket.context).executorServiceOrNull).close();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public final void flush() {
        this.writer.flush();
    }

    public final Http2Stream getStream(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.streams.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    public final boolean isHealthy(long j) {
        synchronized (this) {
            if (this.isShutdown) {
                return false;
            }
            if (this.degradedPongsReceived < this.degradedPingsSent) {
                if (j >= this.degradedPongDeadlineNs) {
                    return false;
                }
            }
            return true;
        }
    }

    public final Http2Stream removeStream$okhttp(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.streams.remove(Integer.valueOf(i));
            notifyAll();
        }
        return http2Stream;
    }

    public final void shutdown(ErrorCode errorCode) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, _UtilCommonKt.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void updateConnectionFlowControl$okhttp(long j) {
        synchronized (this) {
            try {
                TwilightCalculator.update$default(this.readBytes, j, 0L, 2);
                long unacknowledged = this.readBytes.getUnacknowledged();
                if (unacknowledged >= this.okHttpSettings.getInitialWindowSize() / 2) {
                    writeWindowUpdateLater$okhttp(0, unacknowledged);
                    TwilightCalculator.update$default(this.readBytes, 0L, unacknowledged, 1);
                }
                FlowControlListener$None flowControlListener$None = this.flowControlListener;
                TwilightCalculator twilightCalculator = this.readBytes;
                flowControlListener$None.getClass();
                twilightCalculator.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.writer.maxFrameSize);
        r6 = r2;
        r8.writeBytesTotal += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeData(int r9, boolean r10, okio.Buffer r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r8 = r8.writer
            r8.data(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L69
            monitor-enter(r8)
        L12:
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            long r6 = r8.writeBytesMaximum     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L35
            java.util.LinkedHashMap r2 = r8.streams     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            goto L12
        L2a:
            r9 = move-exception
            goto L67
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L5a
        L35:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2a
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2a
            okhttp3.internal.http2.Http2Writer r4 = r8.writer     // Catch: java.lang.Throwable -> L2a
            int r4 = r4.maxFrameSize     // Catch: java.lang.Throwable -> L2a
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L2a
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2a
            long r4 = r4 + r6
            r8.writeBytesTotal = r4     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r8)
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.writer
            if (r10 == 0) goto L55
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L55
            r5 = 1
            goto L56
        L55:
            r5 = r3
        L56:
            r4.data(r5, r9, r11, r2)
            goto Ld
        L5a:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L67:
            monitor-exit(r8)
            throw r9
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    public final void writeSynResetLater$okhttp(int i, ErrorCode errorCode) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] writeSynReset", new Http2Connection$$ExternalSyntheticLambda2(this, i, errorCode));
    }

    public final void writeWindowUpdateLater$okhttp(final int i, final long j) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] windowUpdate", new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Http2Connection http2Connection = Http2Connection.this;
                try {
                    http2Connection.writer.windowUpdate(i, j);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
            }
        });
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ReaderRunnable implements Function0 {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object reader;
        public final /* synthetic */ Object this$0;

        public ReaderRunnable(Function1 function1, Link link) {
            this.reader = function1;
            this.this$0 = link;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Throwable th;
            ErrorCode errorCode;
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Object obj = this.this$0;
            Object obj2 = this.reader;
            switch (i) {
                case 0:
                    Http2Connection http2Connection = (Http2Connection) obj;
                    Http2Reader http2Reader = (Http2Reader) obj2;
                    ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
                    IOException iOException = null;
                    try {
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (IOException e) {
                        iOException = e;
                    }
                    if (!http2Reader.nextFrame(true, this)) {
                        throw new IOException("Required SETTINGS preface not received");
                    }
                    do {
                        try {
                        } catch (Throwable th3) {
                            th = th3;
                            errorCode = errorCode2;
                            http2Connection.close$okhttp(errorCode, errorCode2, iOException);
                            _UtilCommonKt.closeQuietly(http2Reader);
                            throw th;
                        }
                    } while (http2Reader.nextFrame(false, this));
                    errorCode = ErrorCode.NO_ERROR;
                    try {
                        try {
                            http2Connection.close$okhttp(errorCode, ErrorCode.CANCEL, null);
                        } catch (IOException e2) {
                            iOException = e2;
                            ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            http2Connection.close$okhttp(errorCode3, errorCode3, iOException);
                            _UtilCommonKt.closeQuietly(http2Reader);
                            return unit;
                        }
                        _UtilCommonKt.closeQuietly(http2Reader);
                        return unit;
                    } catch (Throwable th4) {
                        th = th4;
                        http2Connection.close$okhttp(errorCode, errorCode2, iOException);
                        _UtilCommonKt.closeQuietly(http2Reader);
                        throw th;
                    }
                default:
                    ((Function1) obj2).invoke(((Link) obj).url);
                    return unit;
            }
        }

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }
    }
}
