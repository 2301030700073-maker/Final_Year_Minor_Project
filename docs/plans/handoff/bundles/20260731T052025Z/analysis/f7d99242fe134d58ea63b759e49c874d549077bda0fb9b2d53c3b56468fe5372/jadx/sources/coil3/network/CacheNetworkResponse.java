package coil3.network;

import coil3.network.NetworkHeaders;
import coil3.network.internal.UtilsKt;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okio.BufferedSink;
import okio.BufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CacheNetworkResponse {
    public static final CacheNetworkResponse INSTANCE = new CacheNetworkResponse();

    private CacheNetworkResponse() {
    }

    public final NetworkResponse readFrom(BufferedSource bufferedSource) {
        int parseInt = Integer.parseInt(bufferedSource.readUtf8LineStrict());
        long parseLong = Long.parseLong(bufferedSource.readUtf8LineStrict());
        long parseLong2 = Long.parseLong(bufferedSource.readUtf8LineStrict());
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        int parseInt2 = Integer.parseInt(bufferedSource.readUtf8LineStrict());
        for (int i = 0; i < parseInt2; i++) {
            UtilsKt.append(builder, bufferedSource.readUtf8LineStrict());
        }
        return new NetworkResponse(parseInt, parseLong, parseLong2, builder.build(), null, null, 48, null);
    }

    public final void writeTo(NetworkResponse networkResponse, BufferedSink bufferedSink) {
        bufferedSink.writeDecimalLong(networkResponse.getCode()).writeByte(10);
        bufferedSink.writeDecimalLong(networkResponse.getRequestMillis()).writeByte(10);
        bufferedSink.writeDecimalLong(networkResponse.getResponseMillis()).writeByte(10);
        Set<Map.Entry<String, List<String>>> entrySet = networkResponse.getHeaders().asMap().entrySet();
        Iterator<T> it = entrySet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        bufferedSink.writeDecimalLong(i).writeByte(10);
        for (Map.Entry<String, List<String>> entry : entrySet) {
            Iterator<String> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                bufferedSink.writeUtf8(entry.getKey()).writeUtf8(":").writeUtf8(it2.next()).writeByte(10);
            }
        }
    }
}
