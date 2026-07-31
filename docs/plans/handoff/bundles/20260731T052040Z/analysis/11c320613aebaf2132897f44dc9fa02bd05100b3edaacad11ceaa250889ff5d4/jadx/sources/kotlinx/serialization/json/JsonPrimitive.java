package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class JsonPrimitive extends JsonElement {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public final KSerializer serializer() {
            return JsonPrimitiveSerializer.INSTANCE;
        }
    }

    public abstract String getContent();

    public String toString() {
        return getContent();
    }
}
