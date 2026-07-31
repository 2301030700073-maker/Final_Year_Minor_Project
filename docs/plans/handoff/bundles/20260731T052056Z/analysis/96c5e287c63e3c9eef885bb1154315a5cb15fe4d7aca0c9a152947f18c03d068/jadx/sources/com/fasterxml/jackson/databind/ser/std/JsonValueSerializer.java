package com.fasterxml.jackson.databind.ser.std;

import coil3.network.HttpException;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonValueSerializer extends StdSerializer implements ContextualSerializer {
    public final AnnotatedMember _accessor;
    public transient UtilsKt _dynamicSerializers;
    public final boolean _forceTypeInformation;
    public final BeanProperty _property;
    public final JsonSerializer _valueSerializer;
    public final TypeBase _valueType;
    public final TypeSerializer _valueTypeSerializer;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TypeSerializerRerouter extends TypeSerializer {
        public final Object _forObject;
        public final TypeSerializer _typeSerializer;

        public TypeSerializerRerouter(TypeSerializer typeSerializer, Object obj) {
            this._typeSerializer = typeSerializer;
            this._forObject = obj;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public final TypeSerializer forProperty(BeanProperty beanProperty) {
            throw new UnsupportedOperationException();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public final String getPropertyName() {
            return this._typeSerializer.getPropertyName();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public final JsonTypeInfo.As getTypeInclusion() {
            return this._typeSerializer.getTypeInclusion();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public final WritableTypeId writeTypePrefix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) {
            writableTypeId.forValue = this._forObject;
            return this._typeSerializer.writeTypePrefix(jsonGenerator, writableTypeId);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public final WritableTypeId writeTypeSuffix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) {
            return this._typeSerializer.writeTypeSuffix(jsonGenerator, writableTypeId);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JsonValueSerializer(com.fasterxml.jackson.databind.ser.std.JsonValueSerializer r2, com.fasterxml.jackson.databind.BeanProperty r3, com.fasterxml.jackson.databind.jsontype.TypeSerializer r4, com.fasterxml.jackson.databind.JsonSerializer r5, boolean r6) {
        /*
            r1 = this;
            java.lang.Class r0 = r2._handledType
            if (r0 != 0) goto L6
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
        L6:
            r1.<init>(r0)
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r2._accessor
            r1._accessor = r0
            com.fasterxml.jackson.databind.type.TypeBase r2 = r2._valueType
            r1._valueType = r2
            r1._valueTypeSerializer = r4
            r1._valueSerializer = r5
            r1._property = r3
            r1._forceTypeInformation = r6
            com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty r2 = com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty.FOR_PROPERTIES
            r1._dynamicSerializers = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.JsonValueSerializer.<init>(com.fasterxml.jackson.databind.ser.std.JsonValueSerializer, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.JsonSerializer, boolean):void");
    }

    public final JsonSerializer _findDynamicSerializer(SerializerProvider serializerProvider, Class cls) {
        JsonSerializer serializerFor = this._dynamicSerializers.serializerFor(cls);
        if (serializerFor != null) {
            return serializerFor;
        }
        TypeBase typeBase = this._valueType;
        boolean hasGenericTypes = typeBase.hasGenericTypes();
        BeanProperty beanProperty = this._property;
        if (!hasGenericTypes) {
            JsonSerializer findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(cls, beanProperty);
            this._dynamicSerializers = this._dynamicSerializers.newWith(cls, findPrimaryPropertySerializer);
            return findPrimaryPropertySerializer;
        }
        TypeBase constructSpecializedType = serializerProvider.constructSpecializedType(typeBase, cls);
        JsonSerializer findPrimaryPropertySerializer2 = serializerProvider.findPrimaryPropertySerializer(constructSpecializedType, beanProperty);
        UtilsKt utilsKt = this._dynamicSerializers;
        utilsKt.getClass();
        this._dynamicSerializers = utilsKt.newWith(constructSpecializedType._class, findPrimaryPropertySerializer2);
        return findPrimaryPropertySerializer2;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        if (typeSerializer != null) {
            typeSerializer = typeSerializer.forProperty(beanProperty);
        }
        boolean z = this._forceTypeInformation;
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            return withResolved(beanProperty, typeSerializer, serializerProvider.handlePrimaryContextualization(jsonSerializer, beanProperty), z);
        }
        boolean enabledIn = MapperFeature.USE_STATIC_TYPING.enabledIn(serializerProvider._config._mapperFeatures);
        TypeBase typeBase = this._valueType;
        if (!enabledIn && !Modifier.isFinal(typeBase._class.getModifiers())) {
            return beanProperty != this._property ? withResolved(beanProperty, typeSerializer, jsonSerializer, z) : this;
        }
        JsonSerializer findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(typeBase, beanProperty);
        Class cls = typeBase._class;
        boolean z2 = false;
        if (!cls.isPrimitive() ? cls == String.class || cls == Integer.class || cls == Boolean.class || cls == Double.class : cls == Integer.TYPE || cls == Boolean.TYPE || cls == Double.TYPE) {
            z2 = ClassUtil.isJacksonStdImpl(findPrimaryPropertySerializer);
        }
        return withResolved(beanProperty, typeSerializer, findPrimaryPropertySerializer, z2);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        Object value = this._accessor.getValue(obj);
        if (value == null) {
            return true;
        }
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer = _findDynamicSerializer(serializerProvider, value.getClass());
            } catch (JsonMappingException e) {
                throw new HttpException(e);
            }
        }
        return jsonSerializer.isEmpty(serializerProvider, value);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        AnnotatedMember annotatedMember = this._accessor;
        try {
            Object value = annotatedMember.getValue(obj);
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = _findDynamicSerializer(serializerProvider, value.getClass());
            }
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            if (typeSerializer != null) {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            } else {
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
            }
        } catch (Exception e) {
            StdSerializer.wrapAndThrow(serializerProvider, e, obj, annotatedMember.getName() + "()");
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        AnnotatedMember annotatedMember = this._accessor;
        try {
            Object value = annotatedMember.getValue(obj);
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = _findDynamicSerializer(serializerProvider, value.getClass());
            } else if (this._forceTypeInformation) {
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_STRING));
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                return;
            }
            jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, new TypeSerializerRerouter(typeSerializer, obj));
        } catch (Exception e) {
            StdSerializer.wrapAndThrow(serializerProvider, e, obj, annotatedMember.getName() + "()");
            throw null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(@JsonValue serializer for method ");
        AnnotatedMember annotatedMember = this._accessor;
        sb.append(annotatedMember.getDeclaringClass());
        sb.append("#");
        sb.append(annotatedMember.getName());
        sb.append(")");
        return sb.toString();
    }

    public final JsonValueSerializer withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, boolean z) {
        return (this._property == beanProperty && this._valueTypeSerializer == typeSerializer && this._valueSerializer == jsonSerializer && z == this._forceTypeInformation) ? this : new JsonValueSerializer(this, beanProperty, typeSerializer, jsonSerializer, z);
    }

    public JsonValueSerializer(AnnotatedMember annotatedMember, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        super(annotatedMember.getType());
        this._accessor = annotatedMember;
        this._valueType = annotatedMember.getType();
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._property = null;
        this._forceTypeInformation = true;
        this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
    }
}
