package com.fasterxml.jackson.databind.ser.impl;

import coil3.util.UtilsKt;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnwrappingBeanPropertyWriter extends BeanPropertyWriter {
    public final NameTransformer _nameTransformer;

    public UnwrappingBeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, NameTransformer nameTransformer) {
        super(beanPropertyWriter, beanPropertyWriter._name);
        this._nameTransformer = nameTransformer;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final JsonSerializer _findAndAddDynamic(UtilsKt utilsKt, Class cls, SerializerProvider serializerProvider) {
        TypeBase typeBase = this._nonTrivialBaseType;
        JsonSerializer findValueSerializer = typeBase != null ? serializerProvider.findValueSerializer(serializerProvider.constructSpecializedType(typeBase, cls), this) : serializerProvider.findValueSerializer(cls, this);
        boolean isUnwrappingSerializer = findValueSerializer.isUnwrappingSerializer();
        NameTransformer nameTransformer = this._nameTransformer;
        if (isUnwrappingSerializer && (findValueSerializer instanceof UnwrappingBeanSerializer)) {
            nameTransformer = new NameTransformer.Chained(nameTransformer, ((UnwrappingBeanSerializer) findValueSerializer)._nameTransformer);
        }
        JsonSerializer unwrappingSerializer = findValueSerializer.unwrappingSerializer(nameTransformer);
        this._dynamicSerializers = this._dynamicSerializers.newWith(cls, unwrappingSerializer);
        return unwrappingSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void assignSerializer(JsonSerializer jsonSerializer) {
        if (jsonSerializer != null) {
            boolean isUnwrappingSerializer = jsonSerializer.isUnwrappingSerializer();
            NameTransformer nameTransformer = this._nameTransformer;
            if (isUnwrappingSerializer && (jsonSerializer instanceof UnwrappingBeanSerializer)) {
                nameTransformer = new NameTransformer.Chained(nameTransformer, ((UnwrappingBeanSerializer) jsonSerializer)._nameTransformer);
            }
            jsonSerializer = jsonSerializer.unwrappingSerializer(nameTransformer);
        }
        super.assignSerializer(jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final BeanPropertyWriter rename(NameTransformer nameTransformer) {
        return new UnwrappingBeanPropertyWriter(this, new NameTransformer.Chained(nameTransformer, this._nameTransformer), new SerializedString(nameTransformer.transform(this._name._value)));
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Method method = this._accessorMethod;
        Object invoke = method == null ? this._field.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            return;
        }
        JsonSerializer jsonSerializer = this._serializer;
        if (jsonSerializer == null) {
            Class<?> cls = invoke.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            jsonSerializer = serializerFor == null ? _findAndAddDynamic(utilsKt, cls, serializerProvider) : serializerFor;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                if (jsonSerializer.isEmpty(serializerProvider, invoke)) {
                    return;
                }
            } else if (obj2.equals(invoke)) {
                return;
            }
        }
        if (invoke == obj && _handleSelfReference(jsonGenerator, serializerProvider, jsonSerializer)) {
            return;
        }
        if (!jsonSerializer.isUnwrappingSerializer()) {
            jsonGenerator.writeFieldName(this._name);
        }
        TypeSerializer typeSerializer = this._typeSerializer;
        if (typeSerializer == null) {
            jsonSerializer.serialize(invoke, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
        }
    }

    public UnwrappingBeanPropertyWriter(UnwrappingBeanPropertyWriter unwrappingBeanPropertyWriter, NameTransformer.Chained chained, SerializedString serializedString) {
        super(unwrappingBeanPropertyWriter, serializedString);
        this._nameTransformer = chained;
    }
}
