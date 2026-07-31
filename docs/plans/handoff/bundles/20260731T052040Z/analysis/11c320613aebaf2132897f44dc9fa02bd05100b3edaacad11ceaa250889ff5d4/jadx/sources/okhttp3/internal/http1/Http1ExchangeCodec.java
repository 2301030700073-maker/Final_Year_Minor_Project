package okhttp3.internal.http1;

import androidx.compose.ui.Modifier;
import androidx.room.Room;
import coil3.disk.FaultHidingSink;
import com.grack.nanojson.JsonParser;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Arrays;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Options;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Headers TRAILERS_RESPONSE_BODY_TRUNCATED;
    public final ExchangeCodec.Carrier carrier;
    public final OkHttpClient client;
    public final HeadersReader headersReader;
    public final ProcessFinisher socket;
    public int state;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class AbstractSource implements Source {
        public boolean closed;
        public final /* synthetic */ Http1ExchangeCodec this$0;
        public final ForwardingTimeout timeout;
        public final HttpUrl url;

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            httpUrl.getClass();
            this.this$0 = http1ExchangeCodec;
            this.url = httpUrl;
            this.timeout = new ForwardingTimeout(((RealBufferedSource) http1ExchangeCodec.socket.config).source.timeout());
        }

        @Override // okio.Source
        public long read(long j, Buffer buffer) {
            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
            buffer.getClass();
            try {
                return ((RealBufferedSource) http1ExchangeCodec.socket.config).read(j, buffer);
            } catch (IOException e) {
                http1ExchangeCodec.carrier.noNewExchanges();
                this.responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw e;
            }
        }

        public final void responseBodyComplete(Headers headers) {
            OkHttpClient okHttpClient;
            HttpUrl.Companion companion;
            headers.getClass();
            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
            int i = http1ExchangeCodec.state;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(http1ExchangeCodec.state, "state: ");
                return;
            }
            ForwardingTimeout forwardingTimeout = this.timeout;
            Timeout timeout = forwardingTimeout.delegate;
            forwardingTimeout.delegate = Timeout.NONE;
            timeout.clearDeadline();
            timeout.clearTimeout();
            http1ExchangeCodec.state = 6;
            if (headers.size() <= 0 || (okHttpClient = http1ExchangeCodec.client) == null || (companion = okHttpClient.cookieJar) == null) {
                return;
            }
            HttpHeaders.receiveHeaders(companion, this.url, headers);
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return this.timeout;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChunkedSink implements Sink {
        public boolean closed;
        public final ForwardingTimeout timeout;

        public ChunkedSink() {
            this.timeout = new ForwardingTimeout(((RealBufferedSink) Http1ExchangeCodec.this.socket.lastActivityManager).sink.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ((RealBufferedSink) Http1ExchangeCodec.this.socket.lastActivityManager).writeUtf8("0\r\n\r\n");
            ForwardingTimeout forwardingTimeout = this.timeout;
            Timeout timeout = forwardingTimeout.delegate;
            forwardingTimeout.delegate = Timeout.NONE;
            timeout.clearDeadline();
            timeout.clearTimeout();
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final synchronized void flush() {
            if (this.closed) {
                return;
            }
            ((RealBufferedSink) Http1ExchangeCodec.this.socket.lastActivityManager).flush();
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public final void write(long j, Buffer buffer) {
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                return;
            }
            if (j == 0) {
                return;
            }
            RealBufferedSink realBufferedSink = (RealBufferedSink) Http1ExchangeCodec.this.socket.lastActivityManager;
            if (realBufferedSink.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                return;
            }
            realBufferedSink.bufferField.writeHexadecimalUnsignedLong(j);
            realBufferedSink.emitCompleteSegments();
            realBufferedSink.writeUtf8("\r\n");
            realBufferedSink.write(j, buffer);
            realBufferedSink.writeUtf8("\r\n");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChunkedSource extends AbstractSource {
        public long bytesRemainingInChunk;
        public boolean hasMoreChunks;
        public final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.this$0 = http1ExchangeCodec;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.closed) {
                return;
            }
            if (this.hasMoreChunks) {
                TimeZone timeZone = _UtilJvmKt.UTC;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    z = _UtilJvmKt.skipAll(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    this.this$0.carrier.noNewExchanges();
                    responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                }
            }
            this.closed = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
        
            if (r14 == 0) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00c9, code lost:
        
            if (r18.hasMoreChunks == false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0074, code lost:
        
            kotlin.text.CharsKt.checkRadix(16);
            r1 = java.lang.Integer.toString(r5, 16);
            r1.getClass();
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x008b, code lost:
        
            throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(r1));
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long read(long r19, okio.Buffer r21) {
            /*
                Method dump skipped, instructions count: 309
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.read(long, okio.Buffer):long");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FixedLengthSource extends AbstractSource {
        public long bytesRemaining;
        public final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl, long j) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.this$0 = http1ExchangeCodec;
            this.bytesRemaining = j;
            if (j == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.closed) {
                return;
            }
            if (this.bytesRemaining != 0) {
                TimeZone timeZone = _UtilJvmKt.UTC;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    z = _UtilJvmKt.skipAll(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    this.this$0.carrier.noNewExchanges();
                    responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                }
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long read(long j, Buffer buffer) {
            buffer.getClass();
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j));
                return 0L;
            }
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                return 0L;
            }
            long j2 = this.bytesRemaining;
            if (j2 == 0) {
                return -1L;
            }
            long read = super.read(Math.min(j2, j), buffer);
            if (read == -1) {
                this.this$0.carrier.noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw protocolException;
            }
            long j3 = this.bytesRemaining - read;
            this.bytesRemaining = j3;
            if (j3 == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
            return read;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UnknownLengthSource extends AbstractSource {
        public boolean inputExhausted;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.closed) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long read(long j, Buffer buffer) {
            buffer.getClass();
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j));
                return 0L;
            }
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                return 0L;
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long read = super.read(j, buffer);
            if (read != -1) {
                return read;
            }
            this.inputExhausted = true;
            responseBodyComplete(Headers.EMPTY);
            return -1L;
        }
    }

    static {
        Headers headers = Headers.EMPTY;
        String[] strArr = (String[]) Arrays.copyOf(new String[]{"OkHttp-Response-Body", "Truncated"}, 2);
        if (strArr.length % 2 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Expected alternating header names and values");
            return;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int length = strArr2.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (strArr2[i2] == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Headers cannot be null");
                return;
            }
            strArr2[i2] = StringsKt.trim(strArr[i2]).toString();
        }
        int progressionLastElement = Options.Companion.getProgressionLastElement(0, strArr2.length - 1, 2);
        if (progressionLastElement >= 0) {
            while (true) {
                String str = strArr2[i];
                String str2 = strArr2[i + 1];
                Jsoup.headersCheckName(str);
                Jsoup.headersCheckValue(str2, str);
                if (i == progressionLastElement) {
                    break;
                } else {
                    i += 2;
                }
            }
        }
        TRAILERS_RESPONSE_BODY_TRUNCATED = new Headers(strArr2);
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, ProcessFinisher processFinisher) {
        processFinisher.getClass();
        this.client = okHttpClient;
        this.carrier = carrier;
        this.socket = processFinisher;
        this.headersReader = new HeadersReader((RealBufferedSource) processFinisher.config);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.carrier.cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink createRequestBody(Request request, long j) {
        request.getClass();
        if ("chunked".equalsIgnoreCase(request.headers.get("Transfer-Encoding"))) {
            if (this.state == 1) {
                this.state = 2;
                return new ChunkedSink();
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
            return null;
        }
        if (j == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.state == 1) {
            this.state = 2;
            return new FaultHidingSink(this);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void finishRequest() {
        ((RealBufferedSink) this.socket.lastActivityManager).flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void flushRequest() {
        ((RealBufferedSink) this.socket.lastActivityManager).flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket getSocket() {
        return this.socket;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean isResponseComplete() {
        return this.state == 6;
    }

    public final FixedLengthSource newFixedLengthSource(HttpUrl httpUrl, long j) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(this, httpUrl, j);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source openResponseBodySource(Response response) {
        Request request = response.request;
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(request.url, 0L);
        }
        String str = response.headers.get("Transfer-Encoding");
        if (str == null) {
            str = null;
        }
        if ("chunked".equalsIgnoreCase(str)) {
            HttpUrl httpUrl = request.url;
            if (this.state == 4) {
                this.state = 5;
                return new ChunkedSource(this, httpUrl);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
            return null;
        }
        long headersContentLength = _UtilJvmKt.headersContentLength(response);
        if (headersContentLength != -1) {
            return newFixedLengthSource(request.url, headersContentLength);
        }
        HttpUrl httpUrl2 = request.url;
        if (this.state != 4) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
            return null;
        }
        this.state = 5;
        this.carrier.noNewExchanges();
        httpUrl2.getClass();
        return new UnknownLengthSource(this, httpUrl2);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder readResponseHeaders(boolean z) {
        HeadersReader headersReader = this.headersReader;
        int i = this.state;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
            return null;
        }
        try {
            String readUtf8LineStrict = ((BufferedSource) headersReader.source).readUtf8LineStrict(headersReader.headerLimit);
            headersReader.headerLimit -= readUtf8LineStrict.length();
            JsonParser parse = Room.parse(readUtf8LineStrict);
            int i2 = parse.token;
            Response.Builder builder = new Response.Builder();
            builder.protocol = (Protocol) parse.value;
            builder.code = i2;
            builder.message = (String) parse.tokener;
            builder.headers = headersReader.readHeaders().newBuilder();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.state = 3;
                return builder;
            }
            if (102 > i2 || i2 >= 200) {
                this.state = 4;
                return builder;
            }
            this.state = 3;
            return builder;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on ".concat(this.carrier.getRoute().address.url.redact()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long reportedContentLength(Response response) {
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        String str = response.headers.get("Transfer-Encoding");
        if (str == null) {
            str = null;
        }
        if ("chunked".equalsIgnoreCase(str)) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    public final void writeRequest(Headers headers, String str) {
        headers.getClass();
        if (this.state != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(this.state, "state: ");
            return;
        }
        ProcessFinisher processFinisher = this.socket;
        RealBufferedSink realBufferedSink = (RealBufferedSink) processFinisher.lastActivityManager;
        realBufferedSink.writeUtf8(str);
        realBufferedSink.writeUtf8("\r\n");
        int size = headers.size();
        int i = 0;
        while (true) {
            RealBufferedSink realBufferedSink2 = (RealBufferedSink) processFinisher.lastActivityManager;
            if (i >= size) {
                realBufferedSink2.writeUtf8("\r\n");
                this.state = 1;
                return;
            } else {
                realBufferedSink2.writeUtf8(headers.name(i));
                realBufferedSink2.writeUtf8(": ");
                realBufferedSink2.writeUtf8(headers.value(i));
                realBufferedSink2.writeUtf8("\r\n");
                i++;
            }
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void writeRequestHeaders(Request request) {
        request.getClass();
        Proxy.Type type = this.carrier.getRoute().proxy.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(request.method);
        sb.append(' ');
        HttpUrl httpUrl = request.url;
        if (Intrinsics.areEqual(httpUrl.scheme, "https") || type != Proxy.Type.HTTP) {
            String encodedPath = httpUrl.encodedPath();
            String encodedQuery = httpUrl.encodedQuery();
            if (encodedQuery != null) {
                encodedPath = encodedPath + '?' + encodedQuery;
            }
            sb.append(encodedPath);
        } else {
            sb.append(httpUrl);
        }
        sb.append(" HTTP/1.1");
        writeRequest(request.headers, sb.toString());
    }
}
