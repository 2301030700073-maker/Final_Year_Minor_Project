package kotlinx.serialization.json;

import androidx.work.OperationKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.WriteModeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonPrimitiveSerializer implements KSerializer {
    public static final JsonPrimitiveSerializer INSTANCE = new JsonPrimitiveSerializer();
    public static final SerialDescriptorImpl descriptor = OperationKt.buildSerialDescriptor$default("kotlinx.serialization.json.JsonPrimitive", PrimitiveKind$INT.INSTANCE$8, new SerialDescriptor[0]);

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        JsonDecoder asJsonDecoder = CharsKt.asJsonDecoder(decoder);
        JsonElement decodeJsonElement = asJsonDecoder.decodeJsonElement();
        if (decodeJsonElement instanceof JsonPrimitive) {
            return (JsonPrimitive) decodeJsonElement;
        }
        String str = "Unexpected JSON element, expected JsonPrimitive, had " + Reflection.getOrCreateKotlinClass(decodeJsonElement.getClass());
        String obj = asJsonDecoder.getJson().configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, decodeJsonElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str, null, null, obj), str, null, obj, null);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        jsonPrimitive.getClass();
        CharsKt.access$verify(encoder);
        if (jsonPrimitive instanceof JsonNull) {
            encoder.encodeSerializableValue(JsonNullSerializer.INSTANCE, JsonNull.INSTANCE);
        } else {
            encoder.encodeSerializableValue(JsonLiteralSerializer.INSTANCE, (JsonLiteral) jsonPrimitive);
        }
    }
}
