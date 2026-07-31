package kotlinx.serialization.json;

import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.OperationKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.text.CharsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonElementSerializer implements KSerializer {
    public static final JsonElementSerializer INSTANCE = new JsonElementSerializer();
    public static final SerialDescriptorImpl descriptor = OperationKt.buildSerialDescriptor("kotlinx.serialization.json.JsonElement", PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new Data$$ExternalSyntheticLambda0(26));

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        return CharsKt.asJsonDecoder(decoder).decodeJsonElement();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        jsonElement.getClass();
        CharsKt.access$verify(encoder);
        if (jsonElement instanceof JsonPrimitive) {
            encoder.encodeSerializableValue(JsonPrimitiveSerializer.INSTANCE, jsonElement);
            return;
        }
        if (jsonElement instanceof JsonObject) {
            encoder.encodeSerializableValue(JsonObjectSerializer.INSTANCE, jsonElement);
        } else if (jsonElement instanceof JsonArray) {
            encoder.encodeSerializableValue(JsonArraySerializer.INSTANCE, jsonElement);
        } else {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
        }
    }
}
