package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringArraySerializer extends ArraySerializerBase {
    public static final StringArraySerializer instance;
    public final JsonSerializer _elementSerializer;

    static {
        TypeFactory.instance.getClass();
        TypeFactory.uncheckedSimpleType(String.class);
        instance = new StringArraySerializer();
    }

    public StringArraySerializer() {
        super(String[].class);
        this._elementSerializer = null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new StringArraySerializer(this, beanProperty, this._elementSerializer, bool);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002a  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r5, com.fasterxml.jackson.databind.BeanProperty r6) {
        /*
            r4 = this;
            r0 = 0
            if (r6 == 0) goto L1a
            com.fasterxml.jackson.databind.SerializationConfig r1 = r5._config
            com.fasterxml.jackson.databind.PropertyNamingStrategy r1 = r1.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r6.getMember()
            if (r2 == 0) goto L1a
            java.lang.Object r1 = r1.findContentSerializer(r2)
            if (r1 == 0) goto L1a
            com.fasterxml.jackson.databind.JsonSerializer r1 = r5.serializerInstance(r2, r1)
            goto L1b
        L1a:
            r1 = r0
        L1b:
            com.fasterxml.jackson.annotation.JsonFormat$Feature r2 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Class<java.lang.String[]> r3 = java.lang.String[].class
            com.fasterxml.jackson.annotation.JsonFormat$Value r3 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r5, r6, r3)
            if (r3 == 0) goto L2a
            java.lang.Boolean r2 = r3.getFeature(r2)
            goto L2b
        L2a:
            r2 = r0
        L2b:
            com.fasterxml.jackson.databind.JsonSerializer r3 = r4._elementSerializer
            if (r1 != 0) goto L30
            r1 = r3
        L30:
            com.fasterxml.jackson.databind.JsonSerializer r1 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findContextualConvertingSerializer(r5, r6, r1)
            if (r1 != 0) goto L3c
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            com.fasterxml.jackson.databind.JsonSerializer r1 = r5.findContentValueSerializer(r1, r6)
        L3c:
            boolean r5 = com.fasterxml.jackson.databind.util.ClassUtil.isJacksonStdImpl(r1)
            if (r5 == 0) goto L43
            goto L44
        L43:
            r0 = r1
        L44:
            if (r0 != r3) goto L4f
            java.lang.Boolean r5 = r4._unwrapSingle
            boolean r5 = j$.util.Objects.equals(r2, r5)
            if (r5 == 0) goto L4f
            return r4
        L4f:
            com.fasterxml.jackson.databind.ser.impl.StringArraySerializer r5 = new com.fasterxml.jackson.databind.ser.impl.StringArraySerializer
            r5.<init>(r4, r6, r0, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringArraySerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return ((String[]) obj).length == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
    
        if (r0 == java.lang.Boolean.TRUE) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r6._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
    
        serializeContents(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        return;
     */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(java.lang.Object r4, com.fasterxml.jackson.core.JsonGenerator r5, com.fasterxml.jackson.databind.SerializerProvider r6) {
        /*
            r3 = this;
            java.lang.String[] r4 = (java.lang.String[]) r4
            int r0 = r4.length
            r1 = 1
            if (r0 != r1) goto L1c
            java.lang.Boolean r0 = r3._unwrapSingle
            if (r0 != 0) goto L14
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r2 = r6._config
            boolean r1 = r2.isEnabled(r1)
            if (r1 != 0) goto L18
        L14:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L1c
        L18:
            r3.serializeContents(r4, r5, r6)
            return
        L1c:
            r5.writeStartArray$1(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringArraySerializer.serialize(java.lang.Object, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public final void serializeContents(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int length = strArr.length;
        if (length == 0) {
            return;
        }
        int i = 0;
        JsonSerializer jsonSerializer = this._elementSerializer;
        if (jsonSerializer == null) {
            while (i < length) {
                String str = strArr[i];
                if (str == null) {
                    jsonGenerator.writeNull();
                } else {
                    jsonGenerator.writeString(str);
                }
                i++;
            }
            return;
        }
        int length2 = strArr.length;
        while (i < length2) {
            String str2 = strArr[i];
            if (str2 == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                jsonSerializer.serialize(str2, jsonGenerator, serializerProvider);
            }
            i++;
        }
    }

    public StringArraySerializer(StringArraySerializer stringArraySerializer, BeanProperty beanProperty, JsonSerializer jsonSerializer, Boolean bool) {
        super(stringArraySerializer, beanProperty, bool);
        this._elementSerializer = jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return this;
    }
}
