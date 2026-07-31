package com.fasterxml.jackson.databind.ser.impl;

import coil3.util.UtilsKt;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AttributePropertyWriter extends BeanPropertyWriter {
    public final String _attrName;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AttributePropertyWriter(java.lang.String r12, com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition r13, com.fasterxml.jackson.databind.util.Annotations r14, com.fasterxml.jackson.databind.type.TypeBase r15) {
        /*
            r11 = this;
            com.fasterxml.jackson.annotation.JsonInclude$Value r0 = r13._inclusion
            com.fasterxml.jackson.databind.introspect.VirtualAnnotatedMember r2 = r13._member
            r3 = 0
            if (r0 != 0) goto L9
        L7:
            r8 = r3
            goto L15
        L9:
            com.fasterxml.jackson.annotation.JsonInclude$Include r4 = r0._valueInclusion
            com.fasterxml.jackson.annotation.JsonInclude$Include r5 = com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS
            if (r4 == r5) goto L7
            com.fasterxml.jackson.annotation.JsonInclude$Include r5 = com.fasterxml.jackson.annotation.JsonInclude.Include.USE_DEFAULTS
            if (r4 == r5) goto L7
            r3 = 1
            goto L7
        L15:
            if (r0 != 0) goto L1b
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
        L19:
            r9 = r0
            goto L2f
        L1b:
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = r0._valueInclusion
            com.fasterxml.jackson.annotation.JsonInclude$Include r3 = com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS
            if (r0 == r3) goto L2d
            com.fasterxml.jackson.annotation.JsonInclude$Include r3 = com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL
            if (r0 == r3) goto L2d
            com.fasterxml.jackson.annotation.JsonInclude$Include r3 = com.fasterxml.jackson.annotation.JsonInclude.Include.USE_DEFAULTS
            if (r0 != r3) goto L2a
            goto L2d
        L2a:
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY
            goto L19
        L2d:
            r0 = 0
            goto L19
        L2f:
            r5 = 0
            r6 = 0
            r7 = 0
            r10 = 0
            r0 = r11
            r1 = r13
            r3 = r14
            r4 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r11._attrName = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter.<init>(java.lang.String, com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition, com.fasterxml.jackson.databind.util.Annotations, com.fasterxml.jackson.databind.type.TypeBase):void");
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Object attribute = serializerProvider.getAttribute(this._attrName);
        if (attribute == null) {
            JsonSerializer jsonSerializer = this._nullSerializer;
            if (jsonSerializer != null) {
                jsonSerializer.serialize(null, jsonGenerator, serializerProvider);
                return;
            } else {
                jsonGenerator.writeNull();
                return;
            }
        }
        JsonSerializer jsonSerializer2 = this._serializer;
        if (jsonSerializer2 == null) {
            Class<?> cls = attribute.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            jsonSerializer2 = serializerFor == null ? _findAndAddDynamic(utilsKt, cls, serializerProvider) : serializerFor;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                if (jsonSerializer2.isEmpty(serializerProvider, attribute)) {
                    serializeAsPlaceholder(jsonGenerator, serializerProvider);
                    return;
                }
            } else if (obj2.equals(attribute)) {
                serializeAsPlaceholder(jsonGenerator, serializerProvider);
                return;
            }
        }
        if (attribute == obj && _handleSelfReference(jsonGenerator, serializerProvider, jsonSerializer2)) {
            return;
        }
        TypeSerializer typeSerializer = this._typeSerializer;
        if (typeSerializer == null) {
            jsonSerializer2.serialize(attribute, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer2.serializeWithType(attribute, jsonGenerator, serializerProvider, typeSerializer);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Object attribute = serializerProvider.getAttribute(this._attrName);
        SerializedString serializedString = this._name;
        if (attribute == null) {
            if (this._nullSerializer != null) {
                jsonGenerator.writeFieldName(serializedString);
                this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
                return;
            }
            return;
        }
        JsonSerializer jsonSerializer = this._serializer;
        if (jsonSerializer == null) {
            Class<?> cls = attribute.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            jsonSerializer = serializerFor == null ? _findAndAddDynamic(utilsKt, cls, serializerProvider) : serializerFor;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                if (jsonSerializer.isEmpty(serializerProvider, attribute)) {
                    return;
                }
            } else if (obj2.equals(attribute)) {
                return;
            }
        }
        if (attribute == obj && _handleSelfReference(jsonGenerator, serializerProvider, jsonSerializer)) {
            return;
        }
        jsonGenerator.writeFieldName(serializedString);
        TypeSerializer typeSerializer = this._typeSerializer;
        if (typeSerializer == null) {
            jsonSerializer.serialize(attribute, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer.serializeWithType(attribute, jsonGenerator, serializerProvider, typeSerializer);
        }
    }
}
