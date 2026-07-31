package okhttp3.internal.http2;

import androidx.appcompat.app.TwilightCalculator;
import androidx.compose.runtime.GapPending$keyMap$2;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.internal.DefaultSocket;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.language.LangLinksItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final PushObserver$Companion$PushObserverCancel pushObserver;
    public final TaskQueue pushQueue;
    public final TwilightCalculator readBytes;
    public final ReaderRunnable readerRunnable;
    public final TaskQueue settingsListenerQueue;
    public final MultipartBody.Builder socket;
    public final LinkedHashMap streams = new LinkedHashMap();
    public final TaskRunner taskRunner;
    public long writeBytesMaximum;
    public long writeBytesTotal;
    public final Http2Writer writer;
    public final TaskQueue writerQueue;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public Http2Connection(Request.Builder builder) {
        this.listener = (Listener) builder.body;
        String str = (String) builder.method;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            throw null;
        }
        this.connectionName = str;
        this.nextStreamId = 3;
        TaskRunner taskRunner = (TaskRunner) builder.url;
        this.taskRunner = taskRunner;
        this.writerQueue = taskRunner.newQueue();
        this.pushQueue = taskRunner.newQueue();
        this.settingsListenerQueue = taskRunner.newQueue();
        this.pushObserver = PushObserver$Companion$PushObserverCancel.CANCEL;
        this.flowControlListener = (FlowControlListener$None) builder.tags;
        Settings settings = new Settings();
        settings.set(4, 16777216);
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        int i = 0;
        this.readBytes = new TwilightCalculator(0);
        this.writeBytesMaximum = r0.getInitialWindowSize();
        MultipartBody.Builder builder2 = (MultipartBody.Builder) builder.headers;
        if (builder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        this.socket = builder2;
        this.writer = new Http2Writer((RealBufferedSink) builder2.parts);
        this.readerRunnable = new ReaderRunnable(i, this, new Http2Reader((RealBufferedSource) builder2.type));
        this.currentPushRequests = new LinkedHashSet();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Object[] objArr;
        errorCode.getClass();
        errorCode2.getClass();
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
            ((Socket) ((DefaultSocket) this.socket.boundary).socket).close();
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
        errorCode.getClass();
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
                    writeWindowUpdateLater$okhttp(unacknowledged, 0);
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

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
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
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            long r6 = r8.writeBytesMaximum     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L34
            java.util.LinkedHashMap r2 = r8.streams     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            goto L12
        L2a:
            r9 = move-exception
            goto L66
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
        L34:
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
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.data(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L66:
            monitor-exit(r8)
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    public final void writeSynResetLater$okhttp(int i, ErrorCode errorCode) {
        errorCode.getClass();
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] writeSynReset", new Http2Connection$$ExternalSyntheticLambda2(this, i, errorCode));
    }

    public final void writeWindowUpdateLater$okhttp(final long j, final int i) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] windowUpdate", new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Http2Connection http2Connection = Http2Connection.this;
                int i2 = i;
                try {
                    http2Connection.writer.windowUpdate(j, i2);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
            }
        });
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReaderRunnable implements Function0 {
        public final /* synthetic */ int $r8$classId;
        public final Object reader;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ ReaderRunnable(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.reader = obj2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v15 */
        /* JADX WARN: Type inference failed for: r7v16 */
        /* JADX WARN: Type inference failed for: r7v8 */
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Throwable th;
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Object obj = this.reader;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    Http2Connection http2Connection = (Http2Connection) obj2;
                    Http2Reader http2Reader = (Http2Reader) obj;
                    ErrorCode errorCode = ErrorCode.INTERNAL_ERROR;
                    IOException iOException = null;
                    try {
                        try {
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                                http2Connection.close$okhttp(this, errorCode, iOException);
                                _UtilCommonKt.closeQuietly(http2Reader);
                                throw th;
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
                                this = errorCode;
                                http2Connection.close$okhttp(this, errorCode, iOException);
                                _UtilCommonKt.closeQuietly(http2Reader);
                                throw th;
                            }
                        } while (http2Reader.nextFrame(false, this));
                        ErrorCode errorCode2 = ErrorCode.NO_ERROR;
                        try {
                            errorCode = ErrorCode.CANCEL;
                            http2Connection.close$okhttp(errorCode2, errorCode, null);
                            this = errorCode2;
                        } catch (IOException e2) {
                            iOException = e2;
                            ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            http2Connection.close$okhttp(errorCode3, errorCode3, iOException);
                            this = errorCode3;
                            _UtilCommonKt.closeQuietly(http2Reader);
                            return unit;
                        }
                        _UtilCommonKt.closeQuietly(http2Reader);
                        return unit;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                case 1:
                    return new AbstractTypeParameterDescriptor.TypeParameterTypeConstructor((AbstractTypeParameterDescriptor) obj2, (LockBasedStorageManager) obj);
                case 2:
                    TypeAttributes.Companion.getClass();
                    TypeAttributes typeAttributes = TypeAttributes.Empty;
                    TypeConstructor typeConstructor = ((AbstractTypeParameterDescriptor) obj2).getTypeConstructor();
                    List list = Collections.EMPTY_LIST;
                    GapPending$keyMap$2 gapPending$keyMap$2 = new GapPending$keyMap$2(3, this);
                    LockBasedStorageManager.AnonymousClass1 anonymousClass1 = LockBasedStorageManager.NO_LOCKS;
                    anonymousClass1.getClass();
                    return KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(list, new LazyScopeAdapter(anonymousClass1, gapPending$keyMap$2), typeAttributes, typeConstructor, false);
                case 3:
                    SmartList smartList = new SmartList();
                    Iterator it = ((FunctionDescriptorImpl) obj2).getOverriddenDescriptors().iterator();
                    while (it.hasNext()) {
                        smartList.add(((FunctionDescriptor) it.next()).substitute((TypeSubstitutor) obj));
                    }
                    return smartList;
                case 4:
                    ((Function1) obj).invoke((OnboardingTopic) obj2);
                    return unit;
                default:
                    ((Function1) obj).invoke((LangLinksItem) obj2);
                    return unit;
            }
        }

        public /* synthetic */ ReaderRunnable(Function1 function1, Object obj, int i) {
            this.$r8$classId = i;
            this.reader = function1;
            this.this$0 = obj;
        }
    }
}
