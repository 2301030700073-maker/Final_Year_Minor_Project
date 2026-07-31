package kotlinx.serialization.json;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.internal.WriteModeKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonElementKt {
    public static final InlineClassDescriptor jsonUnquotedLiteralDescriptor = TuplesKt.InlinePrimitiveDescriptor("kotlinx.serialization.json.JsonUnquotedLiteral", StringSerializer.INSTANCE);

    public static final void error(JsonElement jsonElement, String str) {
        throw new IllegalArgumentException("Element " + Reflection.factory.getOrCreateKotlinClass(jsonElement.getClass()) + " is not a " + str);
    }

    public static final int getInt(JsonPrimitive jsonPrimitive) {
        try {
            long parseLongImpl = parseLongImpl(jsonPrimitive);
            if (-2147483648L <= parseLongImpl && parseLongImpl <= 2147483647L) {
                return (int) parseLongImpl;
            }
            throw new NumberFormatException(jsonPrimitive.getContent() + " is not an Int");
        } catch (JsonDecodingException e) {
            throw new NumberFormatException(e.message);
        }
    }

    public static final JsonArray getJsonArray(JsonElement jsonElement) {
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray != null) {
            return jsonArray;
        }
        error(jsonElement, "JsonArray");
        throw null;
    }

    public static final JsonObject getJsonObject(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonObject jsonObject = jsonElement instanceof JsonObject ? (JsonObject) jsonElement : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        error(jsonElement, "JsonObject");
        throw null;
    }

    public static final JsonPrimitive getJsonPrimitive(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        error(jsonElement, "JsonPrimitive");
        throw null;
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
        RulerTrackingMap.fail$default(StringJsonLexer, Animation.CC.m("Expected input to contain a single valid number, but got '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' after it"), i2, null, 4);
        throw null;
    }
}
