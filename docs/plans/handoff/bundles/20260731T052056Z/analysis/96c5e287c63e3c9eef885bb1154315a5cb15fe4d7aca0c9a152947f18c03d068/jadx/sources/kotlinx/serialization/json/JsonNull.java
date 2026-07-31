package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable(with = JsonNullSerializer.class)
/* loaded from: classes.dex */
public final class JsonNull extends JsonPrimitive {
    public static final JsonNull INSTANCE = new JsonNull();

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String getContent() {
        return "null";
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final boolean isString() {
        return false;
    }

    public final KSerializer serializer() {
        return JsonNullSerializer.INSTANCE;
    }
}
