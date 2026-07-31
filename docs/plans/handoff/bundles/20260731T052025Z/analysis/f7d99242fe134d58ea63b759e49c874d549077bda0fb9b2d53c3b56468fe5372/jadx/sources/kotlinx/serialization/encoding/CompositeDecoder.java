package kotlinx.serialization.encoding;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.modules.SerialModuleImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CompositeDecoder {
    boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i);

    byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    double decodeDoubleElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int decodeElementIndex(SerialDescriptor serialDescriptor);

    float decodeFloatElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int decodeIntElement(SerialDescriptor serialDescriptor, int i);

    long decodeLongElement(SerialDescriptor serialDescriptor, int i);

    Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj);

    Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj);

    short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    String decodeStringElement(SerialDescriptor serialDescriptor, int i);

    void endStructure(SerialDescriptor serialDescriptor);

    SerialModuleImpl getSerializersModule();
}
