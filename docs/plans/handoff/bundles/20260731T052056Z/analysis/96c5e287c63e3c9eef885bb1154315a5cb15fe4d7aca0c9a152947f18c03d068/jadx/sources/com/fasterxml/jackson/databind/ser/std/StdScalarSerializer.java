package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StdScalarSerializer extends StdSerializer {
    public final /* synthetic */ int $r8$classId = 2;

    public /* synthetic */ StdScalarSerializer(int i, Class cls) {
        super(i, cls);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        switch (this.$r8$classId) {
            case 2:
                return valueToString(obj).isEmpty();
            default:
                return super.isEmpty(serializerProvider, obj);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        jsonGenerator.writeString(valueToString(obj));
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 0:
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_STRING));
                serialize(obj, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                break;
            case 1:
            default:
                super.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                break;
            case 2:
                WritableTypeId writeTypePrefix2 = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_STRING));
                serialize(obj, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix2);
                break;
        }
    }

    public abstract String valueToString(Object obj);

    public /* synthetic */ StdScalarSerializer(Class cls) {
        super(cls);
    }
}
