package kotlinx.serialization.json.internal;

import androidx.room.RoomDatabase$createConnectionManager$2;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ElementMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonElementMarker {
    public boolean isUnmarkedNull;
    public final ElementMarker origin;

    public JsonElementMarker(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        this.origin = new ElementMarker(serialDescriptor, new RoomDatabase$createConnectionManager$2(2, this, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0, 3));
    }
}
