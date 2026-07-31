package okhttp3.internal.http;

import androidx.compose.runtime.Latch;
import coil3.network.internal.UtilsKt;
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
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BridgeInterceptor implements Interceptor {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object cookieJar;

    public BridgeInterceptor(HttpUrl.Companion companion) {
        companion.getClass();
        this.cookieJar = companion;
    }

    public static int retryAfter(Response response, int i) {
        String str = response.headers.get("Retry-After");
        if (str == null) {
            str = null;
        }
        if (str == null) {
            return i;
        }
        Pattern compile = Pattern.compile("\\d+");
        compile.getClass();
        if (!compile.matcher(str).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer valueOf = Integer.valueOf(str);
        valueOf.getClass();
        return valueOf.intValue();
    }

    public Request followUpRequest(Response response, Latch latch) {
        HttpUrl.Builder builder;
        Response response2;
        Route route = latch != null ? latch.getConnection$okhttp().route : null;
        int i = response.code;
        String str = response.request.method;
        if (i != 307 && i != 308) {
            if (i == 401) {
                ((OkHttpClient) this.cookieJar).authenticator.getClass();
                return null;
            }
            if (i != 421) {
                if (i == 503) {
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
                        ((OkHttpClient) this.cookieJar).proxyAuthenticator.getClass();
                        return null;
                    }
                    if (i != 408) {
                        switch (i) {
                        }
                    } else if (((OkHttpClient) this.cookieJar).retryOnConnectionFailure && (((response2 = response.priorResponse) == null || response2.code != 408) && retryAfter(response, 0) <= 0)) {
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
        OkHttpClient okHttpClient = (OkHttpClient) this.cookieJar;
        if (okHttpClient.followRedirects) {
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
                if (build != null && (Intrinsics.areEqual(build.scheme, request.url.scheme) || okHttpClient.followSslRedirects)) {
                    Request.Builder newBuilder = request.newBuilder();
                    if (Jsoup.permitsRequestBody(str)) {
                        int i2 = response.code;
                        boolean z = str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            newBuilder.method(str, z ? request.body : null);
                        } else {
                            newBuilder.method(UtilsKt.HTTP_METHOD_GET, null);
                        }
                        if (!z) {
                            newBuilder.headers.removeAll("Transfer-Encoding");
                            newBuilder.headers.removeAll("Content-Length");
                            newBuilder.headers.removeAll(UtilsKt.CONTENT_TYPE);
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

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v24 okhttp3.internal.connection.RealRoutePlanner, still in use, count: 2, list:
          (r0v24 okhttp3.internal.connection.RealRoutePlanner) from 0x007a: MOVE (r18v0 okhttp3.internal.connection.RealRoutePlanner) = (r0v24 okhttp3.internal.connection.RealRoutePlanner) (LINE:123)
          (r0v24 okhttp3.internal.connection.RealRoutePlanner) from 0x0067: MOVE (r18v3 okhttp3.internal.connection.RealRoutePlanner) = (r0v24 okhttp3.internal.connection.RealRoutePlanner) (LINE:104)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // okhttp3.Interceptor
    public final okhttp3.Response intercept(okhttp3.internal.http.RealInterceptorChain r35) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.BridgeInterceptor.intercept(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }

    public boolean recover(IOException iOException, RealCall realCall, Request request) {
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!((OkHttpClient) this.cookieJar).retryOnConnectionFailure) {
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

    public BridgeInterceptor(OkHttpClient okHttpClient) {
        this.cookieJar = okHttpClient;
    }
}
