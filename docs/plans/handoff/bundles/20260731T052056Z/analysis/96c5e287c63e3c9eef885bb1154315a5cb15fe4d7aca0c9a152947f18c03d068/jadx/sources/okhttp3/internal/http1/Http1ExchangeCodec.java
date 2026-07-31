package okhttp3.internal.http1;

import androidx.compose.animation.core.Animation;
import coil3.disk.FaultHidingSink;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.ForwardingTimeout;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Headers TRAILERS_RESPONSE_BODY_TRUNCATED;
    public final ExchangeCodec.Carrier carrier;
    public final OkHttpClient client;
    public final HeadersReader headersReader;
    public final MultipartBody.Builder socket;
    public int state;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class AbstractSource implements Source {
        public boolean closed;
        public final /* synthetic */ Http1ExchangeCodec this$0;
        public final ForwardingTimeout timeout;
        public final HttpUrl url;

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            httpUrl.getClass();
            this.this$0 = http1ExchangeCodec;
            this.url = httpUrl;
            this.timeout = new ForwardingTimeout(((RealBufferedSource) http1ExchangeCodec.socket.type).source.timeout());
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
            buffer.getClass();
            try {
                return ((RealBufferedSource) http1ExchangeCodec.socket.type).read(buffer, j);
            } catch (IOException e) {
                http1ExchangeCodec.carrier.noNewExchanges();
                this.responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw e;
            }
        }

        public final void responseBodyComplete(Headers headers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            headers.getClass();
            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
            int i = http1ExchangeCodec.state;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(http1ExchangeCodec.state, "state: ");
                return;
            }
            ForwardingTimeout forwardingTimeout = this.timeout;
            Timeout timeout = forwardingTimeout.delegate;
            forwardingTimeout.delegate = Timeout.NONE;
            timeout.clearDeadline();
            timeout.clearTimeout();
            http1ExchangeCodec.state = 6;
            if (headers.size() <= 0 || (okHttpClient = http1ExchangeCodec.client) == null || (cookieJar = okHttpClient.cookieJar) == null) {
                return;
            }
            HttpHeaders.receiveHeaders(cookieJar, this.url, headers);
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return this.timeout;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChunkedSink implements Sink {
        public boolean closed;
        public final ForwardingTimeout timeout;

        public ChunkedSink() {
            this.timeout = new ForwardingTimeout(((RealBufferedSink) Http1ExchangeCodec.this.socket.parts).sink.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ((RealBufferedSink) Http1ExchangeCodec.this.socket.parts).writeUtf8("0\r\n\r\n");
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
            ((RealBufferedSink) Http1ExchangeCodec.this.socket.parts).flush();
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public final void write(Buffer buffer, long j) {
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
                return;
            }
            if (j == 0) {
                return;
            }
            RealBufferedSink realBufferedSink = (RealBufferedSink) Http1ExchangeCodec.this.socket.parts;
            if (realBufferedSink.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
                return;
            }
            realBufferedSink.bufferField.writeHexadecimalUnsignedLong(j);
            realBufferedSink.emitCompleteSegments();
            realBufferedSink.writeUtf8("\r\n");
            realBufferedSink.write(buffer, j);
            realBufferedSink.writeUtf8("\r\n");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00ed, code lost:
        
            if (r18.hasMoreChunks == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0074, code lost:
        
            coil3.util.UtilsKt.checkRadix(16);
            r1 = java.lang.Integer.toString(r5, 16);
            r1.getClass();
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x008b, code lost:
        
            throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(r1));
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long read(okio.Buffer r19, long r20) {
            /*
                Method dump skipped, instructions count: 345
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.read(okio.Buffer, long):long");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        public final long read(Buffer buffer, long j) {
            buffer.getClass();
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
                return 0L;
            }
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
                return 0L;
            }
            long j2 = this.bytesRemaining;
            if (j2 == 0) {
                return -1L;
            }
            long read = super.read(buffer, Math.min(j2, j));
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        public final long read(Buffer buffer, long j) {
            buffer.getClass();
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
                return 0L;
            }
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
                return 0L;
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long read = super.read(buffer, j);
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
        TRAILERS_RESPONSE_BODY_TRUNCATED = Headers.Companion.of("OkHttp-Response-Body", "Truncated");
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, MultipartBody.Builder builder) {
        builder.getClass();
        this.client = okHttpClient;
        this.carrier = carrier;
        this.socket = builder;
        this.headersReader = new HeadersReader((RealBufferedSource) builder.type);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
            return null;
        }
        if (j == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.state == 1) {
            this.state = 2;
            return new FaultHidingSink(this);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void finishRequest() {
        ((RealBufferedSink) this.socket.parts).flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void flushRequest() {
        ((RealBufferedSink) this.socket.parts).flush();
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source openResponseBodySource(Response response) {
        Request request = response.request;
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(request.url, 0L);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding", null))) {
            HttpUrl httpUrl = request.url;
            if (this.state == 4) {
                this.state = 5;
                return new ChunkedSource(this, httpUrl);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
            return null;
        }
        long headersContentLength = _UtilJvmKt.headersContentLength(response);
        if (headersContentLength != -1) {
            return newFixedLengthSource(request.url, headersContentLength);
        }
        HttpUrl httpUrl2 = request.url;
        if (this.state != 4) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
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
        RealBufferedSource realBufferedSource = (RealBufferedSource) headersReader.source;
        int i = this.state;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
            return null;
        }
        try {
            String readUtf8LineStrict = realBufferedSource.readUtf8LineStrict(headersReader.headerLimit);
            headersReader.headerLimit -= readUtf8LineStrict.length();
            StatusLine parse = Cookie.Companion.parse(readUtf8LineStrict);
            int i2 = parse.code;
            Response.Builder builder = new Response.Builder();
            Protocol protocol = (Protocol) parse.protocol;
            protocol.getClass();
            builder.protocol = protocol;
            builder.code = i2;
            builder.message = (String) parse.message;
            Headers.Builder builder2 = new Headers.Builder(0, (byte) 0);
            while (true) {
                String readUtf8LineStrict2 = realBufferedSource.readUtf8LineStrict(headersReader.headerLimit);
                headersReader.headerLimit -= readUtf8LineStrict2.length();
                if (readUtf8LineStrict2.length() == 0) {
                    break;
                }
                builder2.addLenient$okhttp(readUtf8LineStrict2);
            }
            builder.headers = Jsoup.commonNewBuilder(Jsoup.commonBuild(builder2));
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
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding", null))) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    public final void writeRequest(Headers headers, String str) {
        if (this.state != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(this.state, "state: ");
            return;
        }
        MultipartBody.Builder builder = this.socket;
        RealBufferedSink realBufferedSink = (RealBufferedSink) builder.parts;
        realBufferedSink.writeUtf8(str);
        realBufferedSink.writeUtf8("\r\n");
        int size = headers.size();
        int i = 0;
        while (true) {
            RealBufferedSink realBufferedSink2 = (RealBufferedSink) builder.parts;
            if (i >= size) {
                realBufferedSink2.writeUtf8("\r\n");
                this.state = 1;
                return;
            } else {
                realBufferedSink2.writeUtf8(Jsoup.commonName(headers, i));
                realBufferedSink2.writeUtf8(": ");
                realBufferedSink2.writeUtf8(Jsoup.commonValue(headers, i));
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
        if (httpUrl.isHttps() || type != Proxy.Type.HTTP) {
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
