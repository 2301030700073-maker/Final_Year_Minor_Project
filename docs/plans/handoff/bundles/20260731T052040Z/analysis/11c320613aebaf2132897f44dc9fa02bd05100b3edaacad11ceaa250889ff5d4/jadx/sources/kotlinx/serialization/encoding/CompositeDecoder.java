package kotlinx.serialization.encoding;

import coil3.ComponentRegistry;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface CompositeDecoder {
    boolean decodeBooleanElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    double decodeDoubleElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int decodeElementIndex(SerialDescriptor serialDescriptor);

    float decodeFloatElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int decodeIntElement(SerialDescriptor serialDescriptor, int i);

    long decodeLongElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, String str);

    Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj);

    short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    String decodeStringElement(SerialDescriptor serialDescriptor, int i);

    void endStructure(SerialDescriptor serialDescriptor);

    ComponentRegistry.Builder getSerializersModule();
}
