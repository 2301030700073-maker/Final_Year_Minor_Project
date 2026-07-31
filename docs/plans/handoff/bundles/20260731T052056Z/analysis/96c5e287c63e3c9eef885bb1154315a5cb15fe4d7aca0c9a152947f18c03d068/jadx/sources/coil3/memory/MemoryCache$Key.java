package coil3.memory;

import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemoryCache$Key {
    public final Map extras;
    public final String key;

    public MemoryCache$Key(String str, Map map) {
        this.key = str;
        this.extras = ExceptionsKt.toImmutableMap(map);
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
