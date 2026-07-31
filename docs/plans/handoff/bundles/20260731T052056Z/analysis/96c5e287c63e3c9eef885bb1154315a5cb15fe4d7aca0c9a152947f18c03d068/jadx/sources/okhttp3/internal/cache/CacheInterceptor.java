package okhttp3.internal.cache;

import androidx.compose.runtime.Latch;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.regex.Pattern;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CacheInterceptor implements Interceptor {
    public final /* synthetic */ int $r8$classId;
    public final Object cache;

    public CacheInterceptor(CookieJar cookieJar) {
        this.$r8$classId = 1;
        cookieJar.getClass();
        this.cache = cookieJar;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v14 okhttp3.internal.connection.RealRoutePlanner, still in use, count: 2, list:
          (r3v14 okhttp3.internal.connection.RealRoutePlanner) from 0x0073: MOVE (r20v1 okhttp3.internal.connection.RealRoutePlanner) = (r3v14 okhttp3.internal.connection.RealRoutePlanner) (LINE:116)
          (r3v14 okhttp3.internal.connection.RealRoutePlanner) from 0x0058: MOVE (r20v3 okhttp3.internal.connection.RealRoutePlanner) = (r3v14 okhttp3.internal.connection.RealRoutePlanner) (LINE:89)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    /* JADX WARN: Multi-variable type inference failed */
    private final okhttp3.Response intercept$okhttp3$internal$http$RetryAndFollowUpInterceptor(okhttp3.internal.http.RealInterceptorChain r34) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheInterceptor.intercept$okhttp3$internal$http$RetryAndFollowUpInterceptor(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }

    public static int retryAfter(Response response, int i) {
        String header = response.header("Retry-After", null);
        if (header == null) {
            return i;
        }
        Pattern compile = Pattern.compile("\\d+");
        compile.getClass();
        if (!compile.matcher(header).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer valueOf = Integer.valueOf(header);
        valueOf.getClass();
        return valueOf.intValue();
    }

    public Request followUpRequest(Response response, Latch latch) {
        HttpUrl.Builder builder;
        RequestBody requestBody;
        Response response2;
        Route route = latch != null ? latch.getConnection$okhttp().route : null;
        int i = response.code;
        Request request = response.request;
        String str = request.method;
        if (i != 307 && i != 308) {
            if (i == 401) {
                ((OkHttpClient) this.cache).authenticator.getClass();
                return null;
            }
            if (i == 421) {
                RequestBody requestBody2 = request.body;
                if ((requestBody2 == null || !requestBody2.isOneShot()) && latch != null && !Intrinsics.areEqual(((ExchangeFinder) latch.awaiters).getRoutePlanner().address.url.host, ((ExchangeCodec) latch.spareList).getCarrier().getRoute().address.url.host)) {
                    RealConnection connection$okhttp = latch.getConnection$okhttp();
                    synchronized (connection$okhttp) {
                        connection$okhttp.noCoalescedConnections = true;
                    }
                    return response.request;
                }
            } else if (i == 503) {
                Response response3 = response.priorResponse;
                if ((response3 == null || response3.code != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                    return response.request;
                }
            } else {
                if (i == 407) {
                    route.getClass();
                    if (route.proxy.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    ((OkHttpClient) this.cache).proxyAuthenticator.getClass();
                    return null;
                }
                if (i != 408) {
                    switch (i) {
                    }
                } else if (((OkHttpClient) this.cache).retryOnConnectionFailure && (((requestBody = request.body) == null || !requestBody.isOneShot()) && (((response2 = response.priorResponse) == null || response2.code != 408) && retryAfter(response, 0) <= 0))) {
                    return response.request;
                }
            }
            return null;
        }
        OkHttpClient okHttpClient = (OkHttpClient) this.cache;
        if (okHttpClient.followRedirects) {
            String header = response.header("Location", null);
            Request request2 = response.request;
            if (header != null) {
                HttpUrl httpUrl = request2.url;
                httpUrl.getClass();
                try {
                    builder = new HttpUrl.Builder(0);
                    builder.parse$okhttp(httpUrl, header);
                } catch (IllegalArgumentException unused) {
                    builder = null;
                }
                HttpUrl m872build = builder != null ? builder.m872build() : null;
                if (m872build != null && (Intrinsics.areEqual(m872build.scheme, request2.url.scheme) || okHttpClient.followSslRedirects)) {
                    Request.Builder newBuilder = request2.newBuilder();
                    if (TabUtil.permitsRequestBody(str)) {
                        int i2 = response.code;
                        boolean z = str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            newBuilder.method(str, z ? request2.body : null);
                        } else {
                            newBuilder.method("GET", null);
                        }
                        if (!z) {
                            ((Headers.Builder) newBuilder.headers).removeAll("Transfer-Encoding");
                            ((Headers.Builder) newBuilder.headers).removeAll("Content-Length");
                            ((Headers.Builder) newBuilder.headers).removeAll("Content-Type");
                        }
                    }
                    if (!_UtilJvmKt.canReuseConnectionFor(request2.url, m872build)) {
                        ((Headers.Builder) newBuilder.headers).removeAll("Authorization");
                    }
                    newBuilder.url = m872build;
                    return new Request(newBuilder);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x056b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0743  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0432  */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.internal.http.RealInterceptorChain r50) {
        /*
            Method dump skipped, instructions count: 1950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheInterceptor.intercept(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }

    public boolean recover(IOException iOException, RealCall realCall, Request request) {
        RequestBody requestBody;
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!((OkHttpClient) this.cache).retryOnConnectionFailure) {
            return false;
        }
        if ((!z && (((requestBody = request.body) != null && requestBody.isOneShot()) || (iOException instanceof FileNotFoundException))) || (iOException instanceof ProtocolException)) {
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

    public /* synthetic */ CacheInterceptor(int i, Object obj) {
        this.$r8$classId = i;
        this.cache = obj;
    }

    public CacheInterceptor(OkHttpClient okHttpClient) {
        this.$r8$classId = 2;
        okHttpClient.getClass();
        this.cache = okHttpClient;
    }
}
