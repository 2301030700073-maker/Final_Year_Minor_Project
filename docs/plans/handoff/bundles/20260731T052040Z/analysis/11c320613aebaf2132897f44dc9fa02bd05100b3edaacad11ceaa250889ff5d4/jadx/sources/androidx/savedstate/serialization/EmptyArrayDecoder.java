package androidx.savedstate.serialization;

import coil3.ComponentRegistry;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModuleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EmptyArrayDecoder extends RangesKt {
    public static final EmptyArrayDecoder INSTANCE = new EmptyArrayDecoder();
    public static final ComponentRegistry.Builder serializersModule = SerializersModuleKt.EmptySerializersModule;

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeElementIndex(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return -1;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return serializersModule;
    }
}
