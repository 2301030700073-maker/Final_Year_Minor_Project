package kotlinx.serialization.internal;

import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractPolymorphicSerializer implements KSerializer {
    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        Object obj = null;
        String str = null;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                if (obj != null) {
                    beginStructure.endStructure(descriptor);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Polymorphic value has not been read for class ", str));
                return null;
            }
            if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(getDescriptor(), decodeElementIndex);
            } else {
                if (decodeElementIndex != 1) {
                    StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                    if (str == null) {
                        str = "unknown class";
                    }
                    sb.append(str);
                    sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                    sb.append(decodeElementIndex);
                    throw new SerializationException(sb.toString());
                }
                if (str == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot read polymorphic value before its type token");
                    return null;
                }
                obj = beginStructure.decodeSerializableElement(getDescriptor(), decodeElementIndex, ContextsKt.findPolymorphicSerializer(this, beginStructure, str), null);
            }
        }
    }

    public KSerializer findPolymorphicSerializerOrNull(UuidKt uuidKt, Object obj) {
        obj.getClass();
        LoginClient serializersModule = uuidKt.getSerializersModule();
        KClass baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        if (!baseClass.isInstance(obj)) {
            return null;
        }
        TypeIntrinsics.isFunctionOfArity(1, null);
        return null;
    }

    public abstract KClass getBaseClass();

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        obj.getClass();
        KSerializer findPolymorphicSerializer = ContextsKt.findPolymorphicSerializer(this, uuidKt, obj);
        SerialDescriptor descriptor = getDescriptor();
        UuidKt beginStructure = uuidKt.beginStructure(descriptor);
        beginStructure.encodeStringElement(getDescriptor(), 0, findPolymorphicSerializer.getDescriptor().getSerialName());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, findPolymorphicSerializer, obj);
        beginStructure.endStructure(descriptor);
    }

    public KSerializer findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        LoginClient serializersModule = compositeDecoder.getSerializersModule();
        KClass baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        TypeIntrinsics.isFunctionOfArity(1, null);
        return null;
    }
}
