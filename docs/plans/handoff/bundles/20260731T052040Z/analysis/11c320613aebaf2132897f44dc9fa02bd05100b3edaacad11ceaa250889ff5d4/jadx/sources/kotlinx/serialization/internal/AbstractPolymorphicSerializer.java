package kotlinx.serialization.internal;

import androidx.compose.ui.node.Owner;
import androidx.sqlite.SQLite;
import coil3.ComponentRegistry;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractPolymorphicSerializer implements KSerializer {
    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Owner.CC.m("Polymorphic value has not been read for class ", str));
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
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot read polymorphic value before its type token");
                    return null;
                }
                obj = beginStructure.decodeSerializableElement(getDescriptor(), decodeElementIndex, Cookie.Companion.findPolymorphicSerializer(this, beginStructure, str), null);
            }
        }
    }

    public KSerializer findPolymorphicSerializerOrNull(SQLite sQLite, Object obj) {
        obj.getClass();
        ComponentRegistry.Builder serializersModule = sQLite.getSerializersModule();
        ClassReference baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        if (baseClass.isInstance(obj)) {
            Map map = (Map) ((Map) serializersModule.mappers).get(baseClass);
            KSerializer kSerializer = map != null ? (KSerializer) map.get(Reflection.getOrCreateKotlinClass(obj.getClass())) : null;
            KSerializer kSerializer2 = kSerializer instanceof KSerializer ? kSerializer : null;
            if (kSerializer2 != null) {
                return kSerializer2;
            }
            Object obj2 = ((Map) serializersModule.keyers).get(baseClass);
            Function1 function1 = TypeIntrinsics.isFunctionOfArity(1, obj2) ? (Function1) obj2 : null;
            if (function1 != null) {
                return (KSerializer) function1.invoke(obj);
            }
        }
        return null;
    }

    public abstract ClassReference getBaseClass();

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        obj.getClass();
        KSerializer findPolymorphicSerializer = Cookie.Companion.findPolymorphicSerializer(this, (SQLite) encoder, obj);
        SerialDescriptor descriptor = getDescriptor();
        SQLite beginStructure = encoder.beginStructure(descriptor);
        beginStructure.encodeStringElement(getDescriptor(), 0, findPolymorphicSerializer.getDescriptor().getSerialName());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, findPolymorphicSerializer, obj);
        beginStructure.endStructure(descriptor);
    }

    public KSerializer findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        ComponentRegistry.Builder serializersModule = compositeDecoder.getSerializersModule();
        ClassReference baseClass = getBaseClass();
        serializersModule.getClass();
        baseClass.getClass();
        Map map = (Map) ((Map) serializersModule.lazyFetcherFactories).get(baseClass);
        KSerializer kSerializer = map != null ? (KSerializer) map.get(str) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        Object obj = ((Map) serializersModule.lazyDecoderFactories).get(baseClass);
        Function1 function1 = TypeIntrinsics.isFunctionOfArity(1, obj) ? (Function1) obj : null;
        if (function1 != null) {
            return (KSerializer) function1.invoke(str);
        }
        return null;
    }
}
