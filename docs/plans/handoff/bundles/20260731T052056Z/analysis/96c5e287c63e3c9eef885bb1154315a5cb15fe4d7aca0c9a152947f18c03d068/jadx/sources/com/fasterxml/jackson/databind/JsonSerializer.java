package com.fasterxml.jackson.databind;

import androidx.compose.ui.Modifier;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.NameTransformer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonSerializer {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class None extends JsonSerializer {
    }

    public abstract Class handledType();

    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return false;
    }

    public boolean isUnwrappingSerializer() {
        return this instanceof UnwrappingBeanSerializer;
    }

    public abstract void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider);

    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        Class<?> handledType = handledType();
        if (handledType == null) {
            handledType = obj.getClass();
        }
        String m = Modifier.CC.m("Type id handling not implemented for type ", handledType.getName(), " (by serializer of type ", getClass().getName(), ")");
        serializerProvider.getTypeFactory()._fromAny(null, handledType, TypeFactory.EMPTY_BINDINGS);
        serializerProvider.reportBadDefinition(m);
        throw null;
    }

    public boolean usesObjectId() {
        return false;
    }

    public JsonSerializer unwrappingSerializer(NameTransformer nameTransformer) {
        return this;
    }
}
