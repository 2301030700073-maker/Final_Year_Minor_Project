package okhttp3.internal.http2;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http2.Http2Stream;
import okio.ByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final List HTTP_2_SKIPPED_REQUEST_HEADERS = _UtilJvmKt.toImmutableList(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});
    public static final List HTTP_2_SKIPPED_RESPONSE_HEADERS = _UtilJvmKt.toImmutableList(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});
    public volatile boolean canceled;
    public final RealConnection carrier;
    public final RealInterceptorChain chain;
    public final Http2Connection http2Connection;
    public final Protocol protocol;
    public volatile Http2Stream stream;

    public Http2ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, RealInterceptorChain realInterceptorChain, Http2Connection http2Connection) {
        http2Connection.getClass();
        this.carrier = realConnection;
        this.chain = realInterceptorChain;
        this.http2Connection = http2Connection;
        List list = okHttpClient.protocols;
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.protocol = list.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.canceled = true;
        Http2Stream http2Stream = this.stream;
        if (http2Stream != null) {
            http2Stream.closeLater(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink createRequestBody(Request request, long j) {
        request.getClass();
        Http2Stream http2Stream = this.stream;
        http2Stream.getClass();
        return http2Stream.sink;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void finishRequest() {
        Http2Stream http2Stream = this.stream;
        http2Stream.getClass();
        http2Stream.sink.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void flushRequest() {
        this.http2Connection.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket getSocket() {
        Http2Stream http2Stream = this.stream;
        http2Stream.getClass();
        return http2Stream;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean isResponseComplete() {
        boolean z;
        Http2Stream http2Stream = this.stream;
        if (http2Stream != null) {
            synchronized (http2Stream) {
                Http2Stream.FramingSource framingSource = http2Stream.source;
                if (framingSource.finished) {
                    if (framingSource.readBuffer.exhausted()) {
                        z = true;
                    }
                }
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source openResponseBodySource(Response response) {
        Http2Stream http2Stream = this.stream;
        http2Stream.getClass();
        return http2Stream.source;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        if (r4 == false) goto L20;
     */
    @Override // okhttp3.internal.http.ExchangeCodec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response.Builder readResponseHeaders(boolean r11) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2ExchangeCodec.readResponseHeaders(boolean):okhttp3.Response$Builder");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long reportedContentLength(Response response) {
        if (HttpHeaders.promisesBody(response)) {
            return _UtilJvmKt.headersContentLength(response);
        }
        return 0L;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void writeRequestHeaders(Request request) {
        int i;
        Http2Stream http2Stream;
        boolean z;
        request.getClass();
        if (this.stream != null) {
            return;
        }
        boolean z2 = request.body != null;
        Headers headers = request.headers;
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method));
        ByteString byteString = Header.TARGET_PATH;
        HttpUrl httpUrl = request.url;
        httpUrl.getClass();
        String encodedPath = httpUrl.encodedPath();
        String encodedQuery = httpUrl.encodedQuery();
        if (encodedQuery != null) {
            encodedPath = encodedPath + '?' + encodedQuery;
        }
        arrayList.add(new Header(byteString, encodedPath));
        String str = headers.get("Host");
        if (str != null) {
            arrayList.add(new Header(Header.TARGET_AUTHORITY, str));
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, httpUrl.scheme));
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String name = headers.name(i2);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = name.toLowerCase(locale);
            lowerCase.getClass();
            if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(lowerCase) || (lowerCase.equals("te") && headers.value(i2).equals("trailers"))) {
                arrayList.add(new Header(lowerCase, headers.value(i2)));
            }
        }
        Http2Connection http2Connection = this.http2Connection;
        http2Connection.getClass();
        boolean z3 = !z2;
        synchronized (http2Connection.writer) {
            synchronized (http2Connection) {
                try {
                    if (http2Connection.nextStreamId > 1073741823) {
                        http2Connection.shutdown(ErrorCode.REFUSED_STREAM);
                    }
                    if (http2Connection.isShutdown) {
                        throw new ConnectionShutdownException();
                    }
                    i = http2Connection.nextStreamId;
                    http2Connection.nextStreamId = i + 2;
                    http2Stream = new Http2Stream(i, http2Connection, z3, false, null);
                    z = !z2 || http2Connection.writeBytesTotal >= http2Connection.writeBytesMaximum || http2Stream.writeBytesTotal >= http2Stream.writeBytesMaximum;
                    if (http2Stream.isOpen()) {
                        http2Connection.streams.put(Integer.valueOf(i), http2Stream);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.writer.headers(z3, i, arrayList);
        }
        if (z) {
            http2Connection.writer.flush();
        }
        this.stream = http2Stream;
        boolean z4 = this.canceled;
        Http2Stream http2Stream2 = this.stream;
        if (z4) {
            http2Stream2.getClass();
            http2Stream2.closeLater(ErrorCode.CANCEL);
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Canceled");
        } else {
            http2Stream2.getClass();
            http2Stream2.readTimeout.timeout(this.chain.readTimeoutMillis);
            Http2Stream http2Stream3 = this.stream;
            http2Stream3.getClass();
            http2Stream3.writeTimeout.timeout(this.chain.writeTimeoutMillis);
        }
    }
}
