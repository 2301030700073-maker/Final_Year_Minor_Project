package com.fasterxml.jackson.databind.ser.std;

import coil3.svg.internal.AndroidSvg;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumSetSerializer extends ContainerSerializer implements ContextualSerializer {
    public final /* synthetic */ int $r8$classId;
    public UtilsKt _dynamicSerializers;
    public final JsonSerializer _elementSerializer;
    public final TypeBase _elementType;
    public final BeanProperty _property;
    public final boolean _staticTyping;
    public final Boolean _unwrapSingle;
    public final TypeSerializer _valueTypeSerializer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumSetSerializer(Class cls, TypeBase typeBase, boolean z, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        super(0, cls);
        boolean z2 = false;
        this._elementType = typeBase;
        if (z || (typeBase != null && Modifier.isFinal(typeBase._class.getModifiers()))) {
            z2 = true;
        }
        this._staticTyping = z2;
        this._valueTypeSerializer = typeSerializer;
        this._property = null;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._unwrapSingle = null;
    }

    public final JsonSerializer _findAndAddDynamic(UtilsKt utilsKt, TypeBase typeBase, SerializerProvider serializerProvider) {
        AndroidSvg findAndAddSecondarySerializer = utilsKt.findAndAddSecondarySerializer(typeBase, serializerProvider, this._property);
        UtilsKt utilsKt2 = (UtilsKt) findAndAddSecondarySerializer.renderOptions;
        if (utilsKt != utilsKt2) {
            this._dynamicSerializers = utilsKt2;
        }
        return (JsonSerializer) findAndAddSecondarySerializer.svg;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 0:
                return this;
            case 1:
                return new EnumSetSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle, 1);
            case 2:
                return new EnumSetSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle, 2);
            case 3:
                return new EnumSetSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle, 3);
            default:
                return new EnumSetSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle, 4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008e  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r10, com.fasterxml.jackson.databind.BeanProperty r11) {
        /*
            r9 = this;
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r9._valueTypeSerializer
            if (r0 == 0) goto La
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r1 = r0.forProperty(r11)
            r5 = r1
            goto Lb
        La:
            r5 = r0
        Lb:
            r1 = 0
            if (r11 == 0) goto L25
            com.fasterxml.jackson.databind.SerializationConfig r2 = r10._config
            com.fasterxml.jackson.databind.PropertyNamingStrategy r2 = r2.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r3 = r11.getMember()
            if (r3 == 0) goto L25
            java.lang.Object r2 = r2.findContentSerializer(r3)
            if (r2 == 0) goto L25
            com.fasterxml.jackson.databind.JsonSerializer r2 = r10.serializerInstance(r3, r2)
            goto L26
        L25:
            r2 = r1
        L26:
            java.lang.Class r3 = r9._handledType
            com.fasterxml.jackson.annotation.JsonFormat$Value r3 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r10, r11, r3)
            if (r3 == 0) goto L34
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r1 = r3.getFeature(r1)
        L34:
            r7 = r1
            com.fasterxml.jackson.databind.JsonSerializer r1 = r9._elementSerializer
            if (r2 != 0) goto L3a
            r2 = r1
        L3a:
            com.fasterxml.jackson.databind.JsonSerializer r2 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findContextualConvertingSerializer(r10, r11, r2)
            if (r2 != 0) goto L52
            com.fasterxml.jackson.databind.type.TypeBase r3 = r9._elementType
            if (r3 == 0) goto L52
            boolean r4 = r9._staticTyping
            if (r4 == 0) goto L52
            boolean r4 = r3.isJavaLangObject()
            if (r4 != 0) goto L52
            com.fasterxml.jackson.databind.JsonSerializer r2 = r10.findContentValueSerializer(r3, r11)
        L52:
            r6 = r2
            if (r6 != r1) goto L65
            com.fasterxml.jackson.databind.BeanProperty r10 = r9._property
            if (r11 != r10) goto L65
            if (r0 != r5) goto L65
            java.lang.Boolean r10 = r9._unwrapSingle
            boolean r10 = j$.util.Objects.equals(r10, r7)
            if (r10 != 0) goto L64
            goto L65
        L64:
            return r9
        L65:
            int r10 = r9.$r8$classId
            switch(r10) {
                case 0: goto L8e;
                case 1: goto L85;
                case 2: goto L7c;
                case 3: goto L73;
                default: goto L6a;
            }
        L6a:
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r2 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            r8 = 4
            r3 = r9
            r4 = r11
            r2.<init>(r3, r4, r5, r6, r7, r8)
            goto L96
        L73:
            r3 = r9
            r4 = r11
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r2 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            r8 = 3
            r2.<init>(r3, r4, r5, r6, r7, r8)
            goto L96
        L7c:
            r3 = r9
            r4 = r11
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r2 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            r8 = 2
            r2.<init>(r3, r4, r5, r6, r7, r8)
            goto L96
        L85:
            r3 = r9
            r4 = r11
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r2 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            r8 = 1
            r2.<init>(r3, r4, r5, r6, r7, r8)
            goto L96
        L8e:
            r3 = r9
            r4 = r11
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r2 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            r8 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8)
        L96:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.EnumSetSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((EnumSet) obj).isEmpty();
            case 1:
                return ((List) obj).isEmpty();
            case 2:
                return !((Iterator) obj).hasNext();
            case 3:
                return ((Collection) obj).isEmpty();
            default:
                return !((Iterable) obj).iterator().hasNext();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
    
        if (r0.hasNext() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        serializeContents(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        r5.writeStartArray(r4);
        serializeContents(r4, r5, r6);
        r5.writeEndArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0018, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        if (r6._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        serializeContents(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0081, code lost:
    
        if (r6._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0087, code lost:
    
        serializeContents(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0085, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a7, code lost:
    
        if (r6._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ad, code lost:
    
        serializeContents(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ab, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r6._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        if (r4 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        r0 = r4.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r0.hasNext() == false) goto L16;
     */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(java.lang.Object r4, com.fasterxml.jackson.core.JsonGenerator r5, com.fasterxml.jackson.databind.SerializerProvider r6) {
        /*
            r3 = this;
            int r0 = r3.$r8$classId
            r1 = 1
            java.lang.Boolean r2 = r3._unwrapSingle
            switch(r0) {
                case 0: goto L95;
                case 1: goto L6f;
                case 2: goto L63;
                case 3: goto L3d;
                default: goto L8;
            }
        L8:
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            if (r2 != 0) goto L16
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r1 = r6._config
            boolean r0 = r1.isEnabled(r0)
            if (r0 != 0) goto L1a
        L16:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L33
        L1a:
            if (r4 == 0) goto L33
            java.util.Iterator r0 = r4.iterator()
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L33
            r0.next()
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L33
            r3.serializeContents(r4, r5, r6)
            goto L3c
        L33:
            r5.writeStartArray(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
        L3c:
            return
        L3d:
            java.util.Collection r4 = (java.util.Collection) r4
            int r0 = r4.size()
            if (r0 != r1) goto L59
            if (r2 != 0) goto L51
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r1 = r6._config
            boolean r0 = r1.isEnabled(r0)
            if (r0 != 0) goto L55
        L51:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L59
        L55:
            r3.serializeContents(r4, r5, r6)
            goto L62
        L59:
            r5.writeStartArray$1(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
        L62:
            return
        L63:
            java.util.Iterator r4 = (java.util.Iterator) r4
            r5.writeStartArray(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
            return
        L6f:
            java.util.List r4 = (java.util.List) r4
            int r0 = r4.size()
            if (r0 != r1) goto L8b
            if (r2 != 0) goto L83
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r1 = r6._config
            boolean r0 = r1.isEnabled(r0)
            if (r0 != 0) goto L87
        L83:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L8b
        L87:
            r3.serializeContents(r4, r5, r6)
            goto L94
        L8b:
            r5.writeStartArray$1(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
        L94:
            return
        L95:
            java.util.EnumSet r4 = (java.util.EnumSet) r4
            int r0 = r4.size()
            if (r0 != r1) goto Lb1
            if (r2 != 0) goto La9
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r1 = r6._config
            boolean r0 = r1.isEnabled(r0)
            if (r0 != 0) goto Lad
        La9:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto Lb1
        Lad:
            r3.serializeContents(r4, r5, r6)
            goto Lba
        Lb1:
            r5.writeStartArray$1(r4)
            r3.serializeContents(r4, r5, r6)
            r5.writeEndArray()
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.EnumSetSerializer.serialize(java.lang.Object, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    public void serializeContents(List list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int i = 0;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        JsonSerializer jsonSerializer = this._elementSerializer;
        if (jsonSerializer != null) {
            int size = list.size();
            if (size == 0) {
                return;
            }
            while (i < size) {
                Object obj = list.get(i);
                if (obj == null) {
                    try {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } catch (Exception e) {
                        StdSerializer.wrapAndThrow(serializerProvider, e, list, i);
                        throw null;
                    }
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(obj, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                }
                i++;
            }
            return;
        }
        BeanProperty beanProperty = this._property;
        TypeBase typeBase = this._elementType;
        if (typeSerializer != null) {
            int size2 = list.size();
            if (size2 == 0) {
                return;
            }
            try {
                UtilsKt utilsKt = this._dynamicSerializers;
                while (i < size2) {
                    Object obj2 = list.get(i);
                    if (obj2 == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = obj2.getClass();
                        JsonSerializer serializerFor = utilsKt.serializerFor(cls);
                        if (serializerFor == null) {
                            if (typeBase.hasGenericTypes()) {
                                serializerFor = _findAndAddDynamic(utilsKt, serializerProvider.constructSpecializedType(typeBase, cls), serializerProvider);
                            } else {
                                serializerFor = serializerProvider.findContentValueSerializer(cls, beanProperty);
                                UtilsKt newWith = utilsKt.newWith(cls, serializerFor);
                                if (utilsKt != newWith) {
                                    this._dynamicSerializers = newWith;
                                }
                            }
                            utilsKt = this._dynamicSerializers;
                        }
                        serializerFor.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                    }
                    i++;
                }
                return;
            } catch (Exception e2) {
                StdSerializer.wrapAndThrow(serializerProvider, e2, list, i);
                throw null;
            }
        }
        int size3 = list.size();
        if (size3 == 0) {
            return;
        }
        try {
            UtilsKt utilsKt2 = this._dynamicSerializers;
            while (i < size3) {
                Object obj3 = list.get(i);
                if (obj3 == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    Class<?> cls2 = obj3.getClass();
                    JsonSerializer serializerFor2 = utilsKt2.serializerFor(cls2);
                    if (serializerFor2 == null) {
                        if (typeBase.hasGenericTypes()) {
                            serializerFor2 = _findAndAddDynamic(utilsKt2, serializerProvider.constructSpecializedType(typeBase, cls2), serializerProvider);
                        } else {
                            serializerFor2 = serializerProvider.findContentValueSerializer(cls2, beanProperty);
                            UtilsKt newWith2 = utilsKt2.newWith(cls2, serializerFor2);
                            if (utilsKt2 != newWith2) {
                                this._dynamicSerializers = newWith2;
                            }
                        }
                        utilsKt2 = this._dynamicSerializers;
                    }
                    serializerFor2.serialize(obj3, jsonGenerator, serializerProvider);
                }
                i++;
            }
        } catch (Exception e3) {
            StdSerializer.wrapAndThrow(serializerProvider, e3, list, i);
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.START_ARRAY));
        jsonGenerator.setCurrentValue(obj);
        switch (this.$r8$classId) {
            case 0:
                serializeContents((EnumSet) obj, jsonGenerator, serializerProvider);
                break;
            case 1:
                serializeContents((List) obj, jsonGenerator, serializerProvider);
                break;
            case 2:
                serializeContents((Iterator) obj, jsonGenerator, serializerProvider);
                break;
            case 3:
                serializeContents((Collection) obj, jsonGenerator, serializerProvider);
                break;
            default:
                serializeContents((Iterable) obj, jsonGenerator, serializerProvider);
                break;
        }
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumSetSerializer(TypeBase typeBase, boolean z, TypeSerializerBase typeSerializerBase, JsonSerializer jsonSerializer) {
        this(Collection.class, typeBase, z, typeSerializerBase, jsonSerializer);
        this.$r8$classId = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EnumSetSerializer(Class cls, TypeBase typeBase, boolean z, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, int i) {
        this(cls, typeBase, z, typeSerializer, jsonSerializer);
        this.$r8$classId = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumSetSerializer(EnumSetSerializer enumSetSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, Boolean bool, int i) {
        super(0, enumSetSerializer._handledType);
        this.$r8$classId = i;
        this._elementType = enumSetSerializer._elementType;
        this._staticTyping = enumSetSerializer._staticTyping;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._unwrapSingle = bool;
    }

    public void serializeContents(EnumSet enumSet, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Iterator it = enumSet.iterator();
        JsonSerializer jsonSerializer = this._elementSerializer;
        while (it.hasNext()) {
            Enum r1 = (Enum) it.next();
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findContentValueSerializer(r1.getDeclaringClass(), this._property);
            }
            jsonSerializer.serialize(r1, jsonGenerator, serializerProvider);
        }
    }

    public void serializeContents(Iterable iterable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        JsonSerializer jsonSerializer;
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Class<?> cls = null;
            JsonSerializer jsonSerializer2 = null;
            do {
                Object next = it.next();
                if (next == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    JsonSerializer jsonSerializer3 = this._elementSerializer;
                    if (jsonSerializer3 == null) {
                        Class<?> cls2 = next.getClass();
                        if (cls2 != cls) {
                            jsonSerializer2 = serializerProvider.findValueSerializer(cls2, this._property);
                            cls = cls2;
                        }
                        jsonSerializer = jsonSerializer2;
                    } else {
                        jsonSerializer = jsonSerializer2;
                        jsonSerializer2 = jsonSerializer3;
                    }
                    TypeSerializer typeSerializer = this._valueTypeSerializer;
                    if (typeSerializer == null) {
                        jsonSerializer2.serialize(next, jsonGenerator, serializerProvider);
                    } else {
                        jsonSerializer2.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                    }
                    jsonSerializer2 = jsonSerializer;
                }
            } while (it.hasNext());
        }
    }

    public void serializeContents(Iterator it, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        if (it.hasNext()) {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            JsonSerializer jsonSerializer = this._elementSerializer;
            if (jsonSerializer == null) {
                UtilsKt utilsKt = this._dynamicSerializers;
                do {
                    Object next = it.next();
                    if (next == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = next.getClass();
                        JsonSerializer serializerFor = utilsKt.serializerFor(cls);
                        if (serializerFor == null) {
                            TypeBase typeBase = this._elementType;
                            if (typeBase.hasGenericTypes()) {
                                serializerFor = _findAndAddDynamic(utilsKt, serializerProvider.constructSpecializedType(typeBase, cls), serializerProvider);
                            } else {
                                serializerFor = serializerProvider.findContentValueSerializer(cls, this._property);
                                UtilsKt newWith = utilsKt.newWith(cls, serializerFor);
                                if (utilsKt != newWith) {
                                    this._dynamicSerializers = newWith;
                                }
                            }
                            utilsKt = this._dynamicSerializers;
                        }
                        if (typeSerializer == null) {
                            serializerFor.serialize(next, jsonGenerator, serializerProvider);
                        } else {
                            serializerFor.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                        }
                    }
                } while (it.hasNext());
                return;
            }
            do {
                Object next2 = it.next();
                if (next2 == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(next2, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer.serializeWithType(next2, jsonGenerator, serializerProvider, typeSerializer);
                }
            } while (it.hasNext());
        }
    }

    public void serializeContents(Collection collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        TypeBase typeBase = this._elementType;
        jsonGenerator.setCurrentValue(collection);
        int i = 0;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        JsonSerializer jsonSerializer = this._elementSerializer;
        if (jsonSerializer != null) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                do {
                    Object next = it.next();
                    if (next == null) {
                        try {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                        } catch (Exception e) {
                            StdSerializer.wrapAndThrow(serializerProvider, e, collection, i);
                            throw null;
                        }
                    } else if (typeSerializer == null) {
                        jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                    } else {
                        jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                    }
                    i++;
                } while (it.hasNext());
                return;
            }
            return;
        }
        Iterator it2 = collection.iterator();
        if (it2.hasNext()) {
            UtilsKt utilsKt = this._dynamicSerializers;
            do {
                try {
                    Object next2 = it2.next();
                    if (next2 == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = next2.getClass();
                        JsonSerializer serializerFor = utilsKt.serializerFor(cls);
                        if (serializerFor == null) {
                            if (typeBase.hasGenericTypes()) {
                                serializerFor = _findAndAddDynamic(utilsKt, serializerProvider.constructSpecializedType(typeBase, cls), serializerProvider);
                            } else {
                                serializerFor = serializerProvider.findContentValueSerializer(cls, this._property);
                                UtilsKt newWith = utilsKt.newWith(cls, serializerFor);
                                if (utilsKt != newWith) {
                                    this._dynamicSerializers = newWith;
                                }
                            }
                            utilsKt = this._dynamicSerializers;
                        }
                        if (typeSerializer == null) {
                            serializerFor.serialize(next2, jsonGenerator, serializerProvider);
                        } else {
                            serializerFor.serializeWithType(next2, jsonGenerator, serializerProvider, typeSerializer);
                        }
                    }
                    i++;
                } catch (Exception e2) {
                    StdSerializer.wrapAndThrow(serializerProvider, e2, collection, i);
                    throw null;
                }
            } while (it2.hasNext());
        }
    }
}
