package okhttp3.internal.http;

import androidx.compose.runtime.Latch;
import com.google.android.exoplayer2.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.http2.ConnectionShutdownException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BridgeInterceptor implements Interceptor {
    public static final BridgeInterceptor INSTANCE = new BridgeInterceptor(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BridgeInterceptor(int i) {
        this.$r8$classId = i;
    }

    public static Request followUpRequest(Response response, Latch latch, RealInterceptorChain realInterceptorChain) {
        HttpUrl.Builder builder;
        Response response2;
        Route route = latch != null ? latch.getConnection$okhttp().route : null;
        int i = response.code;
        String str = response.request.method;
        if (i != 307 && i != 308) {
            if (i == 401) {
                realInterceptorChain.authenticator.getClass();
                return null;
            }
            if (i != 421) {
                if (i == 503) {
                    Response response3 = response.priorResponse;
                    if ((response3 == null || response3.code != 503) && retryAfter(response, Log.LOG_LEVEL_OFF) == 0) {
                        return response.request;
                    }
                } else {
                    if (i == 407) {
                        route.getClass();
                        if (route.proxy.type() != Proxy.Type.HTTP) {
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                        realInterceptorChain.proxyAuthenticator.getClass();
                        return null;
                    }
                    if (i != 408) {
                        switch (i) {
                        }
                    } else if (realInterceptorChain.retryOnConnectionFailure && (((response2 = response.priorResponse) == null || response2.code != 408) && retryAfter(response, 0) <= 0)) {
                        return response.request;
                    }
                }
            } else if (latch != null && !Intrinsics.areEqual(((ExchangeFinder) latch.awaiters).getRoutePlanner().address.url.host, ((ExchangeCodec) latch.spareList).getCarrier().getRoute().address.url.host)) {
                RealConnection connection$okhttp = latch.getConnection$okhttp();
                synchronized (connection$okhttp) {
                    connection$okhttp.noCoalescedConnections = true;
                }
                return response.request;
            }
            return null;
        }
        if (realInterceptorChain.call.client.followRedirects) {
            String str2 = response.headers.get("Location");
            if (str2 == null) {
                str2 = null;
            }
            Request request = response.request;
            if (str2 != null) {
                HttpUrl httpUrl = request.url;
                httpUrl.getClass();
                try {
                    builder = new HttpUrl.Builder();
                    builder.parse$okhttp(httpUrl, str2);
                } catch (IllegalArgumentException unused) {
                    builder = null;
                }
                HttpUrl build = builder != null ? builder.build() : null;
                if (build != null && (Intrinsics.areEqual(build.scheme, request.url.scheme) || realInterceptorChain.call.client.followSslRedirects)) {
                    Request.Builder newBuilder = request.newBuilder();
                    if (CharsKt.permitsRequestBody(str)) {
                        int i2 = response.code;
                        boolean z = str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            newBuilder.method(str, z ? request.body : null);
                        } else {
                            newBuilder.method("GET", null);
                        }
                        if (!z) {
                            newBuilder.headers.removeAll("Transfer-Encoding");
                            newBuilder.headers.removeAll("Content-Length");
                            newBuilder.headers.removeAll("Content-Type");
                        }
                    }
                    if (!_UtilJvmKt.canReuseConnectionFor(request.url, build)) {
                        newBuilder.headers.removeAll("Authorization");
                    }
                    newBuilder.url = build;
                    return new Request(newBuilder);
                }
            }
        }
        return null;
    }

    public static boolean recover(IOException iOException, RealCall realCall, RealInterceptorChain realInterceptorChain, Request request) {
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!realInterceptorChain.retryOnConnectionFailure) {
            return false;
        }
        if ((!z && (iOException instanceof FileNotFoundException)) || (iOException instanceof ProtocolException)) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || !z) {
                return false;
            }
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        Latch latch = realCall.exchange;
        if (latch == null || !latch._isOpen) {
            return false;
        }
        ExchangeFinder exchangeFinder = realCall.exchangeFinder;
        exchangeFinder.getClass();
        RealRoutePlanner routePlanner = exchangeFinder.getRoutePlanner();
        Latch latch2 = realCall.exchange;
        return routePlanner.hasNext(latch2 != null ? latch2.getConnection$okhttp() : null);
    }

    public static int retryAfter(Response response, int i) {
        String str = response.headers.get("Retry-After");
        if (str == null) {
            str = null;
        }
        if (str == null) {
            return i;
        }
        if (!new Regex("\\d+").matches(str)) {
            return Log.LOG_LEVEL_OFF;
        }
        Integer valueOf = Integer.valueOf(str);
        valueOf.getClass();
        return valueOf.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:167:0x03cd, code lost:
    
        if ("close".equalsIgnoreCase(r1 == null ? null : r1) != false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017f, code lost:
    
        throw new java.lang.IllegalStateException("Check failed.");
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0315 A[Catch: IOException -> 0x02e2, TryCatch #10 {IOException -> 0x02e2, blocks: (B:114:0x02cd, B:116:0x02d6, B:123:0x02e5, B:127:0x030c, B:129:0x0315, B:131:0x031e, B:139:0x0337, B:143:0x0349, B:148:0x0357, B:149:0x035e, B:152:0x0361, B:155:0x036a, B:160:0x0376, B:161:0x03ad, B:163:0x03be, B:166:0x03c9, B:173:0x03e2, B:175:0x03ef, B:176:0x0413, B:178:0x03cf, B:179:0x0398), top: B:113:0x02cd }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x031e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0349 A[Catch: IOException -> 0x02e2, TryCatch #10 {IOException -> 0x02e2, blocks: (B:114:0x02cd, B:116:0x02d6, B:123:0x02e5, B:127:0x030c, B:129:0x0315, B:131:0x031e, B:139:0x0337, B:143:0x0349, B:148:0x0357, B:149:0x035e, B:152:0x0361, B:155:0x036a, B:160:0x0376, B:161:0x03ad, B:163:0x03be, B:166:0x03c9, B:173:0x03e2, B:175:0x03ef, B:176:0x0413, B:178:0x03cf, B:179:0x0398), top: B:113:0x02cd }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0361 A[Catch: IOException -> 0x02e2, TryCatch #10 {IOException -> 0x02e2, blocks: (B:114:0x02cd, B:116:0x02d6, B:123:0x02e5, B:127:0x030c, B:129:0x0315, B:131:0x031e, B:139:0x0337, B:143:0x0349, B:148:0x0357, B:149:0x035e, B:152:0x0361, B:155:0x036a, B:160:0x0376, B:161:0x03ad, B:163:0x03be, B:166:0x03c9, B:173:0x03e2, B:175:0x03ef, B:176:0x0413, B:178:0x03cf, B:179:0x0398), top: B:113:0x02cd }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0374 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03be A[Catch: IOException -> 0x02e2, TryCatch #10 {IOException -> 0x02e2, blocks: (B:114:0x02cd, B:116:0x02d6, B:123:0x02e5, B:127:0x030c, B:129:0x0315, B:131:0x031e, B:139:0x0337, B:143:0x0349, B:148:0x0357, B:149:0x035e, B:152:0x0361, B:155:0x036a, B:160:0x0376, B:161:0x03ad, B:163:0x03be, B:166:0x03c9, B:173:0x03e2, B:175:0x03ef, B:176:0x0413, B:178:0x03cf, B:179:0x0398), top: B:113:0x02cd }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x041c  */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.internal.http.RealInterceptorChain r35) {
        /*
            Method dump skipped, instructions count: 1312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.BridgeInterceptor.intercept(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }
}
