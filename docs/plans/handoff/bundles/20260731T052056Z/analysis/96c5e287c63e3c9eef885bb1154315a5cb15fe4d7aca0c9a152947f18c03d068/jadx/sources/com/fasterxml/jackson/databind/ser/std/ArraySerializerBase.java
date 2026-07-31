package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ArraySerializerBase extends ContainerSerializer implements ContextualSerializer {
    public final BeanProperty _property;
    public final Boolean _unwrapSingle;

    public ArraySerializerBase(ArraySerializerBase arraySerializerBase, BeanProperty beanProperty, Boolean bool) {
        super(0, arraySerializerBase._handledType);
        this._property = beanProperty;
        this._unwrapSingle = bool;
    }

    public final boolean _shouldUnwrapSingle(SerializerProvider serializerProvider) {
        Boolean bool = this._unwrapSingle;
        if (bool != null) {
            return bool.booleanValue();
        }
        return serializerProvider._config.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
    }

    public abstract JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool);

    public JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        JsonFormat.Value findFormatOverrides;
        if (beanProperty == null || (findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, this._handledType)) == null) {
            return this;
        }
        Boolean feature = findFormatOverrides.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
        return !Objects.equals(feature, this._unwrapSingle) ? _withResolved(beanProperty, feature) : this;
    }

    public abstract void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider);

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.START_ARRAY));
        jsonGenerator.setCurrentValue(obj);
        serializeContents(obj, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    public ArraySerializerBase(Class cls) {
        super(cls);
        this._property = null;
        this._unwrapSingle = null;
    }
}
