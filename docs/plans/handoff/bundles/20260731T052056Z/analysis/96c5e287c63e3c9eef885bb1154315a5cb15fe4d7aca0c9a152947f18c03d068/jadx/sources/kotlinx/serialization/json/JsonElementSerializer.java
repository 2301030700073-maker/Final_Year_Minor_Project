package kotlinx.serialization.json;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonElementSerializer implements KSerializer {
    public static final JsonElementSerializer INSTANCE = new JsonElementSerializer();
    public static final SerialDescriptorImpl descriptor = RegexKt.buildSerialDescriptor("kotlinx.serialization.json.JsonElement", PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new ZipFilesKt$$ExternalSyntheticLambda3(3));

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        return NodeUtils.asJsonDecoder(decoder).decodeJsonElement();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        jsonElement.getClass();
        NodeUtils.asJsonEncoder(uuidKt);
        if (jsonElement instanceof JsonPrimitive) {
            uuidKt.encodeSerializableValue(JsonPrimitiveSerializer.INSTANCE, jsonElement);
            return;
        }
        if (jsonElement instanceof JsonObject) {
            uuidKt.encodeSerializableValue(JsonObjectSerializer.INSTANCE, jsonElement);
        } else if (jsonElement instanceof JsonArray) {
            uuidKt.encodeSerializableValue(JsonArraySerializer.INSTANCE, jsonElement);
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        }
    }
}
