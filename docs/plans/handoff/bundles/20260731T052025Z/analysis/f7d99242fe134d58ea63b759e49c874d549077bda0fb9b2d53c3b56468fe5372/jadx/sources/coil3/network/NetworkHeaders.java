package coil3.network;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkHeaders {
    public static final Companion Companion = new Companion(null);
    public static final NetworkHeaders EMPTY = new Builder().build();
    private final Map<String, List<String>> data;

    /* JADX WARN: Multi-variable type inference failed */
    private NetworkHeaders(Map<String, ? extends List<String>> map) {
        this.data = map;
    }

    public final Map<String, List<String>> asMap() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkHeaders) && Intrinsics.areEqual(this.data, ((NetworkHeaders) obj).data);
    }

    public final String get(String str) {
        Map<String, List<String>> map = this.data;
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List<String> list = map.get(lowerCase);
        if (list != null) {
            return (String) CollectionsKt.lastOrNull(list);
        }
        return null;
    }

    public final List<String> getAll(String str) {
        Map<String, List<String>> map = this.data;
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List<String> list = map.get(lowerCase);
        return list == null ? EmptyList.INSTANCE : list;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public String toString() {
        return "NetworkHeaders(data=" + this.data + ")";
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ NetworkHeaders(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private final Map<String, List<String>> data;

        public Builder(NetworkHeaders networkHeaders) {
            Map map = networkHeaders.data;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), CollectionsKt.toMutableList((Collection) entry.getValue()));
            }
            this.data = linkedHashMap;
        }

        public final Builder add(String str, String str2) {
            Map<String, List<String>> map = this.data;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            List<String> list = map.get(lowerCase);
            if (list == null) {
                list = new ArrayList<>();
                map.put(lowerCase, list);
            }
            list.add(str2);
            return this;
        }

        public final NetworkHeaders build() {
            return new NetworkHeaders(MapsKt__MapsKt.toMap(this.data), null);
        }

        public final Builder set(String str, String str2) {
            Map<String, List<String>> map = this.data;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            map.put(lowerCase, IntOffsetKt.mutableListOf(str2));
            return this;
        }

        public final Builder set(String str, List<String> list) {
            Map<String, List<String>> map = this.data;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            map.put(lowerCase, CollectionsKt.toMutableList((Collection) list));
            return this;
        }

        public Builder() {
            this.data = new LinkedHashMap();
        }
    }
}
