package com.fasterxml.jackson.databind.ser.impl;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnknownSerializer extends RawSerializer {
    public final void failForEmpty(SerializerProvider serializerProvider, Object obj) {
        String m = Animation.CC.m("No serializer found for class ", obj.getClass().getName(), " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)");
        Class cls = this._handledType;
        if (cls != null) {
            serializerProvider.getTypeFactory()._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS);
        }
        serializerProvider.reportBadDefinition(m);
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.RawSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        if (serializerProvider._config.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            failForEmpty(serializerProvider, obj);
            throw null;
        }
        super.serialize(obj, jsonGenerator, serializerProvider);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.RawSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        if (serializerProvider._config.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            failForEmpty(serializerProvider, obj);
            throw null;
        }
        super.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
    }
}
