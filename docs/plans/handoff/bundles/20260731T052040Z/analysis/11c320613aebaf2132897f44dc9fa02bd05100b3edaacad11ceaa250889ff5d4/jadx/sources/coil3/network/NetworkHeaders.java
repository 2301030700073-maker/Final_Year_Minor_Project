package coil3.network;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkHeaders {
    public static final NetworkHeaders EMPTY = new NetworkHeaders(MapsKt__MapsKt.toMap(new LinkedHashMap()));
    public final Map data;

    public NetworkHeaders(Map map) {
        this.data = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkHeaders) && this.data.equals(((NetworkHeaders) obj).data);
    }

    public final String get() {
        String lowerCase = "Content-Type".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List list = (List) this.data.get(lowerCase);
        if (list != null) {
            return (String) CollectionsKt.lastOrNull(list);
        }
        return null;
    }

    public final int hashCode() {
        return this.data.hashCode();
    }

    public final String toString() {
        return "NetworkHeaders(data=" + this.data + ")";
    }
}
