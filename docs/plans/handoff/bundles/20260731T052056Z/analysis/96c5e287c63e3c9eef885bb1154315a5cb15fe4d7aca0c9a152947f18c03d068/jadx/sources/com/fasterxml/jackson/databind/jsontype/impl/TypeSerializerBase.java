package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeSerializerBase extends TypeSerializer {
    public final TypeIdResolverBase _idResolver;
    public final BeanProperty _property;

    public TypeSerializerBase(TypeIdResolverBase typeIdResolverBase, BeanProperty beanProperty) {
        this._idResolver = typeIdResolverBase;
        this._property = beanProperty;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public String getPropertyName() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public final WritableTypeId writeTypePrefix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) {
        if (writableTypeId.id == null) {
            Object obj = writableTypeId.forValue;
            Class cls = writableTypeId.forValueType;
            TypeIdResolverBase typeIdResolverBase = this._idResolver;
            writableTypeId.id = cls == null ? typeIdResolverBase.idFromValue(obj) : typeIdResolverBase.idFromValueAndType(obj, cls);
        }
        jsonGenerator.getClass();
        Object obj2 = writableTypeId.id;
        JsonToken jsonToken = writableTypeId.valueShape;
        String valueOf = obj2 instanceof String ? (String) obj2 : String.valueOf(obj2);
        writableTypeId.wrapperWritten = true;
        WritableTypeId.Inclusion inclusion = writableTypeId.include;
        JsonToken jsonToken2 = JsonToken.START_OBJECT;
        if (jsonToken != jsonToken2) {
            inclusion.getClass();
            if (inclusion == WritableTypeId.Inclusion.METADATA_PROPERTY || inclusion == WritableTypeId.Inclusion.PAYLOAD_PROPERTY) {
                inclusion = WritableTypeId.Inclusion.WRAPPER_ARRAY;
                writableTypeId.include = inclusion;
            }
        }
        int i = JsonGenerator.AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[inclusion.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                jsonGenerator.writeStartObject(writableTypeId.forValue);
                jsonGenerator.writeFieldName(writableTypeId.asProperty);
                jsonGenerator.writeString(valueOf);
                return writableTypeId;
            }
            if (i != 4) {
                jsonGenerator.writeStartArray();
                jsonGenerator.writeString(valueOf);
            } else {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeFieldName(valueOf);
            }
        }
        if (jsonToken == jsonToken2) {
            jsonGenerator.writeStartObject(writableTypeId.forValue);
            return writableTypeId;
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            jsonGenerator.writeStartArray();
        }
        return writableTypeId;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public final WritableTypeId writeTypeSuffix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) {
        jsonGenerator.getClass();
        JsonToken jsonToken = writableTypeId.valueShape;
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonGenerator.writeEndObject();
        } else if (jsonToken == JsonToken.START_ARRAY) {
            jsonGenerator.writeEndArray();
        }
        if (writableTypeId.wrapperWritten) {
            int i = JsonGenerator.AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[writableTypeId.include.ordinal()];
            if (i == 1) {
                Object obj = writableTypeId.id;
                String valueOf = obj instanceof String ? (String) obj : String.valueOf(obj);
                jsonGenerator.writeFieldName(writableTypeId.asProperty);
                jsonGenerator.writeString(valueOf);
            } else if (i != 2 && i != 3) {
                if (i != 5) {
                    jsonGenerator.writeEndObject();
                    return writableTypeId;
                }
                jsonGenerator.writeEndArray();
                return writableTypeId;
            }
        }
        return writableTypeId;
    }
}
