package coil3.memory;

import coil3.Image;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemoryCache$Value {
    public final Map extras;
    public final Image image;

    public MemoryCache$Value(Image image, Map map) {
        this.image = image;
        this.extras = ExceptionsKt.toImmutableMap(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MemoryCache$Value)) {
            return false;
        }
        MemoryCache$Value memoryCache$Value = (MemoryCache$Value) obj;
        return Intrinsics.areEqual(this.image, memoryCache$Value.image) && Intrinsics.areEqual(this.extras, memoryCache$Value.extras);
    }

    public final int hashCode() {
        return this.extras.hashCode() + (this.image.hashCode() * 31);
    }

    public final String toString() {
        return "Value(image=" + this.image + ", extras=" + this.extras + ")";
    }
}
