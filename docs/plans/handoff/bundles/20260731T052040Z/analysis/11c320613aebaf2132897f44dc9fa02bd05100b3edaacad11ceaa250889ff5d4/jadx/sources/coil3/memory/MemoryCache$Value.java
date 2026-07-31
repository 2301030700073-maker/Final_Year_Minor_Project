package coil3.memory;

import coil3.Image;
import coil3.util.UtilsKt;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MemoryCache$Value {
    public final Map extras;
    public final Image image;

    public MemoryCache$Value(Image image, Map map) {
        this.image = image;
        this.extras = UtilsKt.toImmutableMap(map);
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
