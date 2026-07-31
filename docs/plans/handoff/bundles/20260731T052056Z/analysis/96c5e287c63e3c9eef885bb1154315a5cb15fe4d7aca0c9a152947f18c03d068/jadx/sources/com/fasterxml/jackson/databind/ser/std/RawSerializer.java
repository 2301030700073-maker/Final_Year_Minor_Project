package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class RawSerializer extends StdSerializer {
    public static final RawSerializer instance = new RawSerializer(1);
    public static final RawSerializer instance$1 = new RawSerializer(2);
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawSerializer(int i) {
        super(Object.class);
        this.$r8$classId = i;
        switch (i) {
            case 2:
                super(JsonSerializable.class);
                break;
            case 3:
                super(byte[].class);
                break;
            case 4:
                super(char[].class);
                break;
            case 5:
                super(0, String.class);
                break;
            default:
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        switch (this.$r8$classId) {
            case 2:
                return false;
            case 3:
                return ((byte[]) obj).length == 0;
            case 4:
                return ((char[]) obj).length == 0;
            case 5:
            default:
                return super.isEmpty(serializerProvider, obj);
            case 6:
                return true;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        switch (this.$r8$classId) {
            case 0:
                String obj2 = obj.toString();
                GeneratorBase generatorBase = (GeneratorBase) jsonGenerator;
                generatorBase._verifyValueWrite("write raw value");
                generatorBase.writeRaw(obj2);
                break;
            case 1:
                jsonGenerator.writeNull();
                break;
            case 2:
                jsonGenerator.writeString(((TypeBase) ((JsonSerializable) obj)).buildCanonicalName());
                break;
            case 3:
                byte[] bArr = (byte[]) obj;
                jsonGenerator.writeBinary(serializerProvider._config._base._defaultBase64, bArr, 0, bArr.length);
                break;
            case 4:
                char[] cArr = (char[]) obj;
                if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                    int length = cArr.length;
                    jsonGenerator.writeStartArray$1(cArr);
                    int length2 = cArr.length;
                    for (int i = 0; i < length2; i++) {
                        jsonGenerator.writeString(cArr, i, 1);
                    }
                    jsonGenerator.writeEndArray();
                    break;
                } else {
                    jsonGenerator.writeString(cArr, 0, cArr.length);
                    break;
                }
            case 5:
                jsonGenerator.writeFieldName((String) obj);
                break;
            default:
                jsonGenerator.writeStartObject();
                jsonGenerator.setCurrentValue(obj);
                jsonGenerator.writeEndObject();
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        WritableTypeId writeTypePrefix;
        switch (this.$r8$classId) {
            case 0:
                WritableTypeId writeTypePrefix2 = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_EMBEDDED_OBJECT));
                serialize(obj, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix2);
                break;
            case 1:
                jsonGenerator.writeNull();
                break;
            case 2:
                TypeBase typeBase = (TypeBase) ((JsonSerializable) obj);
                typeBase.getClass();
                WritableTypeId writableTypeId = new WritableTypeId(typeBase, JsonToken.VALUE_STRING);
                typeSerializer.writeTypePrefix(jsonGenerator, writableTypeId);
                jsonGenerator.writeString(typeBase.buildCanonicalName());
                typeSerializer.writeTypeSuffix(jsonGenerator, writableTypeId);
                break;
            case 3:
                byte[] bArr = (byte[]) obj;
                WritableTypeId writeTypePrefix3 = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(bArr, JsonToken.VALUE_EMBEDDED_OBJECT));
                jsonGenerator.writeBinary(serializerProvider._config._base._defaultBase64, bArr, 0, bArr.length);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix3);
                break;
            case 4:
                char[] cArr = (char[]) obj;
                if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                    writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(cArr, JsonToken.START_ARRAY));
                    int length = cArr.length;
                    for (int i = 0; i < length; i++) {
                        jsonGenerator.writeString(cArr, i, 1);
                    }
                } else {
                    writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(cArr, JsonToken.VALUE_STRING));
                    jsonGenerator.writeString(cArr, 0, cArr.length);
                }
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                break;
            case 5:
            default:
                super.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                break;
            case 6:
                typeSerializer.writeTypeSuffix(jsonGenerator, typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.START_OBJECT)));
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RawSerializer(TypeBase typeBase) {
        super(typeBase);
        this.$r8$classId = 6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RawSerializer(int i, int i2, Class cls) {
        super(i, cls);
        this.$r8$classId = i2;
    }
}
