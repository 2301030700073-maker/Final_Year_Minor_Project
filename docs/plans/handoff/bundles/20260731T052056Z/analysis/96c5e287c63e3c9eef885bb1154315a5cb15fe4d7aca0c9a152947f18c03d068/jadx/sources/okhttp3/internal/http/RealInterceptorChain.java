package okhttp3.internal.http;

import androidx.compose.runtime.Latch;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealRoutePlanner;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealInterceptorChain {
    public final RealCall call;
    public int calls;
    public final int connectTimeoutMillis;
    public final Latch exchange;
    public final int index;
    public final ArrayList interceptors;
    public final int readTimeoutMillis;
    public final Request request;
    public final int writeTimeoutMillis;

    public RealInterceptorChain(RealCall realCall, ArrayList arrayList, int i, Latch latch, Request request, int i2, int i3, int i4) {
        request.getClass();
        this.call = realCall;
        this.interceptors = arrayList;
        this.index = i;
        this.exchange = latch;
        this.request = request;
        this.connectTimeoutMillis = i2;
        this.readTimeoutMillis = i3;
        this.writeTimeoutMillis = i4;
    }

    public static RealInterceptorChain copy$okhttp$default(RealInterceptorChain realInterceptorChain, int i, Latch latch, Request request, int i2) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.index;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            latch = realInterceptorChain.exchange;
        }
        Latch latch2 = latch;
        if ((i2 & 4) != 0) {
            request = realInterceptorChain.request;
        }
        Request request2 = request;
        int i4 = realInterceptorChain.connectTimeoutMillis;
        int i5 = realInterceptorChain.readTimeoutMillis;
        int i6 = realInterceptorChain.writeTimeoutMillis;
        request2.getClass();
        return new RealInterceptorChain(realInterceptorChain.call, realInterceptorChain.interceptors, i3, latch2, request2, i4, i5, i6);
    }

    public final Response proceed(Request request) {
        request.getClass();
        ArrayList arrayList = this.interceptors;
        int size = arrayList.size();
        int i = this.index;
        if (i >= size) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
            return null;
        }
        this.calls++;
        Latch latch = this.exchange;
        if (latch != null) {
            RealRoutePlanner routePlanner = ((ExchangeFinder) latch.awaiters).getRoutePlanner();
            HttpUrl httpUrl = request.url;
            routePlanner.getClass();
            httpUrl.getClass();
            HttpUrl httpUrl2 = routePlanner.address.url;
            if (httpUrl.port != httpUrl2.port || !Intrinsics.areEqual(httpUrl.host, httpUrl2.host)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$2(arrayList.get(i - 1), " must retain the same host and port", "network interceptor ");
                return null;
            }
            if (this.calls != 1) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$2(arrayList.get(i - 1), " must call proceed() exactly once", "network interceptor ");
                return null;
            }
        }
        int i2 = i + 1;
        RealInterceptorChain copy$okhttp$default = copy$okhttp$default(this, i2, null, request, 58);
        Interceptor interceptor = (Interceptor) arrayList.get(i);
        Response intercept = interceptor.intercept(copy$okhttp$default);
        if (intercept == null) {
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        if (latch == null || i2 >= arrayList.size() || copy$okhttp$default.calls == 1) {
            return intercept;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$2(interceptor, " must call proceed() exactly once", "network interceptor ");
        return null;
    }
}
