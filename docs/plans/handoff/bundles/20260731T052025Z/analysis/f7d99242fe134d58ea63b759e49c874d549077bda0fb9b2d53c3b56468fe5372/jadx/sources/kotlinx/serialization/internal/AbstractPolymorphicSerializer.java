package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerialModuleImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Polymorphic value has not been read for class ", str));
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
                    UriKt$$ExternalSyntheticBUOutline0.m("Cannot read polymorphic value before its type token");
                    return null;
                }
                obj = beginStructure.decodeSerializableElement(getDescriptor(), decodeElementIndex, Options.Companion.findPolymorphicSerializer(this, beginStructure, str), null);
            }
        }
    }

    public KSerializer findPolymorphicSerializerOrNull(CharsKt__CharKt charsKt__CharKt, Object obj) {
        obj.getClass();
        SerialModuleImpl serializersModule = charsKt__CharKt.getSerializersModule();
        KClass baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        if (((ClassReference) baseClass).isInstance(obj)) {
            Map map = (Map) serializersModule.polyBase2Serializers.get(baseClass);
            KSerializer kSerializer = map != null ? (KSerializer) map.get(Reflection.getOrCreateKotlinClass(obj.getClass())) : null;
            KSerializer kSerializer2 = kSerializer instanceof KSerializer ? kSerializer : null;
            if (kSerializer2 != null) {
                return kSerializer2;
            }
            Object obj2 = serializersModule.polyBase2DefaultSerializerProvider.get(baseClass);
            Function1 function1 = TypeIntrinsics.isFunctionOfArity(1, obj2) ? (Function1) obj2 : null;
            if (function1 != null) {
                return (KSerializer) function1.invoke(obj);
            }
        }
        return null;
    }

    public abstract KClass getBaseClass();

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        obj.getClass();
        KSerializer findPolymorphicSerializer = Options.Companion.findPolymorphicSerializer(this, charsKt__CharKt, obj);
        SerialDescriptor descriptor = getDescriptor();
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(descriptor);
        beginStructure.encodeStringElement(getDescriptor(), 0, findPolymorphicSerializer.getDescriptor().getSerialName());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, findPolymorphicSerializer, obj);
        beginStructure.endStructure(descriptor);
    }

    public KSerializer findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        SerialModuleImpl serializersModule = compositeDecoder.getSerializersModule();
        KClass baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        Map map = (Map) serializersModule.polyBase2NamedSerializers.get(baseClass);
        KSerializer kSerializer = map != null ? (KSerializer) map.get(str) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        Object obj = serializersModule.polyBase2DefaultDeserializerProvider.get(baseClass);
        Function1 function1 = TypeIntrinsics.isFunctionOfArity(1, obj) ? (Function1) obj : null;
        if (function1 != null) {
            return (KSerializer) function1.invoke(str);
        }
        return null;
    }
}
