package coil3.network.internal;

import coil3.network.CacheStrategy;
import coil3.network.NetworkRequest;
import coil3.network.NetworkResponse;
import coil3.request.Options;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultCacheStrategy implements CacheStrategy {
    private static final Companion Companion = new Companion(null);
    private static final Set<Integer> CACHEABLE_STATUS_CODES = ArraysKt___ArraysKt.toSet(new Integer[]{300, 301, 404, 405, 410, 414, 501});

    @Override // coil3.network.CacheStrategy
    public Object read(NetworkResponse networkResponse, NetworkRequest networkRequest, Options options, Continuation continuation) {
        return new CacheStrategy.ReadResult(networkResponse);
    }

    @Override // coil3.network.CacheStrategy
    public Object write(NetworkResponse networkResponse, NetworkRequest networkRequest, NetworkResponse networkResponse2, Options options, Continuation continuation) {
        if (networkResponse2.getCode() == 304 && networkResponse != null) {
            return new CacheStrategy.WriteResult(NetworkResponse.copy$default(networkResponse2, 0, 0L, 0L, UtilsKt.plus(networkResponse.getHeaders(), networkResponse2.getHeaders()), null, null, 39, null));
        }
        int code = networkResponse2.getCode();
        return ((200 > code || code >= 300) && !CACHEABLE_STATUS_CODES.contains(new Integer(networkResponse2.getCode()))) ? CacheStrategy.WriteResult.DISABLED : new CacheStrategy.WriteResult(networkResponse2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
