package coil3.network;

import coil3.network.internal.DefaultCacheStrategy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface CacheStrategy {
    public static final DefaultCacheStrategy DEFAULT = new DefaultCacheStrategy();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadResult {
        public final NetworkResponse response;

        public ReadResult(NetworkResponse networkResponse) {
            this.response = networkResponse;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReadResult) && Intrinsics.areEqual(this.response, ((ReadResult) obj).response);
        }

        public final int hashCode() {
            NetworkResponse networkResponse = this.response;
            if (networkResponse != null) {
                return networkResponse.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "ReadResult(request=null, response=" + this.response + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WriteResult {
        public static final WriteResult DISABLED = new WriteResult();
        public final NetworkResponse response;

        public WriteResult() {
            this.response = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WriteResult) {
                return Intrinsics.areEqual(this.response, ((WriteResult) obj).response);
            }
            return false;
        }

        public final int hashCode() {
            NetworkResponse networkResponse = this.response;
            if (networkResponse != null) {
                return networkResponse.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "WriteResult(response=" + this.response + ")";
        }

        public WriteResult(NetworkResponse networkResponse) {
            this.response = networkResponse;
        }
    }
}
