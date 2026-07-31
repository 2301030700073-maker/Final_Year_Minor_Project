package kotlinx.serialization.json;

import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.ArrayClassDesc;
import kotlinx.serialization.internal.HashSetSerializer;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonArraySerializer implements KSerializer {
    public static final JsonArraySerializer INSTANCE = new JsonArraySerializer();
    public static final JsonArrayDescriptor descriptor = JsonArrayDescriptor.INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JsonArrayDescriptor implements SerialDescriptor {
        public static final JsonArrayDescriptor INSTANCE = new JsonArrayDescriptor();
        public static final String serialName = "kotlinx.serialization.json.JsonArray";
        public final /* synthetic */ ArrayClassDesc $$delegate_0;

        public JsonArrayDescriptor() {
            SerialDescriptor descriptor = JsonElementSerializer.INSTANCE.getDescriptor();
            descriptor.getClass();
            this.$$delegate_0 = new ArrayClassDesc(descriptor, 1);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List getAnnotations() {
            return EmptyList.INSTANCE;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List getElementAnnotations(int i) {
            this.$$delegate_0.getElementAnnotations(i);
            return EmptyList.INSTANCE;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final SerialDescriptor getElementDescriptor(int i) {
            return this.$$delegate_0.getElementDescriptor(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int getElementIndex(String str) {
            str.getClass();
            return this.$$delegate_0.getElementIndex(str);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String getElementName(int i) {
            return String.valueOf(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int getElementsCount() {
            return 1;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final Room getKind() {
            return StructureKind$MAP.INSTANCE$2;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String getSerialName() {
            return serialName;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean isElementOptional(int i) {
            this.$$delegate_0.isElementOptional(i);
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean isInline() {
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean isNullable() {
            return false;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        NodeUtils.asJsonDecoder(decoder);
        return new JsonArray((List) new HashSetSerializer(JsonElementSerializer.INSTANCE, 1).merge(decoder));
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        JsonArray jsonArray = (JsonArray) obj;
        jsonArray.getClass();
        NodeUtils.asJsonEncoder(uuidKt);
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        SerialDescriptor descriptor2 = jsonElementSerializer.getDescriptor();
        descriptor2.getClass();
        ArrayClassDesc arrayClassDesc = new ArrayClassDesc(descriptor2, 1);
        int size = jsonArray.size();
        UuidKt beginStructure = uuidKt.beginStructure(arrayClassDesc);
        Iterator<JsonElement> it = jsonArray.iterator();
        for (int i = 0; i < size; i++) {
            beginStructure.encodeSerializableElement(arrayClassDesc, i, jsonElementSerializer, it.next());
        }
        beginStructure.endStructure(arrayClassDesc);
    }
}
