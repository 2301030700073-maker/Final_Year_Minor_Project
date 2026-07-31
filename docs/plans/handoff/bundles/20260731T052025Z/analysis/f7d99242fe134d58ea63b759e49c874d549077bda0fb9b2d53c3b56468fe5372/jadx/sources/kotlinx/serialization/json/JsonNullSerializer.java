package kotlinx.serialization.json;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.Handshake;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonNullSerializer implements KSerializer {
    public static final JsonNullSerializer INSTANCE = new JsonNullSerializer();
    public static final SerialDescriptorImpl descriptor = Handshake.Companion.buildSerialDescriptor$default("kotlinx.serialization.json.JsonNull", SerialKind$ENUM.INSTANCE, new SerialDescriptor[0]);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Hex.asJsonDecoder(decoder);
        if (decoder.decodeNotNullMark()) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected 'null' literal", null, null, null));
        }
        return JsonNull.INSTANCE;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        ((JsonNull) obj).getClass();
        Hex.access$verify(charsKt__CharKt);
        charsKt__CharKt.encodeNull();
    }
}
