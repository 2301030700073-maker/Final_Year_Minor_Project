package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PairSerializer implements KSerializer {
    public final /* synthetic */ int $r8$classId;
    public final SerialDescriptorImpl descriptor;
    public final KSerializer keySerializer;
    public final KSerializer valueSerializer;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PairSerializer(KSerializer kSerializer, KSerializer kSerializer2, int i) {
        this(kSerializer, kSerializer2, (byte) 0);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this(kSerializer, kSerializer2, (byte) 0);
                this.descriptor = Handshake.Companion.buildSerialDescriptor("kotlin.collections.Map.Entry", StructureKind$MAP.INSTANCE, new SerialDescriptor[0], new MapEntrySerializer$$ExternalSyntheticLambda0(0, kSerializer, kSerializer2));
                return;
            default:
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
                if (StringsKt.isBlank("kotlin.Pair")) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                    throw null;
                }
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlin.Pair");
                classSerialDescriptorBuilder.element("first", kSerializer.getDescriptor());
                classSerialDescriptorBuilder.element("second", kSerializer2.getDescriptor());
                this.descriptor = new SerialDescriptorImpl("kotlin.Pair", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
                return;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Object pair;
        Object obj = TuplesKt.NULL;
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        Object obj2 = obj;
        Object obj3 = obj2;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                if (obj2 == obj) {
                    throw new SerializationException("Element 'key' is missing");
                }
                if (obj3 == obj) {
                    throw new SerializationException("Element 'value' is missing");
                }
                switch (this.$r8$classId) {
                    case 0:
                        pair = new Pair(obj2, obj3);
                        break;
                    default:
                        pair = new MapEntrySerializer$MapEntry(obj2, obj3);
                        break;
                }
                beginStructure.endStructure(descriptor);
                return pair;
            }
            if (decodeElementIndex == 0) {
                obj2 = beginStructure.decodeSerializableElement(getDescriptor(), 0, this.keySerializer, null);
            } else {
                if (decodeElementIndex != 1) {
                    throw new SerializationException(CameraDevices$CC.m("Invalid index: ", decodeElementIndex));
                }
                obj3 = beginStructure.decodeSerializableElement(getDescriptor(), 1, this.valueSerializer, null);
            }
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        switch (this.$r8$classId) {
        }
        return this.descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        Object obj2;
        Object obj3;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(getDescriptor());
        SerialDescriptor descriptor = getDescriptor();
        KSerializer kSerializer = this.keySerializer;
        int i = this.$r8$classId;
        switch (i) {
            case 0:
                Pair pair = (Pair) obj;
                pair.getClass();
                obj2 = pair.first;
                break;
            default:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                obj2 = entry.getKey();
                break;
        }
        beginStructure.encodeSerializableElement(descriptor, 0, kSerializer, obj2);
        SerialDescriptor descriptor2 = getDescriptor();
        KSerializer kSerializer2 = this.valueSerializer;
        switch (i) {
            case 0:
                Pair pair2 = (Pair) obj;
                pair2.getClass();
                obj3 = pair2.second;
                break;
            default:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                obj3 = entry2.getValue();
                break;
        }
        beginStructure.encodeSerializableElement(descriptor2, 1, kSerializer2, obj3);
        beginStructure.endStructure(getDescriptor());
    }

    public PairSerializer(KSerializer kSerializer, KSerializer kSerializer2, byte b) {
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }
}
