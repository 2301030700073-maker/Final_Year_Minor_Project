package kotlinx.serialization.json;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.Handshake;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonElementSerializer implements KSerializer {
    public static final JsonElementSerializer INSTANCE = new JsonElementSerializer();
    public static final SerialDescriptorImpl descriptor = Handshake.Companion.buildSerialDescriptor("kotlinx.serialization.json.JsonElement", PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new JsonObject$$ExternalSyntheticLambda0(11));

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        return Hex.asJsonDecoder(decoder).decodeJsonElement();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        jsonElement.getClass();
        Hex.access$verify(charsKt__CharKt);
        if (jsonElement instanceof JsonPrimitive) {
            charsKt__CharKt.encodeSerializableValue(JsonPrimitiveSerializer.INSTANCE, jsonElement);
            return;
        }
        if (jsonElement instanceof JsonObject) {
            charsKt__CharKt.encodeSerializableValue(JsonObjectSerializer.INSTANCE, jsonElement);
        } else if (jsonElement instanceof JsonArray) {
            charsKt__CharKt.encodeSerializableValue(JsonArraySerializer.INSTANCE, jsonElement);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }
}
