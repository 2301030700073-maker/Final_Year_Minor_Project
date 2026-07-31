package kotlinx.serialization.json.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import coil3.ComponentRegistry;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
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
import kotlinx.serialization.modules.ContextualProvider;
import okhttp3.ConnectionPool;
import org.jsoup.Jsoup;
import org.koin.core.registry.PropertyRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WriteModeKt {
    public static final JsonPath$Tombstone JsonDeserializationNamesKey = new JsonPath$Tombstone();

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor serialDescriptor) {
        return new JsonEncodingException("Value of type '" + serialDescriptor.getSerialName() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + serialDescriptor.getKind() + '\'', serialDescriptor.getSerialName(), "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final StringJsonLexer StringJsonLexer(Json json, String str) {
        json.getClass();
        str.getClass();
        return new StringJsonLexer(str, json.configuration);
    }

    public static final SerialDescriptor carrierDescriptor(SerialDescriptor serialDescriptor, ComponentRegistry.Builder builder) {
        SerialDescriptor carrierDescriptor;
        serialDescriptor.getClass();
        builder.getClass();
        if (!Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind$CONTEXTUAL.INSTANCE)) {
            return serialDescriptor.isInline() ? carrierDescriptor(serialDescriptor.getElementDescriptor(0), builder) : serialDescriptor;
        }
        ClassReference capturedKClass = BundleKt.getCapturedKClass(serialDescriptor);
        SerialDescriptor serialDescriptor2 = null;
        if (capturedKClass != null) {
            ContextualProvider contextualProvider = (ContextualProvider) ((Map) builder.interceptors).get(capturedKClass);
            KSerializer invoke = contextualProvider != null ? contextualProvider.invoke(EmptyList.INSTANCE) : null;
            if (!(invoke instanceof KSerializer)) {
                invoke = null;
            }
            if (invoke != null) {
                serialDescriptor2 = invoke.getDescriptor();
            }
        }
        return (serialDescriptor2 == null || (carrierDescriptor = carrierDescriptor(serialDescriptor2, builder)) == null) ? serialDescriptor : carrierDescriptor;
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

    public static final Object decodeByReader(Json json, KSerializer kSerializer, ConnectionPool connectionPool) {
        json.getClass();
        ReaderJsonLexer readerJsonLexer = new ReaderJsonLexer(connectionPool, CharArrayPoolBatchSize.INSTANCE.m697take(16384), json.configuration);
        try {
            Object decodeSerializableValue = new StreamingJsonDecoder(json, WriteMode.OBJ, readerJsonLexer, kSerializer.getDescriptor(), null).decodeSerializableValue(kSerializer);
            readerJsonLexer.expectEof();
            return decodeSerializableValue;
        } finally {
            readerJsonLexer.release();
        }
    }

    public static final void encodeByWriter(Json json, InternalJsonWriter internalJsonWriter, KSerializer kSerializer, Object obj) {
        json.getClass();
        new StreamingJsonEncoder(json.configuration.prettyPrint ? new ComposerWithPrettyPrint(internalJsonWriter, json) : new Composer(internalJsonWriter), json, WriteMode.OBJ, new StreamingJsonEncoder[WriteMode.$ENTRIES.getSize()]).encodeSerializableValue(kSerializer, obj);
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
        json.getClass();
        str.getClass();
        namingStrategy(serialDescriptor, json);
        int elementIndex = serialDescriptor.getElementIndex(str);
        if (elementIndex != -3 || !json.configuration.useAlternativeNames) {
            return elementIndex;
        }
        PropertyRegistry propertyRegistry = json._schemaCache;
        ComponentRegistry$Builder$$ExternalSyntheticLambda0 componentRegistry$Builder$$ExternalSyntheticLambda0 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(serialDescriptor, json, 17);
        propertyRegistry.getClass();
        ConcurrentHashMap concurrentHashMap = propertyRegistry._values;
        Map map = (Map) concurrentHashMap.get(serialDescriptor);
        JsonPath$Tombstone jsonPath$Tombstone = JsonDeserializationNamesKey;
        Object obj = map != null ? map.get(jsonPath$Tombstone) : null;
        Object obj2 = obj != null ? obj : null;
        if (obj2 == null) {
            obj2 = componentRegistry$Builder$$ExternalSyntheticLambda0.invoke();
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

    public static final boolean ignoreUnknownKeys(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
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

    public static final void invalidTrailingComma(AbstractJsonLexer abstractJsonLexer, String str) {
        abstractJsonLexer.fail("Trailing comma before the end of JSON ".concat(str), abstractJsonLexer.currentPosition - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingComma = true' in 'Json {}' builder to support them.");
        throw null;
    }

    public static final CharSequence minify(int i, CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder m = Owner.CC.m(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                m.append(charSequence.subSequence(i2, i3).toString());
                m.append(str2);
                return m.toString();
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
        json.getClass();
        Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$1);
    }

    public static final String nonFiniteFpMessage(Number number, String str) {
        StringBuilder sb = new StringBuilder("Unexpected special floating-point value ");
        sb.append(number);
        return Modifier.CC.m(sb, str != null ? Modifier.CC.m(" with key ", str, ". ") : ". ", "By default, non-finite floating point values are prohibited because they do not conform JSON specification.");
    }

    public static final WriteMode switchMode(SerialDescriptor serialDescriptor, Json json) {
        json.getClass();
        serialDescriptor.getClass();
        Jsoup kind = serialDescriptor.getKind();
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
        Jsoup kind2 = carrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind$INT) || Intrinsics.areEqual(kind2, SerialKind$ENUM.INSTANCE)) {
            return WriteMode.MAP;
        }
        throw InvalidKeyKindException(carrierDescriptor);
    }

    public static final String tokenDescription(byte b) {
        return b == 1 ? "quotation mark '\"'" : b == 2 ? "string escape sequence '\\'" : b == 4 ? "comma ','" : b == 5 ? "colon ':'" : b == 6 ? "start of the object '{'" : b == 7 ? "end of the object '}'" : b == 8 ? "start of the array '['" : b == 9 ? "end of the array ']'" : b == 10 ? "end of the input" : b == Byte.MAX_VALUE ? "invalid token" : "valid token";
    }
}
