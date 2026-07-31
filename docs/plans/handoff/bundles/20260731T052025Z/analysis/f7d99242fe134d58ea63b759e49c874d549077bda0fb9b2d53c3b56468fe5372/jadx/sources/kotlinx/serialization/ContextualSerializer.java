package kotlinx.serialization;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.List;
import kotlin.Triple;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.Handshake;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContextualSerializer implements KSerializer {
    public final /* synthetic */ int $r8$classId = 0;
    public final SerialDescriptor descriptor;
    public final KSerializer fallbackSerializer;
    public final Object serializableClass;
    public final Object typeArgumentsSerializers;

    public ContextualSerializer(KSerializer kSerializer, KSerializer kSerializer2, KSerializer kSerializer3) {
        SerialDescriptorImpl serialDescriptorImpl;
        this.serializableClass = kSerializer;
        this.fallbackSerializer = kSerializer2;
        this.typeArgumentsSerializers = kSerializer3;
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0 = new ForwardingFileSystem$$ExternalSyntheticLambda0(4, this);
        if (StringsKt.isBlank("kotlin.Triple")) {
            UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
            serialDescriptorImpl = null;
        } else {
            ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlin.Triple");
            forwardingFileSystem$$ExternalSyntheticLambda0.invoke(classSerialDescriptorBuilder);
            serialDescriptorImpl = new SerialDescriptorImpl("kotlin.Triple", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
        }
        this.descriptor = serialDescriptorImpl;
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i = this.$r8$classId;
        Object obj = this.serializableClass;
        KSerializer kSerializer = this.fallbackSerializer;
        Object obj2 = this.typeArgumentsSerializers;
        switch (i) {
            case 0:
                KSerializer contextual = decoder.getSerializersModule().getContextual((ClassReference) obj, (List) obj2);
                if (contextual == null) {
                    contextual = (PolymorphicSerializer) kSerializer;
                }
                return decoder.decodeSerializableValue(contextual);
            default:
                KSerializer kSerializer2 = (KSerializer) obj2;
                KSerializer kSerializer3 = (KSerializer) obj;
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) this.descriptor;
                CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptorImpl);
                Object obj3 = TuplesKt.NULL;
                Object obj4 = obj3;
                Object obj5 = obj4;
                Object obj6 = obj5;
                while (true) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptorImpl);
                    if (decodeElementIndex == -1) {
                        beginStructure.endStructure(serialDescriptorImpl);
                        if (obj4 == obj3) {
                            throw new SerializationException("Element 'first' is missing");
                        }
                        if (obj5 == obj3) {
                            throw new SerializationException("Element 'second' is missing");
                        }
                        if (obj6 != obj3) {
                            return new Triple(obj4, obj5, obj6);
                        }
                        throw new SerializationException("Element 'third' is missing");
                    }
                    if (decodeElementIndex == 0) {
                        obj4 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 0, kSerializer3, null);
                    } else if (decodeElementIndex == 1) {
                        obj5 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 1, kSerializer, null);
                    } else {
                        if (decodeElementIndex != 2) {
                            throw new SerializationException(CameraDevices$CC.m("Unexpected index ", decodeElementIndex));
                        }
                        obj6 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 2, kSerializer2, null);
                    }
                }
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        switch (this.$r8$classId) {
            case 0:
                return (ContextDescriptor) this.descriptor;
            default:
                return (SerialDescriptorImpl) this.descriptor;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.typeArgumentsSerializers;
        KSerializer kSerializer = this.fallbackSerializer;
        Object obj3 = this.serializableClass;
        switch (i) {
            case 0:
                obj.getClass();
                KSerializer contextual = charsKt__CharKt.getSerializersModule().getContextual((ClassReference) obj3, (List) obj2);
                if (contextual == null) {
                    contextual = (PolymorphicSerializer) kSerializer;
                }
                charsKt__CharKt.encodeSerializableValue(contextual, obj);
                break;
            default:
                Triple triple = (Triple) obj;
                triple.getClass();
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) this.descriptor;
                CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptorImpl);
                beginStructure.encodeSerializableElement(serialDescriptorImpl, 0, (KSerializer) obj3, triple.first);
                beginStructure.encodeSerializableElement(serialDescriptorImpl, 1, kSerializer, triple.second);
                beginStructure.encodeSerializableElement(serialDescriptorImpl, 2, (KSerializer) obj2, triple.third);
                beginStructure.endStructure(serialDescriptorImpl);
                break;
        }
    }

    public ContextualSerializer(ClassReference classReference, PolymorphicSerializer polymorphicSerializer, KSerializer[] kSerializerArr) {
        this.serializableClass = classReference;
        this.fallbackSerializer = polymorphicSerializer;
        List asList = Arrays.asList(kSerializerArr);
        asList.getClass();
        this.typeArgumentsSerializers = asList;
        AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0 = new AbstractMap$$ExternalSyntheticLambda0(29, this);
        this.descriptor = new ContextDescriptor(Handshake.Companion.buildSerialDescriptor("kotlinx.serialization.ContextualSerializer", SerialKind$CONTEXTUAL.INSTANCE, new SerialDescriptor[0], abstractMap$$ExternalSyntheticLambda0), classReference);
    }
}
