package kotlinx.serialization.json.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.room.Room;
import coil3.util.UtilsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonClassDiscriminator;
import kotlinx.serialization.json.JsonEncodingException;
import kotlinx.serialization.json.JsonIgnoreUnknownKeys;
import kotlinx.serialization.json.JsonObject;
import okhttp3.ConnectionPool;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WriteModeKt {
    public static final JsonPath$Tombstone JsonDeserializationNamesKey = new JsonPath$Tombstone();

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor serialDescriptor) {
        String str = "Value of type '" + serialDescriptor.getSerialName() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + serialDescriptor.getKind() + '\'';
        serialDescriptor.getSerialName();
        return new JsonEncodingException(str, "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final RulerTrackingMap StringJsonLexer(Json json, String str) {
        json.getClass();
        str.getClass();
        return new RulerTrackingMap(str, json.configuration);
    }

    public static final SerialDescriptor carrierDescriptor(SerialDescriptor serialDescriptor, LoginClient loginClient) {
        serialDescriptor.getClass();
        loginClient.getClass();
        if (!Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind$CONTEXTUAL.INSTANCE)) {
            return serialDescriptor.isInline() ? carrierDescriptor(serialDescriptor.getElementDescriptor(0), loginClient) : serialDescriptor;
        }
        UtilsKt.getCapturedKClass(serialDescriptor);
        return serialDescriptor;
    }

    public static final byte charToTokenClass(char c) {
        if (c < '~') {
            return CharMappings.CHAR_TO_TOKEN[c];
        }
        return (byte) 0;
    }

    public static final String classDiscriminator(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
        for (Annotation annotation : serialDescriptor.getAnnotations()) {
            if (annotation instanceof JsonClassDiscriminator) {
                return ((JsonClassDiscriminator) annotation).discriminator();
            }
        }
        return json.configuration.classDiscriminator;
    }

    public static final String formatDecodingException(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        if (i >= 0) {
            sb.append("Unexpected JSON token at offset " + i + ": ");
        }
        sb.append(str);
        if (str2 != null && !StringsKt.isBlank(str2)) {
            sb.append(" at path: ");
            sb.append(str2);
        }
        if (str3 != null && !StringsKt.isBlank(str3)) {
            sb.append("\n".concat(str3));
        }
        if (str4 != null) {
            sb.append("\nJSON input: ");
            sb.append(str4);
        }
        return sb.toString();
    }

    public static final int getJsonNameIndex(SerialDescriptor serialDescriptor, Json json, String str) {
        serialDescriptor.getClass();
        str.getClass();
        namingStrategy(serialDescriptor, json);
        int elementIndex = serialDescriptor.getElementIndex(str);
        if (elementIndex != -3 || !json.configuration.useAlternativeNames) {
            return elementIndex;
        }
        ConnectionPool connectionPool = json._schemaCache;
        Regex$$ExternalSyntheticLambda0 regex$$ExternalSyntheticLambda0 = new Regex$$ExternalSyntheticLambda0(6, serialDescriptor, json);
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) connectionPool.delegate;
        Map map = (Map) concurrentHashMap.get(serialDescriptor);
        JsonPath$Tombstone jsonPath$Tombstone = JsonDeserializationNamesKey;
        Object obj = map != null ? map.get(jsonPath$Tombstone) : null;
        Object obj2 = obj != null ? obj : null;
        if (obj2 == null) {
            obj2 = regex$$ExternalSyntheticLambda0.invoke();
            Object obj3 = concurrentHashMap.get(serialDescriptor);
            if (obj3 == null) {
                obj3 = new ConcurrentHashMap(2);
                concurrentHashMap.put(serialDescriptor, obj3);
            }
            ((Map) obj3).put(jsonPath$Tombstone, obj2);
        }
        Integer num = (Integer) ((Map) obj2).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int getJsonNameIndexOrThrow(SerialDescriptor serialDescriptor, Json json, String str, String str2) {
        serialDescriptor.getClass();
        str.getClass();
        int jsonNameIndex = getJsonNameIndex(serialDescriptor, json, str);
        if (jsonNameIndex != -3) {
            return jsonNameIndex;
        }
        throw new SerializationException(serialDescriptor.getSerialName() + " does not contain element with name '" + str + '\'' + str2);
    }

    public static final boolean ignoreUnknownKeys(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        if (json.configuration.ignoreUnknownKeys) {
            return true;
        }
        List annotations = serialDescriptor.getAnnotations();
        if (annotations != null && annotations.isEmpty()) {
            return false;
        }
        Iterator it = annotations.iterator();
        while (it.hasNext()) {
            if (((Annotation) it.next()) instanceof JsonIgnoreUnknownKeys) {
                return true;
            }
        }
        return false;
    }

    public static final void invalidTrailingComma(RulerTrackingMap rulerTrackingMap, String str) {
        rulerTrackingMap.fail(rulerTrackingMap.size - 1, "Trailing comma before the end of JSON ".concat(str), "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingComma = true' in 'Json {}' builder to support them.");
        throw null;
    }

    public static final CharSequence minify(CharSequence charSequence, int i) {
        charSequence.getClass();
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder sb = new StringBuilder(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                sb.append(charSequence.subSequence(i2, i3).toString());
                sb.append(str2);
                return sb.toString();
            }
            int length2 = charSequence.length() - 60;
            if (length2 > 0) {
                return "....." + charSequence.subSequence(length2, charSequence.length()).toString();
            }
        }
        return charSequence;
    }

    public static final void namingStrategy(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$1);
    }

    public static final String nonFiniteFpMessage(String str, Number number) {
        StringBuilder sb = new StringBuilder("Unexpected special floating-point value ");
        sb.append(number);
        return Animation.CC.m(sb, str != null ? Animation.CC.m(" with key ", str, ". ") : ". ", "By default, non-finite floating point values are prohibited because they do not conform JSON specification.");
    }

    public static final Object readPolymorphicJson(Json json, String str, JsonObject jsonObject, KSerializer kSerializer) {
        json.getClass();
        str.getClass();
        return new JsonTreeDecoder(json, jsonObject, str, kSerializer.getDescriptor()).decodeSerializableValue$1(kSerializer);
    }

    public static final WriteMode switchMode(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        Room kind = serialDescriptor.getKind();
        if (kind instanceof PolymorphicKind$OPEN) {
            return WriteMode.POLY_OBJ;
        }
        if (Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE$2)) {
            return WriteMode.LIST;
        }
        if (!Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor carrierDescriptor = carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.serializersModule);
        Room kind2 = carrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind$INT) || Intrinsics.areEqual(kind2, SerialKind$ENUM.INSTANCE)) {
            return WriteMode.MAP;
        }
        throw InvalidKeyKindException(carrierDescriptor);
    }

    public static final String tokenDescription(byte b) {
        return b == 1 ? "quotation mark '\"'" : b == 2 ? "string escape sequence '\\'" : b == 4 ? "comma ','" : b == 5 ? "colon ':'" : b == 6 ? "start of the object '{'" : b == 7 ? "end of the object '}'" : b == 8 ? "start of the array '['" : b == 9 ? "end of the array ']'" : b == 10 ? "end of the input" : b == Byte.MAX_VALUE ? "invalid token" : "valid token";
    }
}
