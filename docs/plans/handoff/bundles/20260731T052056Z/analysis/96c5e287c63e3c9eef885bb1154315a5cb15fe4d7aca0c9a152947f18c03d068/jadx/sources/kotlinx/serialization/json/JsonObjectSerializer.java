package kotlinx.serialization.json;

import androidx.room.Room;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.HashMapClassDesc;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonObjectSerializer implements KSerializer {
    public static final JsonObjectSerializer INSTANCE = new JsonObjectSerializer();
    public static final JsonObjectDescriptor descriptor = JsonObjectDescriptor.INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JsonObjectDescriptor implements SerialDescriptor {
        public static final JsonObjectDescriptor INSTANCE = new JsonObjectDescriptor();
        public static final String serialName = "kotlinx.serialization.json.JsonObject";
        public final /* synthetic */ HashMapClassDesc $$delegate_0;

        public JsonObjectDescriptor() {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
            SerialDescriptor descriptor = stringSerializer.getDescriptor();
            SerialDescriptor descriptor2 = jsonElementSerializer.getDescriptor();
            descriptor.getClass();
            descriptor2.getClass();
            this.$$delegate_0 = new HashMapClassDesc("kotlin.collections.LinkedHashMap", descriptor, descriptor2);
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
            return 2;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final Room getKind() {
            return StructureKind$MAP.INSTANCE;
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
        return new JsonObject((Map) new HashMapSerializer(StringSerializer.INSTANCE, JsonElementSerializer.INSTANCE, 1).deserialize(decoder));
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        JsonObject jsonObject = (JsonObject) obj;
        jsonObject.getClass();
        NodeUtils.asJsonEncoder(uuidKt);
        new HashMapSerializer(StringSerializer.INSTANCE, JsonElementSerializer.INSTANCE, 1).serialize(uuidKt, jsonObject);
    }
}
