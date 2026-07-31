package kotlinx.serialization.internal;

import androidx.compose.animation.core.Animation;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.Triple;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TripleSerializer implements KSerializer {
    public final KSerializer aSerializer;
    public final KSerializer bSerializer;
    public final KSerializer cSerializer;
    public final SerialDescriptorImpl descriptor;

    public TripleSerializer(KSerializer kSerializer, KSerializer kSerializer2, KSerializer kSerializer3) {
        SerialDescriptorImpl serialDescriptorImpl;
        kSerializer.getClass();
        kSerializer2.getClass();
        kSerializer3.getClass();
        this.aSerializer = kSerializer;
        this.bSerializer = kSerializer2;
        this.cSerializer = kSerializer3;
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(28, this);
        if (StringsKt.isBlank("kotlin.Triple")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Blank serial names are prohibited");
            serialDescriptorImpl = null;
        } else {
            ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlin.Triple");
            diskLruCache$$ExternalSyntheticLambda0.invoke(classSerialDescriptorBuilder);
            serialDescriptorImpl = new SerialDescriptorImpl("kotlin.Triple", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
        }
        this.descriptor = serialDescriptorImpl;
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptorImpl serialDescriptorImpl = this.descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptorImpl);
        Object obj = TuplesKt.NULL;
        Object obj2 = obj;
        Object obj3 = obj2;
        Object obj4 = obj3;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptorImpl);
            if (decodeElementIndex == -1) {
                beginStructure.endStructure(serialDescriptorImpl);
                if (obj2 == obj) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (obj3 == obj) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (obj4 != obj) {
                    return new Triple(obj2, obj3, obj4);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (decodeElementIndex == 0) {
                obj2 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 0, this.aSerializer, null);
            } else if (decodeElementIndex == 1) {
                obj3 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 1, this.bSerializer, null);
            } else {
                if (decodeElementIndex != 2) {
                    throw new SerializationException(Animation.CC.m(decodeElementIndex, "Unexpected index "));
                }
                obj4 = beginStructure.decodeSerializableElement(serialDescriptorImpl, 2, this.cSerializer, null);
            }
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Triple triple = (Triple) obj;
        triple.getClass();
        SerialDescriptorImpl serialDescriptorImpl = this.descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptorImpl);
        beginStructure.encodeSerializableElement(serialDescriptorImpl, 0, this.aSerializer, triple.first);
        beginStructure.encodeSerializableElement(serialDescriptorImpl, 1, this.bSerializer, triple.second);
        beginStructure.encodeSerializableElement(serialDescriptorImpl, 2, this.cSerializer, triple.third);
        beginStructure.endStructure(serialDescriptorImpl);
    }
}
