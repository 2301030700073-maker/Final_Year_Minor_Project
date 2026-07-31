package coil3.memory;

import coil3.util.UtilsKt;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MemoryCache$Key {
    public final Map extras;
    public final String key;

    public MemoryCache$Key(String str, Map map) {
        this.key = str;
        this.extras = UtilsKt.toImmutableMap(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MemoryCache$Key)) {
            return false;
        }
        MemoryCache$Key memoryCache$Key = (MemoryCache$Key) obj;
        return Intrinsics.areEqual(this.key, memoryCache$Key.key) && Intrinsics.areEqual(this.extras, memoryCache$Key.extras);
    }

    public final int hashCode() {
        return this.extras.hashCode() + (this.key.hashCode() * 31);
    }

    public final String toString() {
        return "Key(key=" + this.key + ", extras=" + this.extras + ")";
    }
}
