package coil3;

import coil3.util.Collections_jvmCommonKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Extras {
    public static final Companion Companion = new Companion(null);
    public static final Extras EMPTY = new Builder().build();
    private final Map<Key<?>, Object> data;

    private Extras(Map<Key<?>, ? extends Object> map) {
        this.data = map;
    }

    public final Map<Key<?>, Object> asMap() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Extras) && Intrinsics.areEqual(this.data, ((Extras) obj).data);
    }

    public final <T> T get(Key<T> key) {
        return (T) this.data.get(key);
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public String toString() {
        return "Extras(data=" + this.data + ")";
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Key<T> {
        public static final Companion Companion = new Companion(null);

        /* renamed from: default, reason: not valid java name */
        private final T f31default;

        public Key(T t) {
            this.f31default = t;
        }

        public final T getDefault() {
            return this.f31default;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ Extras(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private final Map<Key<?>, Object> data;

        public Builder(Extras extras) {
            this.data = MapsKt__MapsKt.toMutableMap(extras.data);
        }

        public final Extras build() {
            return new Extras(Collections_jvmCommonKt.toImmutableMap(this.data), null);
        }

        public final <T> Builder set(Key<T> key, T t) {
            Map<Key<?>, Object> map = this.data;
            if (t != null) {
                map.put(key, t);
                return this;
            }
            map.remove(key);
            return this;
        }

        public final Builder setAll(Extras extras) {
            for (Map.Entry entry : extras.data.entrySet()) {
                Key key = (Key) entry.getKey();
                Object value = entry.getValue();
                key.getClass();
                set(key, value);
            }
            return this;
        }

        public Builder(Map<Key<?>, ? extends Object> map) {
            this.data = MapsKt__MapsKt.toMutableMap(map);
        }

        public Builder() {
            this.data = new LinkedHashMap();
        }
    }
}
