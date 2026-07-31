package kotlinx.serialization.json;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.internal.AbstractJsonLexer;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.WriteModeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class JsonElementKt {
    public static final InlineClassDescriptor jsonUnquotedLiteralDescriptor = Platform_commonKt.InlinePrimitiveDescriptor("kotlinx.serialization.json.JsonUnquotedLiteral", StringSerializer.INSTANCE);

    public static final JsonPrimitive getJsonPrimitive(JsonElement jsonElement) {
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m(Reflection.getOrCreateKotlinClass(jsonElement.getClass()), " is not a JsonPrimitive", "Element ");
        return null;
    }

    public static final long parseLongImpl(JsonPrimitive jsonPrimitive) {
        StringJsonLexer StringJsonLexer = WriteModeKt.StringJsonLexer(Json.Default, jsonPrimitive.getContent());
        String str = StringJsonLexer.source;
        long consumeNumericLiteral = StringJsonLexer.consumeNumericLiteral();
        if (StringJsonLexer.consumeNextToken() == 10) {
            return consumeNumericLiteral;
        }
        int i = StringJsonLexer.currentPosition;
        int i2 = i > 0 ? i - 1 : i;
        AbstractJsonLexer.fail$default(StringJsonLexer, Modifier.CC.m("Expected input to contain a single valid number, but got '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' after it"), i2, null, 4);
        throw null;
    }
}
