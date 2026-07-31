package okhttp3.internal.http;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$Bucket;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealRoutePlanner;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealInterceptorChain {
    public final Object call;
    public int calls;
    public int connectTimeoutMillis;
    public final Object exchange;
    public int index;
    public final ArrayList interceptors;
    public int readTimeoutMillis;
    public Object request;
    public int writeTimeoutMillis;

    public RealInterceptorChain(LazyGridIntervalContent lazyGridIntervalContent) {
        this.call = lazyGridIntervalContent;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LazyGridSpanLayoutProvider$Bucket(0, 0));
        this.interceptors = arrayList;
        this.writeTimeoutMillis = -1;
        this.exchange = new ArrayList();
        this.request = EmptyList.INSTANCE;
    }

    public static RealInterceptorChain copy$okhttp$default(RealInterceptorChain realInterceptorChain, int i, Latch latch, Request request, int i2) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.index;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            latch = (Latch) realInterceptorChain.exchange;
        }
        Latch latch2 = latch;
        if ((i2 & 4) != 0) {
            request = (Request) realInterceptorChain.request;
        }
        Request request2 = request;
        int i4 = realInterceptorChain.connectTimeoutMillis;
        int i5 = realInterceptorChain.readTimeoutMillis;
        int i6 = realInterceptorChain.writeTimeoutMillis;
        request2.getClass();
        return new RealInterceptorChain((RealCall) realInterceptorChain.call, realInterceptorChain.interceptors, i3, latch2, request2, i4, i5, i6);
    }

    public int getBucketSize() {
        return ((int) Math.sqrt((getTotalSize() * 1.0d) / this.calls)) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
    
        if (r9 < r8) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.provider.FontsContractCompat$FontFamilyResult getLineConfiguration(int r13) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RealInterceptorChain.getLineConfiguration(int):androidx.core.provider.FontsContractCompat$FontFamilyResult");
    }

    public int getLineIndexOfItem(int i) {
        int i2;
        if (getTotalSize() <= 0) {
            return 0;
        }
        if (i >= getTotalSize()) {
            InlineClassHelperKt.throwIllegalArgumentException("ItemIndex > total count");
        }
        if (!((LazyGridIntervalContent) this.call).hasCustomSpans) {
            return i / this.calls;
        }
        ArrayList arrayList = this.interceptors;
        int size = arrayList.size();
        IntOffsetKt.rangeCheck$CollectionsKt__CollectionsKt(arrayList.size(), size);
        int i3 = size - 1;
        int i4 = 0;
        while (true) {
            if (i4 > i3) {
                i2 = -(i4 + 1);
                break;
            }
            i2 = (i4 + i3) >>> 1;
            int i5 = ((LazyGridSpanLayoutProvider$Bucket) arrayList.get(i2)).firstItemIndex - i;
            if (i5 >= 0) {
                if (i5 <= 0) {
                    break;
                }
                i3 = i2 - 1;
            } else {
                i4 = i2 + 1;
            }
        }
        if (i2 < 0) {
            i2 = (-i2) - 2;
        }
        int bucketSize = getBucketSize() * i2;
        int i6 = ((LazyGridSpanLayoutProvider$Bucket) arrayList.get(i2)).firstItemIndex;
        if (i6 > i) {
            InlineClassHelperKt.throwIllegalArgumentException("currentItemIndex > itemIndex");
        }
        int i7 = 0;
        while (i6 < i) {
            int i8 = i6 + 1;
            int spanOf = spanOf(i6);
            i7 += spanOf;
            int i9 = this.calls;
            if (i7 >= i9) {
                if (i7 == i9) {
                    bucketSize++;
                    i7 = 0;
                } else {
                    bucketSize++;
                    i7 = spanOf;
                }
            }
            if (bucketSize % getBucketSize() == 0 && bucketSize / getBucketSize() >= arrayList.size()) {
                arrayList.add(new LazyGridSpanLayoutProvider$Bucket(i8 - (i7 > 0 ? 1 : 0), 0));
            }
            i6 = i8;
        }
        return spanOf(i) + i7 > this.calls ? bucketSize + 1 : bucketSize;
    }

    public int getTotalSize() {
        return ((LazyGridIntervalContent) this.call).intervals.lastVersionCode;
    }

    public Response proceed(Request request) {
        Latch latch = (Latch) this.exchange;
        request.getClass();
        int i = this.index;
        ArrayList arrayList = this.interceptors;
        if (i >= arrayList.size()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
        this.calls++;
        if (latch != null) {
            RealRoutePlanner routePlanner = ((ExchangeFinder) latch.awaiters).getRoutePlanner();
            HttpUrl httpUrl = request.url;
            routePlanner.getClass();
            httpUrl.getClass();
            HttpUrl httpUrl2 = routePlanner.address.url;
            if (httpUrl.port != httpUrl2.port || !Intrinsics.areEqual(httpUrl.host, httpUrl2.host)) {
                UriKt$$ExternalSyntheticBUOutline0.m(arrayList.get(i - 1), " must retain the same host and port", "network interceptor ");
                return null;
            }
            if (this.calls != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m(arrayList.get(i - 1), " must call proceed() exactly once", "network interceptor ");
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
        UriKt$$ExternalSyntheticBUOutline0.m(interceptor, " must call proceed() exactly once", "network interceptor ");
        return null;
    }

    public int spanOf(int i) {
        LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan = this.calls;
        IntervalList$Interval intervalList$Interval = ((LazyGridIntervalContent) this.call).intervals.get(i);
        int i2 = i - intervalList$Interval.startIndex;
        return (int) ((GridItemSpan) ((LazyGridInterval) intervalList$Interval.value).span.invoke(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.INSTANCE, Integer.valueOf(i2))).packedValue;
    }

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
}
