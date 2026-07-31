package kotlinx.serialization.json.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
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
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerialModuleImpl;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractJsonTreeDecoder implements JsonDecoder, Decoder, CompositeDecoder {
    public final ProvidedValue configuration;
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
        serialDescriptor.getClass();
        JsonElement currentObject = currentObject();
        RangesKt kind = serialDescriptor.getKind();
        boolean areEqual = Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE$2);
        Json json = this.json;
        if (areEqual || (kind instanceof PolymorphicKind$OPEN)) {
            String serialName = serialDescriptor.getSerialName();
            if (currentObject instanceof JsonArray) {
                return new JsonTreeListDecoder(json, (JsonArray) currentObject);
            }
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonArray.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName, renderTagStack(), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null));
        }
        if (!Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE)) {
            String serialName2 = serialDescriptor.getSerialName();
            if (currentObject instanceof JsonObject) {
                return new JsonTreeDecoder(json, (JsonObject) currentObject, this.polymorphicDiscriminator, 8);
            }
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName2, renderTagStack(), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null));
        }
        SerialDescriptor carrierDescriptor = WriteModeKt.carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.serializersModule);
        RangesKt kind2 = carrierDescriptor.getKind();
        if (!(kind2 instanceof PrimitiveKind$INT) && !Intrinsics.areEqual(kind2, SerialKind$ENUM.INSTANCE)) {
            throw WriteModeKt.InvalidKeyKindException(carrierDescriptor);
        }
        String serialName3 = serialDescriptor.getSerialName();
        if (currentObject instanceof JsonObject) {
            return new JsonTreeMapDecoder(json, (JsonObject) currentObject);
        }
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName3, renderTagStack(), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null));
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
    public final boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeTaggedBoolean(getTag(serialDescriptor, i));
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
    public final int decodeEnum(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        String str = (String) popTag();
        str.getClass();
        JsonElement currentElement = currentElement(str);
        String serialName = serialDescriptor.getSerialName();
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (z) {
            return WriteModeKt.getJsonNameIndexOrThrow(serialDescriptor, json, ((JsonPrimitive) currentElement).getContent(), "");
        }
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of " + serialName, renderTagStack(str), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
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
    public final long decodeLongElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeTaggedLong(getTag(serialDescriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return !(currentObject() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        this.tagStack.add(getTag(serialDescriptor, i));
        Object decodeSerializableValue = (kSerializer.getDescriptor().isNullable() || decodeNotNullMark()) ? decodeSerializableValue(kSerializer) : null;
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
            return kSerializer.deserialize(this);
        }
        Json json = this.json;
        ProvidedValue providedValue = json.configuration;
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) kSerializer;
        String classDiscriminator = WriteModeKt.classDiscriminator(abstractPolymorphicSerializer.getDescriptor(), json);
        JsonElement currentObject = currentObject();
        String serialName = abstractPolymorphicSerializer.getDescriptor().getSerialName();
        if (!(currentObject instanceof JsonObject)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName, renderTagStack(), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null));
        }
        JsonObject jsonObject = (JsonObject) currentObject;
        JsonElement jsonElement = (JsonElement) jsonObject.get(classDiscriminator);
        try {
            if (jsonElement != null) {
                JsonPrimitive jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement);
                if (!(jsonPrimitive instanceof JsonNull)) {
                    str = jsonPrimitive.getContent();
                    return WriteModeKt.readPolymorphicJson(json, classDiscriminator, jsonObject, Options.Companion.findPolymorphicSerializer((AbstractPolymorphicSerializer) kSerializer, this, str));
                }
            }
            return WriteModeKt.readPolymorphicJson(json, classDiscriminator, jsonObject, Options.Companion.findPolymorphicSerializer((AbstractPolymorphicSerializer) kSerializer, this, str));
        } catch (SerializationException e) {
            String message = e.getMessage();
            message.getClass();
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, message, null, null, json.configuration.canOverride ? WriteModeKt.minify(-1, jsonObject.toString()).toString() : null));
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
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of boolean", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
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
        if (!(currentElement instanceof JsonPrimitive)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of byte", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
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

    public final char decodeTaggedChar(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (!(currentElement instanceof JsonPrimitive)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of char", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
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
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of double", renderTagStack(str), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
            double parseDouble = Double.parseDouble(jsonPrimitive.getContent());
            ProvidedValue providedValue = json.configuration;
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, WriteModeKt.nonFiniteFpMessage(Double.valueOf(parseDouble), str), null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null));
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
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of float", renderTagStack(str), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
            float parseFloat = Float.parseFloat(jsonPrimitive.getContent());
            ProvidedValue providedValue = json.configuration;
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, WriteModeKt.nonFiniteFpMessage(Float.valueOf(parseFloat), str), null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null));
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
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of " + serialName, renderTagStack(str), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
    }

    public final int decodeTaggedInt(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (!(currentElement instanceof JsonPrimitive)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of int", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
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
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of long", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
    }

    public final short decodeTaggedShort(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        if (!(currentElement instanceof JsonPrimitive)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of short", renderTagStack(str), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
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

    public final String decodeTaggedString(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement currentElement = currentElement(str);
        boolean z = currentElement instanceof JsonPrimitive;
        Json json = this.json;
        if (!z) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonPrimitive.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentElement.getClass()).getSimpleName() + " as the serialized body of string", renderTagStack(str), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentElement.toString()).toString() : null));
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) currentElement;
        if (!(jsonPrimitive instanceof JsonLiteral)) {
            throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, CameraDevices$CC.m("Expected string value for a non-null key '", str, "', got null literal instead"), renderTagStack(str), "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.", json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null));
        }
        JsonLiteral jsonLiteral = (JsonLiteral) jsonPrimitive;
        if (jsonLiteral.isString) {
            return jsonLiteral.content;
        }
        ProvidedValue providedValue = json.configuration;
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, CameraDevices$CC.m("String literal for value of key '", str, "' should be quoted"), renderTagStack(str), "Use 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.", json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null));
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

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public final SerialModuleImpl getSerializersModule() {
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
        Object remove = arrayList.remove(IntOffsetKt.getLastIndex(arrayList));
        this.flag = true;
        return remove;
    }

    public final String renderTagStack(String str) {
        str.getClass();
        return renderTagStack() + '.' + str;
    }

    public final void unparsedPrimitive(JsonPrimitive jsonPrimitive, String str, String str2) {
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Failed to parse literal '" + jsonPrimitive + "' as " + (StringsKt__StringsJVMKt.startsWith(str, "i", false) ? "an " : "a ").concat(str) + " value", renderTagStack(str2), null, this.json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject().toString()).toString() : null));
    }

    public final String renderTagStack() {
        ArrayList arrayList = this.tagStack;
        return arrayList.isEmpty() ? "$" : CollectionsKt.joinToString$default(arrayList, ".", "$.", null, null, 60);
    }
}
