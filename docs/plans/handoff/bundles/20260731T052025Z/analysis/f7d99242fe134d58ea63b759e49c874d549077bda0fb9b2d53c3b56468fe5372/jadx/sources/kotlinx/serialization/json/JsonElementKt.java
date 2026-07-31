package kotlinx.serialization.json;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.internal.WriteModeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JsonElementKt {
    public static final InlineClassDescriptor jsonUnquotedLiteralDescriptor = TuplesKt.InlinePrimitiveDescriptor("kotlinx.serialization.json.JsonUnquotedLiteral", StringSerializer.INSTANCE);

    public static final JsonPrimitive getJsonPrimitive(JsonElement jsonElement) {
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        Regex$$ExternalSyntheticBUOutline0.m$1(Reflection.getOrCreateKotlinClass(jsonElement.getClass()), " is not a JsonPrimitive", "Element ");
        return null;
    }

    public static final long parseLongImpl(JsonPrimitive jsonPrimitive) {
        RulerTrackingMap StringJsonLexer = WriteModeKt.StringJsonLexer(Json.Default, jsonPrimitive.getContent());
        String str = (String) StringJsonLexer.newRulers;
        long consumeNumericLiteral = StringJsonLexer.consumeNumericLiteral();
        if (StringJsonLexer.consumeNextToken() == 10) {
            return consumeNumericLiteral;
        }
        int i = StringJsonLexer.size;
        int i2 = i > 0 ? i - 1 : i;
        RulerTrackingMap.fail$default(StringJsonLexer, CameraDevices$CC.m("Expected input to contain a single valid number, but got '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' after it"), i2, null, 4);
        throw null;
    }
}
