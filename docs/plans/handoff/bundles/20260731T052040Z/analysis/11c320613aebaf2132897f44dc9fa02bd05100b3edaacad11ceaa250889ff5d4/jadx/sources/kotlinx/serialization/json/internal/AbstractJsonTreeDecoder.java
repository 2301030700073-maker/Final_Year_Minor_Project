package kotlinx.serialization.json.internal;

import androidx.compose.ui.Modifier;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import okhttp3.Cookie;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractJsonTreeDecoder implements JsonDecoder, Decoder, CompositeDecoder {
    public final JsonConfiguration configuration;
    public boolean flag;
    public final Json json;
    public final String polymorphicDiscriminator;
    public final ArrayList tagStack = new ArrayList();

    public AbstractJsonTreeDecoder(Json json, String str) {
        this.json = json;
        this.polymorphicDiscriminator = str;
        this.configuration = json.configuration;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        String obj;
        serialDescriptor.getClass();
        JsonElement currentObject = currentObject();
        Jsoup kind = serialDescriptor.getKind();
        boolean areEqual = Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE$2);
        Json json = this.json;
        if (areEqual || (kind instanceof PolymorphicKind$OPEN)) {
            String serialName = serialDescriptor.getSerialName();
            if (currentObject instanceof JsonArray) {
                return new JsonTreeListDecoder(json, (JsonArray) currentObject);
            }
            String str = "Expected " + Reflection.getOrCreateKotlinClass(JsonArray.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName;
            String renderTagStack = renderTagStack();
            String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str, renderTagStack, null, obj2), str, renderTagStack, obj2, null);
        }
        if (!Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE)) {
            String serialName2 = serialDescriptor.getSerialName();
            if (currentObject instanceof JsonObject) {
                return new JsonTreeDecoder(json, (JsonObject) currentObject, this.polymorphicDiscriminator, 8);
            }
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName2;
            String renderTagStack2 = renderTagStack();
            obj = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack2, null, obj), str2, renderTagStack2, obj, null);
        }
        SerialDescriptor carrierDescriptor = WriteModeKt.carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.serializersModule);
        Jsoup kind2 = carrierDescriptor.getKind();
        if (!(kind2 instanceof PrimitiveKind$INT) && !Intrinsics.areEqual(kind2, SerialKind$ENUM.INSTANCE)) {
            throw WriteModeKt.InvalidKeyKindException(carrierDescriptor);
        }
        String serialName3 = serialDescriptor.getSerialName();
        if (currentObject instanceof JsonObject) {
            return new JsonTreeMapDecoder(json, (JsonObject) currentObject);
        }
        String str3 = "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName3;
        String renderTagStack3 = renderTagStack();
        obj = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str3, renderTagStack3, null, obj), str3, renderTagStack3, obj, null);
    }

    public abstract JsonElement currentElement(String str);

    public final JsonElement currentObject() {
        JsonElement currentElement;
        String str = (String) CollectionsKt.lastOrNull(this.tagStack);
        return (str == null || (currentElement = currentElement(str)) == null) ? getValue() : currentElement;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        return decodeTaggedBoolean(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean decodeBooleanElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedBoolean(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        return decodeTaggedByte(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedByte(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        return decodeTaggedChar(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedChar(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        return decodeTaggedDouble(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double decodeDoubleElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedDouble(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        return decodeTaggedFloat(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float decodeFloatElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedFloat(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (CollectionsKt.lastOrNull(this.tagStack) != null) {
            return decodeTaggedInline(popTag(), serialDescriptor);
        }
        return new JsonPrimitiveDecoder(this.json, getValue(), this.polymorphicDiscriminator).decodeInline(serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedInline(getTag(primitiveArrayDescriptor, i), primitiveArrayDescriptor.getElementDescriptor(i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        return decodeTaggedInt(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeIntElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeTaggedInt(getTag(serialDescriptor, i));
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement decodeJsonElement() {
        return currentObject();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return decodeTaggedLong(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long decodeLongElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedLong(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return !(currentObject() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, String str) {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        serialDescriptor.getClass();
        String tag = getTag(serialDescriptor, i);
        StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
        this.tagStack.add(tag);
        StringSerializer stringSerializer3 = StringSerializer.INSTANCE;
        stringSerializer3.getDescriptor().getClass();
        Object decodeSerializableValue = decodeNotNullMark() ? decodeSerializableValue(stringSerializer3) : null;
        if (!this.flag) {
            popTag();
        }
        this.flag = false;
        return decodeSerializableValue;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        this.tagStack.add(getTag(serialDescriptor, i));
        kSerializer.getClass();
        Object decodeSerializableValue = decodeSerializableValue(kSerializer);
        if (!this.flag) {
            popTag();
        }
        this.flag = false;
        return decodeSerializableValue;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Object decodeSerializableValue(KSerializer kSerializer) {
        String str;
        kSerializer.getClass();
        if (!(kSerializer instanceof AbstractPolymorphicSerializer)) {
            return kSerializer.mo469deserialize(this);
        }
        Json json = this.json;
        JsonConfiguration jsonConfiguration = json.configuration;
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) kSerializer;
        String classDiscriminator = WriteModeKt.classDiscriminator(abstractPolymorphicSerializer.getDescriptor(), json);
        JsonElement currentObject = currentObject();
        String serialName = abstractPolymorphicSerializer.getDescriptor().getSerialName();
        if (!(currentObject instanceof JsonObject)) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName;
            String renderTagStack = renderTagStack();
            String obj = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj), str2, renderTagStack, obj, null);
        }
        JsonObject jsonObject = (JsonObject) currentObject;
        JsonElement jsonElement = (JsonElement) jsonObject.get(classDiscriminator);
        try {
            if (jsonElement != null) {
                JsonPrimitive jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement);
                if (!(jsonPrimitive instanceof JsonNull)) {
                    str = jsonPrimitive.getContent();
                    KSerializer findPolymorphicSerializer = Cookie.Companion.findPolymorphicSerializer((AbstractPolymorphicSerializer) kSerializer, this, str);
                    json.getClass();
                    classDiscriminator.getClass();
                    return new JsonTreeDecoder(json, jsonObject, classDiscriminator, findPolymorphicSerializer.getDescriptor()).decodeSerializableValue(findPolymorphicSerializer);
                }
            }
            KSerializer findPolymorphicSerializer2 = Cookie.Companion.findPolymorphicSerializer((AbstractPolymorphicSerializer) kSerializer, this, str);
            json.getClass();
            classDiscriminator.getClass();
            return new JsonTreeDecoder(json, jsonObject, classDiscriminator, findPolymorphicSerializer2.getDescriptor()).decodeSerializableValue(findPolymorphicSerializer2);
        } catch (SerializationException e) {
            String message = e.getMessage();
            message.getClass();
            String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, jsonObject.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, message, null, null, obj2), message, null, obj2, null);
        }
        str = null;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        return decodeTaggedShort(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeTaggedShort(getTag(primitiveArrayDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return decodeTaggedString(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String decodeStringElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeTaggedString(getTag(serialDescriptor, i));
    }

    public final boolean decodeTaggedBoolean(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (!(currentElement instanceof JsonPrimitive)) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of boolean";
            String renderTagStack = renderTagStack(str);
            String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
            String content = jsonPrimitive.getContent();
            String[] strArr = StringOpsKt.ESCAPE_STRINGS;
            content.getClass();
            Boolean bool = content.equalsIgnoreCase("true") ? Boolean.TRUE : content.equalsIgnoreCase("false") ? Boolean.FALSE : null;
            if (bool != null) {
                return bool.booleanValue();
            }
            unparsedPrimitive(jsonPrimitive, "boolean", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive(jsonPrimitive, "boolean", str);
            throw null;
        }
    }

    public final byte decodeTaggedByte(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (currentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
            try {
                long parseLongImpl = JsonElementKt.parseLongImpl(jsonPrimitive);
                Byte valueOf = (-128 > parseLongImpl || parseLongImpl > 127) ? null : Byte.valueOf((byte) parseLongImpl);
                if (valueOf != null) {
                    return valueOf.byteValue();
                }
                unparsedPrimitive(jsonPrimitive, "byte", str);
                throw null;
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "byte", str);
                throw null;
            }
        }
        String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of byte";
        String renderTagStack = renderTagStack(str);
        String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
    }

    public final char decodeTaggedChar(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (!(currentElement instanceof JsonPrimitive)) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of char";
            String renderTagStack = renderTagStack(str);
            String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            String content = jsonPrimitive.getContent();
            content.getClass();
            int length = content.length();
            if (length == 0) {
                throw new NoSuchElementException("Char sequence is empty.");
            }
            if (length == 1) {
                return content.charAt(0);
            }
            throw new IllegalArgumentException("Char sequence has more than one element.");
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive(jsonPrimitive, "char", str);
            throw null;
        }
    }

    public final double decodeTaggedDouble(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (!z) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of double";
            String renderTagStack = renderTagStack(str);
            String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
            double parseDouble = Double.parseDouble(jsonPrimitive.getContent());
            JsonConfiguration jsonConfiguration = json.configuration;
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            String nonFiniteFpMessage = WriteModeKt.nonFiniteFpMessage(Double.valueOf(parseDouble), str);
            String obj3 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, nonFiniteFpMessage, null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", obj3), nonFiniteFpMessage, null, obj3, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive(jsonPrimitive, "double", str);
            throw null;
        }
    }

    public final float decodeTaggedFloat(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (!z) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of float";
            String renderTagStack = renderTagStack(str);
            String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
            float parseFloat = Float.parseFloat(jsonPrimitive.getContent());
            JsonConfiguration jsonConfiguration = json.configuration;
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            String nonFiniteFpMessage = WriteModeKt.nonFiniteFpMessage(Float.valueOf(parseFloat), str);
            String obj3 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, nonFiniteFpMessage, null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", obj3), nonFiniteFpMessage, null, obj3, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive(jsonPrimitive, "float", str);
            throw null;
        }
    }

    public final Decoder decodeTaggedInline(Object obj, SerialDescriptor serialDescriptor) {
        String str = (String) obj;
        str.getClass();
        serialDescriptor.getClass();
        if (!StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor)) {
            this.tagStack.add(str);
            return this;
        }
        JsonElement currentElement = currentElement(str);
        String serialName = serialDescriptor.getSerialName();
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (z) {
            return new JsonDecoderForUnsignedTypes(WriteModeKt.StringJsonLexer(json, ((JsonPrimitive) currentElement).getContent()), json);
        }
        String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of " + serialName;
        String renderTagStack = renderTagStack(str);
        String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
    }

    public final int decodeTaggedInt(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (currentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
            try {
                long parseLongImpl = JsonElementKt.parseLongImpl(jsonPrimitive);
                Integer valueOf = (-2147483648L > parseLongImpl || parseLongImpl > 2147483647L) ? null : Integer.valueOf((int) parseLongImpl);
                if (valueOf != null) {
                    return valueOf.intValue();
                }
                unparsedPrimitive(jsonPrimitive, "int", str);
                throw null;
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "int", str);
                throw null;
            }
        }
        String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of int";
        String renderTagStack = renderTagStack(str);
        String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
    }

    public final long decodeTaggedLong(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (currentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
            try {
                return JsonElementKt.parseLongImpl(jsonPrimitive);
            } catch (IllegalArgumentException unused) {
                this.unparsedPrimitive(jsonPrimitive, "long", str);
                throw null;
            }
        }
        String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of long";
        String renderTagStack = renderTagStack(str);
        String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
    }

    public final short decodeTaggedShort(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (currentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
            try {
                long parseLongImpl = JsonElementKt.parseLongImpl(jsonPrimitive);
                Short valueOf = (-32768 > parseLongImpl || parseLongImpl > 32767) ? null : Short.valueOf((short) parseLongImpl);
                if (valueOf != null) {
                    return valueOf.shortValue();
                }
                unparsedPrimitive(jsonPrimitive, "short", str);
                throw null;
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "short", str);
                throw null;
            }
        }
        String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of short";
        String renderTagStack = renderTagStack(str);
        String obj2 = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
    }

    public final String decodeTaggedString(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (!z) {
            String str2 = "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of string";
            String renderTagStack = renderTagStack(str);
            String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str2, renderTagStack, null, obj2), str2, renderTagStack, obj2, null);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        if (!(jsonPrimitive instanceof JsonLiteral)) {
            String m = Modifier.CC.m("Expected string value for a non-null key '", str, "', got null literal instead");
            String renderTagStack2 = renderTagStack(str);
            String obj3 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null;
            throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, m, renderTagStack2, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.", obj3), m, renderTagStack2, obj3, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
        }
        JsonLiteral jsonLiteral = (JsonLiteral) jsonPrimitive;
        if (jsonLiteral.isString) {
            return jsonLiteral.content;
        }
        JsonConfiguration jsonConfiguration = json.configuration;
        String m2 = Modifier.CC.m("String literal for value of key '", str, "' should be quoted");
        String renderTagStack3 = renderTagStack(str);
        String obj4 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, m2, renderTagStack3, "Use 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.", obj4), m2, renderTagStack3, obj4, "Use 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.");
    }

    public String elementName(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return serialDescriptor.getElementName(i);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.json.serializersModule;
    }

    public final String getTag(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        String elementName = elementName(serialDescriptor, i);
        elementName.getClass();
        return elementName;
    }

    public abstract JsonElement getValue();

    public final Object popTag() {
        ArrayList arrayList = this.tagStack;
        Object remove = arrayList.remove(Jsoup.getLastIndex(arrayList));
        this.flag = true;
        return remove;
    }

    public final String renderTagStack(String str) {
        str.getClass();
        return renderTagStack() + '.' + str;
    }

    public final void unparsedPrimitive(JsonPrimitive jsonPrimitive, String str, String str2) {
        String str3 = "Failed to parse literal '" + jsonPrimitive + "' as " + (StringsKt__StringsJVMKt.startsWith(str, CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, false) ? "an " : "a ").concat(str) + " value";
        String renderTagStack = renderTagStack(str2);
        String obj = this.json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str3, renderTagStack, null, obj), str3, renderTagStack, obj, null);
    }

    public final String renderTagStack() {
        ArrayList arrayList = this.tagStack;
        return arrayList.isEmpty() ? "$" : CollectionsKt.joinToString$default(arrayList, ".", "$.", null, null, 60);
    }
}
