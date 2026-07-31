package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringCollectionSerializer extends StdSerializer implements ContextualSerializer {
    public final /* synthetic */ int $r8$classId;
    public final Boolean _unwrapSingle;
    public static final StringCollectionSerializer instance$1 = new StringCollectionSerializer(1);
    public static final StringCollectionSerializer instance = new StringCollectionSerializer(0);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StringCollectionSerializer(int i) {
        this(Collection.class);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this(List.class);
                break;
            default:
                break;
        }
    }

    public static void serializeContents(List list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                String str = (String) list.get(i2);
                if (str == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonGenerator.writeString(str);
                }
            } catch (Exception e) {
                StdSerializer.wrapAndThrow(serializerProvider, e, list, i2);
                throw null;
            }
        }
    }

    public static void serializeContents$1(Collection collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int i = 0;
        try {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonGenerator.writeString(str);
                }
                i++;
            }
        } catch (Exception e) {
            StdSerializer.wrapAndThrow(serializerProvider, e, collection, i);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x002a  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r6, com.fasterxml.jackson.databind.BeanProperty r7) {
        /*
            r5 = this;
            r0 = 0
            if (r7 == 0) goto L1a
            com.fasterxml.jackson.databind.SerializationConfig r1 = r6._config
            com.fasterxml.jackson.databind.PropertyNamingStrategy r1 = r1.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r7.getMember()
            if (r2 == 0) goto L1a
            java.lang.Object r1 = r1.findContentSerializer(r2)
            if (r1 == 0) goto L1a
            com.fasterxml.jackson.databind.JsonSerializer r1 = r6.serializerInstance(r2, r1)
            goto L1b
        L1a:
            r1 = r0
        L1b:
            java.lang.Class r2 = r5._handledType
            com.fasterxml.jackson.annotation.JsonFormat$Value r2 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r6, r7, r2)
            if (r2 == 0) goto L2a
            com.fasterxml.jackson.annotation.JsonFormat$Feature r3 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r2 = r2.getFeature(r3)
            goto L2b
        L2a:
            r2 = r0
        L2b:
            com.fasterxml.jackson.databind.JsonSerializer r1 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findContextualConvertingSerializer(r6, r7, r1)
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            if (r1 != 0) goto L37
            com.fasterxml.jackson.databind.JsonSerializer r1 = r6.findContentValueSerializer(r3, r7)
        L37:
            boolean r7 = com.fasterxml.jackson.databind.util.ClassUtil.isJacksonStdImpl(r1)
            r4 = 1
            if (r7 == 0) goto L59
            java.lang.Boolean r6 = r5._unwrapSingle
            boolean r6 = j$.util.Objects.equals(r2, r6)
            if (r6 == 0) goto L47
            return r5
        L47:
            int r6 = r5.$r8$classId
            switch(r6) {
                case 0: goto L52;
                default: goto L4c;
            }
        L4c:
            com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer r6 = new com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer
            r6.<init>(r5, r2, r4)
            goto L58
        L52:
            com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer r6 = new com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer
            r7 = 0
            r6.<init>(r5, r2, r7)
        L58:
            return r6
        L59:
            com.fasterxml.jackson.databind.ser.std.EnumSetSerializer r5 = new com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
            com.fasterxml.jackson.databind.type.TypeFactory r6 = r6.getTypeFactory()
            com.fasterxml.jackson.databind.type.TypeBindings r7 = com.fasterxml.jackson.databind.type.TypeFactory.EMPTY_BINDINGS
            com.fasterxml.jackson.databind.type.TypeBase r6 = r6._fromAny(r0, r3, r7)
            r5.<init>(r6, r4, r0, r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return ((Collection) obj).size() == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        if (r4 == java.lang.Boolean.TRUE) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        if (r7._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        serializeContents$1(r5, r6, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        if (r4 == java.lang.Boolean.TRUE) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        if (r7._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        serializeContents(r5, r6, r7, 1);
     */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(java.lang.Object r5, com.fasterxml.jackson.core.JsonGenerator r6, com.fasterxml.jackson.databind.SerializerProvider r7) {
        /*
            r4 = this;
            int r0 = r4.$r8$classId
            r1 = 1
            java.lang.Boolean r4 = r4._unwrapSingle
            switch(r0) {
                case 0: goto L2e;
                default: goto L8;
            }
        L8:
            java.util.List r5 = (java.util.List) r5
            int r0 = r5.size()
            if (r0 != r1) goto L24
            if (r4 != 0) goto L1c
            com.fasterxml.jackson.databind.SerializationFeature r2 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r3 = r7._config
            boolean r2 = r3.isEnabled(r2)
            if (r2 != 0) goto L20
        L1c:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            if (r4 != r2) goto L24
        L20:
            serializeContents(r5, r6, r7, r1)
            goto L2d
        L24:
            r6.writeStartArray$1(r5)
            serializeContents(r5, r6, r7, r0)
            r6.writeEndArray()
        L2d:
            return
        L2e:
            java.util.Collection r5 = (java.util.Collection) r5
            int r0 = r5.size()
            if (r0 != r1) goto L4a
            if (r4 != 0) goto L42
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            com.fasterxml.jackson.databind.SerializationConfig r1 = r7._config
            boolean r0 = r1.isEnabled(r0)
            if (r0 != 0) goto L46
        L42:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r4 != r0) goto L4a
        L46:
            serializeContents$1(r5, r6, r7)
            goto L53
        L4a:
            r6.writeStartArray$1(r5)
            serializeContents$1(r5, r6, r7)
            r6.writeEndArray()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer.serialize(java.lang.Object, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 0:
                Collection collection = (Collection) obj;
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(collection, JsonToken.START_ARRAY));
                jsonGenerator.setCurrentValue(collection);
                serializeContents$1(collection, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                break;
            default:
                List list = (List) obj;
                WritableTypeId writeTypePrefix2 = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(list, JsonToken.START_ARRAY));
                jsonGenerator.setCurrentValue(list);
                serializeContents(list, jsonGenerator, serializerProvider, list.size());
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix2);
                break;
        }
    }

    public StringCollectionSerializer(Class cls) {
        super(0, cls);
        this._unwrapSingle = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringCollectionSerializer(StringCollectionSerializer stringCollectionSerializer, Boolean bool, int i) {
        super(stringCollectionSerializer);
        this.$r8$classId = i;
        this._unwrapSingle = bool;
    }
}
