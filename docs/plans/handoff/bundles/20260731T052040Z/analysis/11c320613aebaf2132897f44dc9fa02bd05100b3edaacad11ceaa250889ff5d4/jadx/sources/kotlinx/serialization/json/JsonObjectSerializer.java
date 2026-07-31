package kotlinx.serialization.json;

import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.text.CharsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.LinkedHashMapClassDesc;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonObjectSerializer implements KSerializer {
    public static final JsonObjectSerializer INSTANCE = new JsonObjectSerializer();
    public static final JsonObjectDescriptor descriptor = JsonObjectDescriptor.INSTANCE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JsonObjectDescriptor implements SerialDescriptor {
        public static final JsonObjectDescriptor INSTANCE = new JsonObjectDescriptor();
        public static final String serialName = "kotlinx.serialization.json.JsonObject";
        public final /* synthetic */ LinkedHashMapClassDesc $$delegate_0;

        public JsonObjectDescriptor() {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
            StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
            JsonElementSerializer jsonElementSerializer2 = JsonElementSerializer.INSTANCE;
            this.$$delegate_0 = new LinkedHashMapClassDesc(StringSerializer.descriptor, JsonElementSerializer.descriptor);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List getAnnotations() {
            this.$$delegate_0.getClass();
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
            this.$$delegate_0.getClass();
            return String.valueOf(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int getElementsCount() {
            this.$$delegate_0.getClass();
            return 2;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final Jsoup getKind() {
            this.$$delegate_0.getClass();
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
            this.$$delegate_0.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean isNullable() {
            this.$$delegate_0.getClass();
            return false;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        CharsKt.asJsonDecoder(decoder);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        return new JsonObject((Map) new LinkedHashMapSerializer().mo469deserialize(decoder));
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        JsonObject jsonObject = (JsonObject) obj;
        jsonObject.getClass();
        CharsKt.access$verify(encoder);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        new LinkedHashMapSerializer().serialize(encoder, jsonObject);
    }
}
