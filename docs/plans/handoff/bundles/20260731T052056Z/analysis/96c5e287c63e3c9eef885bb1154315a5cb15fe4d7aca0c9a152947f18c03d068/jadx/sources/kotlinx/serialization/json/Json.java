package kotlinx.serialization.json;

import androidx.compose.ui.node.RulerTrackingMap;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArrayDeque;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.Composer;
import kotlinx.serialization.json.internal.JsonPrimitiveDecoder;
import kotlinx.serialization.json.internal.JsonTreeDecoder;
import kotlinx.serialization.json.internal.JsonTreeListDecoder;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.WriteModeKt;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.ConnectionPool;
import okio.PriorityQueue;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Json {
    public static final Default Default = new Default(new JsonConfiguration(false, true, "    ", false, "type", true, ClassDiscriminatorMode.POLYMORPHIC, true), SerializersModuleKt.EmptySerializersModule);
    public final ConnectionPool _schemaCache = new ConnectionPool(13);
    public final JsonConfiguration configuration;
    public final LoginClient serializersModule;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Default extends Json {
    }

    public Json(JsonConfiguration jsonConfiguration, LoginClient loginClient) {
        this.configuration = jsonConfiguration;
        this.serializersModule = loginClient;
    }

    public final Object decodeFromJsonElement(KSerializer kSerializer, JsonElement jsonElement) {
        Decoder jsonPrimitiveDecoder;
        kSerializer.getClass();
        jsonElement.getClass();
        if (jsonElement instanceof JsonObject) {
            jsonPrimitiveDecoder = new JsonTreeDecoder(this, (JsonObject) jsonElement, (String) null, 12);
        } else if (jsonElement instanceof JsonArray) {
            jsonPrimitiveDecoder = new JsonTreeListDecoder(this, (JsonArray) jsonElement);
        } else {
            if (!(jsonElement instanceof JsonLiteral) && !jsonElement.equals(JsonNull.INSTANCE)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            jsonPrimitiveDecoder = new JsonPrimitiveDecoder(this, (JsonPrimitive) jsonElement, null);
        }
        return jsonPrimitiveDecoder.decodeSerializableValue$1(kSerializer);
    }

    public final Object decodeFromString(String str, KSerializer kSerializer) {
        str.getClass();
        RulerTrackingMap StringJsonLexer = WriteModeKt.StringJsonLexer(this, str);
        Object decodeSerializableValue$1 = new StreamingJsonDecoder(this, WriteMode.OBJ, StringJsonLexer, kSerializer.getDescriptor(), null).decodeSerializableValue$1(kSerializer);
        if (StringJsonLexer.consumeNextToken() == 10) {
            return decodeSerializableValue$1;
        }
        RulerTrackingMap.fail$default(StringJsonLexer, "Expected EOF after parsing, but had " + ((String) StringJsonLexer.newRulers).charAt(StringJsonLexer.size - 1) + " instead", 0, null, 6);
        throw null;
    }

    public final String encodeToString(KSerializer kSerializer, Object obj) {
        char[] cArr;
        kSerializer.getClass();
        PriorityQueue priorityQueue = new PriorityQueue((char) 0, 12);
        CharArrayPool charArrayPool = CharArrayPool.INSTANCE;
        synchronized (charArrayPool) {
            ArrayDeque arrayDeque = charArrayPool.arrays;
            cArr = null;
            char[] cArr2 = (char[]) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (cArr2 != null) {
                charArrayPool.charsTotal -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        priorityQueue.array = cArr;
        try {
            WriteMode writeMode = WriteMode.OBJ;
            StreamingJsonEncoder[] streamingJsonEncoderArr = new StreamingJsonEncoder[((AbstractCollection) WriteMode.getEntries()).getSize()];
            writeMode.getClass();
            new StreamingJsonEncoder(new Composer(priorityQueue), this, writeMode, streamingJsonEncoderArr).encodeSerializableValue(kSerializer, obj);
            return priorityQueue.toString();
        } finally {
            priorityQueue.release();
        }
    }
}
