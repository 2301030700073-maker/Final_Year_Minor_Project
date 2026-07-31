package com.fasterxml.jackson.databind.ser.std;

import coil3.network.HttpException;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AtomicReferenceSerializer extends StdSerializer implements ContextualSerializer {
    public static final JsonInclude.Include MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
    public transient UtilsKt _dynamicSerializers;
    public final BeanProperty _property;
    public final TypeBase _referredType;
    public final boolean _suppressNulls;
    public final Object _suppressableValue;
    public final NameTransformer _unwrapper;
    public final JsonSerializer _valueSerializer;
    public final TypeSerializer _valueTypeSerializer;

    public AtomicReferenceSerializer(ReferenceType referenceType, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        super(referenceType);
        this._referredType = referenceType._referencedType;
        this._property = null;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = null;
        this._suppressableValue = null;
        this._suppressNulls = false;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
    }

    public final JsonSerializer _findCachedSerializer(SerializerProvider serializerProvider, Class cls) {
        JsonSerializer serializerFor = this._dynamicSerializers.serializerFor(cls);
        if (serializerFor != null) {
            return serializerFor;
        }
        TypeBase typeBase = this._referredType;
        boolean hasGenericTypes = typeBase.hasGenericTypes();
        BeanProperty beanProperty = this._property;
        JsonSerializer findPrimaryPropertySerializer = hasGenericTypes ? serializerProvider.findPrimaryPropertySerializer(serializerProvider.constructSpecializedType(typeBase, cls), beanProperty) : serializerProvider.findPrimaryPropertySerializer(cls, beanProperty);
        NameTransformer nameTransformer = this._unwrapper;
        if (nameTransformer != null) {
            findPrimaryPropertySerializer = findPrimaryPropertySerializer.unwrappingSerializer(nameTransformer);
        }
        this._dynamicSerializers = this._dynamicSerializers.newWith(cls, findPrimaryPropertySerializer);
        return findPrimaryPropertySerializer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (r4 == com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing.DYNAMIC) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00bb, code lost:
    
        if (r3 != 5) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00db  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r15, com.fasterxml.jackson.databind.BeanProperty r16) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        AtomicReference atomicReference = (AtomicReference) obj;
        if (atomicReference.get() == null) {
            return true;
        }
        Object obj2 = atomicReference.get();
        if (obj2 == null) {
            return this._suppressNulls;
        }
        Object obj3 = this._suppressableValue;
        if (obj3 == null) {
            return false;
        }
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer = _findCachedSerializer(serializerProvider, obj2.getClass());
            } catch (JsonMappingException e) {
                throw new HttpException(e);
            }
        }
        return obj3 == MARKER_FOR_EMPTY ? jsonSerializer.isEmpty(serializerProvider, obj2) : obj3.equals(obj2);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isUnwrappingSerializer() {
        return this._unwrapper != null;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Object obj2 = ((AtomicReference) obj).get();
        if (obj2 == null) {
            if (this._unwrapper == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            return;
        }
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            jsonSerializer = _findCachedSerializer(serializerProvider, obj2.getClass());
        }
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        if (typeSerializer != null) {
            jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
        } else {
            jsonSerializer.serialize(obj2, jsonGenerator, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        Object obj2 = ((AtomicReference) obj).get();
        if (obj2 == null) {
            if (this._unwrapper == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            }
        } else {
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = _findCachedSerializer(serializerProvider, obj2.getClass());
            }
            jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final JsonSerializer unwrappingSerializer(NameTransformer nameTransformer) {
        JsonSerializer jsonSerializer;
        JsonSerializer jsonSerializer2 = this._valueSerializer;
        if (jsonSerializer2 != null) {
            JsonSerializer unwrappingSerializer = jsonSerializer2.unwrappingSerializer(nameTransformer);
            if (unwrappingSerializer != jsonSerializer2) {
                jsonSerializer = unwrappingSerializer;
            }
            return this;
        }
        jsonSerializer = jsonSerializer2;
        NameTransformer nameTransformer2 = this._unwrapper;
        NameTransformer chained = nameTransformer2 == null ? nameTransformer : new NameTransformer.Chained(nameTransformer, nameTransformer2);
        if (jsonSerializer2 != jsonSerializer || nameTransformer2 != chained) {
            return new AtomicReferenceSerializer(this, this._property, this._valueTypeSerializer, jsonSerializer, chained, this._suppressableValue, this._suppressNulls);
        }
        return this;
    }

    public AtomicReferenceSerializer(AtomicReferenceSerializer atomicReferenceSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, NameTransformer nameTransformer, Object obj, boolean z) {
        super(atomicReferenceSerializer);
        this._referredType = atomicReferenceSerializer._referredType;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._property = beanProperty;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = nameTransformer;
        this._suppressableValue = obj;
        this._suppressNulls = z;
    }
}
