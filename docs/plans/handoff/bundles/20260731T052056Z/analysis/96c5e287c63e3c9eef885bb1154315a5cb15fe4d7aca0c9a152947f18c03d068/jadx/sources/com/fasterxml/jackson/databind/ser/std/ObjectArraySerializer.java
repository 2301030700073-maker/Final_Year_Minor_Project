package com.fasterxml.jackson.databind.ser.std;

import coil3.svg.internal.AndroidSvg;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.type.TypeBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ObjectArraySerializer extends ArraySerializerBase {
    public UtilsKt _dynamicSerializers;
    public final JsonSerializer _elementSerializer;
    public final TypeBase _elementType;
    public final boolean _staticTyping;
    public final TypeSerializer _valueTypeSerializer;

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, Boolean bool) {
        super(objectArraySerializer, beanProperty, bool);
        this._elementType = objectArraySerializer._elementType;
        this._valueTypeSerializer = typeSerializer;
        this._staticTyping = objectArraySerializer._staticTyping;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._elementSerializer = jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new ObjectArraySerializer(this, beanProperty, this._valueTypeSerializer, this._elementSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new ObjectArraySerializer(this._elementType, this._staticTyping, typeSerializer, this._elementSerializer);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r9, com.fasterxml.jackson.databind.BeanProperty r10) {
        /*
            r8 = this;
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r8._valueTypeSerializer
            if (r0 == 0) goto La
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r1 = r0.forProperty(r10)
            r5 = r1
            goto Lb
        La:
            r5 = r0
        Lb:
            r1 = 0
            if (r10 == 0) goto L25
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r10.getMember()
            com.fasterxml.jackson.databind.SerializationConfig r3 = r9._config
            com.fasterxml.jackson.databind.PropertyNamingStrategy r3 = r3.getAnnotationIntrospector()
            if (r2 == 0) goto L25
            java.lang.Object r3 = r3.findContentSerializer(r2)
            if (r3 == 0) goto L25
            com.fasterxml.jackson.databind.JsonSerializer r2 = r9.serializerInstance(r2, r3)
            goto L26
        L25:
            r2 = r1
        L26:
            java.lang.Class r3 = r8._handledType
            com.fasterxml.jackson.annotation.JsonFormat$Value r3 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r9, r10, r3)
            if (r3 == 0) goto L34
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r1 = r3.getFeature(r1)
        L34:
            r7 = r1
            com.fasterxml.jackson.databind.JsonSerializer r1 = r8._elementSerializer
            if (r2 != 0) goto L3a
            r2 = r1
        L3a:
            com.fasterxml.jackson.databind.JsonSerializer r2 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findContextualConvertingSerializer(r9, r10, r2)
            if (r2 != 0) goto L52
            com.fasterxml.jackson.databind.type.TypeBase r3 = r8._elementType
            if (r3 == 0) goto L52
            boolean r4 = r8._staticTyping
            if (r4 == 0) goto L52
            boolean r4 = r3.isJavaLangObject()
            if (r4 != 0) goto L52
            com.fasterxml.jackson.databind.JsonSerializer r2 = r9.findContentValueSerializer(r3, r10)
        L52:
            r6 = r2
            com.fasterxml.jackson.databind.BeanProperty r9 = r8._property
            if (r9 != r10) goto L64
            if (r6 != r1) goto L64
            if (r0 != r5) goto L64
            java.lang.Boolean r9 = r8._unwrapSingle
            boolean r9 = j$.util.Objects.equals(r9, r7)
            if (r9 == 0) goto L64
            return r8
        L64:
            com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer r2 = new com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer
            r3 = r8
            r4 = r10
            r2.<init>(r3, r4, r5, r6, r7)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return ((Object[]) obj).length == 0;
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
            java.lang.Object[] r4 = (java.lang.Object[]) r4
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer.serialize(java.lang.Object, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public final void serializeContents(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Object obj;
        Object obj2;
        UtilsKt newWith;
        TypeBase typeBase = this._elementType;
        int length = objArr.length;
        if (length == 0) {
            return;
        }
        int i = 0;
        JsonSerializer jsonSerializer = this._elementSerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        if (jsonSerializer != null) {
            int length2 = objArr.length;
            Object obj3 = null;
            while (i < length2) {
                try {
                    obj3 = objArr[i];
                    if (obj3 == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else if (typeSerializer == null) {
                        jsonSerializer.serialize(obj3, jsonGenerator, serializerProvider);
                    } else {
                        jsonSerializer.serializeWithType(obj3, jsonGenerator, serializerProvider, typeSerializer);
                    }
                    i++;
                } catch (Exception e) {
                    StdSerializer.wrapAndThrow(serializerProvider, e, obj3, i);
                    throw null;
                }
            }
            return;
        }
        BeanProperty beanProperty = this._property;
        if (typeSerializer != null) {
            int length3 = objArr.length;
            try {
                UtilsKt utilsKt = this._dynamicSerializers;
                obj2 = null;
                while (i < length3) {
                    try {
                        obj2 = objArr[i];
                        if (obj2 == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                        } else {
                            Class<?> cls = obj2.getClass();
                            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
                            if (serializerFor == null && utilsKt != (newWith = utilsKt.newWith(cls, (serializerFor = serializerProvider.findContentValueSerializer(cls, beanProperty))))) {
                                this._dynamicSerializers = newWith;
                            }
                            serializerFor.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                        }
                        i++;
                    } catch (Exception e2) {
                        e = e2;
                        StdSerializer.wrapAndThrow(serializerProvider, e, obj2, i);
                        throw null;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                obj2 = null;
            }
        } else {
            try {
                UtilsKt utilsKt2 = this._dynamicSerializers;
                obj = null;
                while (i < length) {
                    try {
                        obj = objArr[i];
                        if (obj == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                        } else {
                            Class<?> cls2 = obj.getClass();
                            JsonSerializer serializerFor2 = utilsKt2.serializerFor(cls2);
                            if (serializerFor2 == null) {
                                if (typeBase.hasGenericTypes()) {
                                    AndroidSvg findAndAddSecondarySerializer = utilsKt2.findAndAddSecondarySerializer(serializerProvider.constructSpecializedType(typeBase, cls2), serializerProvider, beanProperty);
                                    UtilsKt utilsKt3 = (UtilsKt) findAndAddSecondarySerializer.renderOptions;
                                    if (utilsKt2 != utilsKt3) {
                                        this._dynamicSerializers = utilsKt3;
                                    }
                                    serializerFor2 = (JsonSerializer) findAndAddSecondarySerializer.svg;
                                } else {
                                    serializerFor2 = serializerProvider.findContentValueSerializer(cls2, beanProperty);
                                    UtilsKt newWith2 = utilsKt2.newWith(cls2, serializerFor2);
                                    if (utilsKt2 != newWith2) {
                                        this._dynamicSerializers = newWith2;
                                    }
                                }
                            }
                            serializerFor2.serialize(obj, jsonGenerator, serializerProvider);
                        }
                        i++;
                    } catch (Exception e4) {
                        e = e4;
                        StdSerializer.wrapAndThrow(serializerProvider, e, obj, i);
                        throw null;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                obj = null;
            }
        }
    }

    public ObjectArraySerializer(TypeBase typeBase, boolean z, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        super(Object[].class);
        this._elementType = typeBase;
        this._staticTyping = z;
        this._valueTypeSerializer = typeSerializer;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._elementSerializer = jsonSerializer;
    }
}
