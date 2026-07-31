package com.fasterxml.jackson.databind.ser.impl;

import coil3.svg.internal.AndroidSvg;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.BeanUtil;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapEntrySerializer extends ContainerSerializer implements ContextualSerializer {
    public static final JsonInclude.Include MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
    public UtilsKt _dynamicValueSerializers;
    public final JsonSerializer _keySerializer;
    public final TypeBase _keyType;
    public final BeanProperty _property;
    public final boolean _suppressNulls;
    public final Object _suppressableValue;
    public final JsonSerializer _valueSerializer;
    public final TypeBase _valueType;
    public final boolean _valueTypeIsStatic;
    public final TypeSerializer _valueTypeSerializer;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MapEntrySerializer(MapEntrySerializer mapEntrySerializer, JsonSerializer jsonSerializer, JsonSerializer jsonSerializer2, Object obj, boolean z) {
        super(0, Map.class);
        this._keyType = mapEntrySerializer._keyType;
        this._valueType = mapEntrySerializer._valueType;
        this._valueTypeIsStatic = mapEntrySerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapEntrySerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._property = mapEntrySerializer._property;
        this._suppressableValue = obj;
        this._suppressNulls = z;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new MapEntrySerializer(this, this._keySerializer, this._valueSerializer, this._suppressableValue, this._suppressNulls);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        JsonSerializer jsonSerializer;
        JsonSerializer jsonSerializer2;
        boolean z;
        boolean z2;
        Object obj;
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Include include;
        SerializationConfig serializationConfig = serializerProvider._config;
        PropertyNamingStrategy annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        Object obj2 = null;
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (member != null) {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            jsonSerializer2 = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            jsonSerializer = findContentSerializer != null ? serializerProvider.serializerInstance(member, findContentSerializer) : null;
        } else {
            jsonSerializer = null;
            jsonSerializer2 = null;
        }
        if (jsonSerializer == null) {
            jsonSerializer = this._valueSerializer;
        }
        JsonSerializer findContextualConvertingSerializer = StdSerializer.findContextualConvertingSerializer(serializerProvider, beanProperty, jsonSerializer);
        TypeBase typeBase = this._valueType;
        if (findContextualConvertingSerializer == null && this._valueTypeIsStatic && !typeBase.isJavaLangObject()) {
            findContextualConvertingSerializer = serializerProvider.findContentValueSerializer(typeBase, beanProperty);
        }
        JsonSerializer jsonSerializer3 = findContextualConvertingSerializer;
        if (jsonSerializer2 == null) {
            jsonSerializer2 = this._keySerializer;
        }
        JsonSerializer findKeySerializer2 = jsonSerializer2 == null ? serializerProvider.findKeySerializer(this._keyType, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializer2, beanProperty);
        if (beanProperty == null || (findPropertyInclusion = beanProperty.findPropertyInclusion(serializationConfig, null)) == null || (include = findPropertyInclusion._contentInclusion) == JsonInclude.Include.USE_DEFAULTS) {
            obj2 = this._suppressableValue;
            z = this._suppressNulls;
        } else {
            int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[include.ordinal()];
            z = true;
            if (i != 1) {
                JsonInclude.Include include2 = MARKER_FOR_EMPTY;
                if (i != 2) {
                    if (i == 3) {
                        z2 = true;
                        obj = include2;
                        return new MapEntrySerializer(this, findKeySerializer2, jsonSerializer3, obj, z2);
                    }
                    if (i == 4) {
                        obj2 = serializerProvider.includeFilterInstance(findPropertyInclusion._contentFilter);
                        if (obj2 != null) {
                            z = serializerProvider.includeFilterSuppressNulls(obj2);
                        }
                    } else if (i != 5) {
                        z = false;
                    }
                } else if (typeBase.isReferenceType()) {
                    obj2 = include2;
                }
            } else {
                obj2 = BeanUtil.getDefaultValue(typeBase);
                if (obj2 != null && obj2.getClass().isArray()) {
                    obj2 = BeanUtil.getArrayComparator(obj2);
                }
            }
        }
        z2 = z;
        obj = obj2;
        return new MapEntrySerializer(this, findKeySerializer2, jsonSerializer3, obj, z2);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        Object value = ((Map.Entry) obj).getValue();
        if (value == null) {
            return this._suppressNulls;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 == null) {
            return false;
        }
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            Class<?> cls = value.getClass();
            JsonSerializer serializerFor = this._dynamicValueSerializers.serializerFor(cls);
            if (serializerFor == null) {
                try {
                    UtilsKt utilsKt = this._dynamicValueSerializers;
                    BeanProperty beanProperty = this._property;
                    utilsKt.getClass();
                    JsonSerializer findContentValueSerializer = serializerProvider.findContentValueSerializer(cls, beanProperty);
                    UtilsKt newWith = utilsKt.newWith(cls, findContentValueSerializer);
                    if (utilsKt != newWith) {
                        this._dynamicValueSerializers = newWith;
                    }
                    jsonSerializer = findContentValueSerializer;
                } catch (JsonMappingException unused) {
                    return false;
                }
            } else {
                jsonSerializer = serializerFor;
            }
        }
        return obj2 == MARKER_FOR_EMPTY ? jsonSerializer.isEmpty(serializerProvider, value) : obj2.equals(value);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Map.Entry entry = (Map.Entry) obj;
        jsonGenerator.writeStartObject(entry);
        serializeDynamic(entry, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndObject();
    }

    public final void serializeDynamic(Map.Entry entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        JsonSerializer jsonSerializer;
        Object key = entry.getKey();
        JsonSerializer jsonSerializer2 = key == null ? serializerProvider._nullKeySerializer : this._keySerializer;
        Object value = entry.getValue();
        if (value != null) {
            jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                Class<?> cls = value.getClass();
                JsonSerializer serializerFor = this._dynamicValueSerializers.serializerFor(cls);
                if (serializerFor == null) {
                    TypeBase typeBase = this._valueType;
                    boolean hasGenericTypes = typeBase.hasGenericTypes();
                    UtilsKt utilsKt = this._dynamicValueSerializers;
                    BeanProperty beanProperty = this._property;
                    if (hasGenericTypes) {
                        AndroidSvg findAndAddSecondarySerializer = utilsKt.findAndAddSecondarySerializer(serializerProvider.constructSpecializedType(typeBase, cls), serializerProvider, beanProperty);
                        UtilsKt utilsKt2 = (UtilsKt) findAndAddSecondarySerializer.renderOptions;
                        if (utilsKt != utilsKt2) {
                            this._dynamicValueSerializers = utilsKt2;
                        }
                        jsonSerializer = (JsonSerializer) findAndAddSecondarySerializer.svg;
                    } else {
                        utilsKt.getClass();
                        serializerFor = serializerProvider.findContentValueSerializer(cls, beanProperty);
                        UtilsKt newWith = utilsKt.newWith(cls, serializerFor);
                        if (utilsKt != newWith) {
                            this._dynamicValueSerializers = newWith;
                        }
                    }
                }
                jsonSerializer = serializerFor;
            }
            Object obj = this._suppressableValue;
            if (obj != null && ((obj == MARKER_FOR_EMPTY && jsonSerializer.isEmpty(serializerProvider, value)) || obj.equals(value))) {
                return;
            }
        } else if (this._suppressNulls) {
            return;
        } else {
            jsonSerializer = serializerProvider._nullValueSerializer;
        }
        jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        try {
            if (typeSerializer == null) {
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            StdSerializer.wrapAndThrow(serializerProvider, e, entry, "" + key);
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        Map.Entry entry = (Map.Entry) obj;
        jsonGenerator.setCurrentValue(entry);
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(entry, JsonToken.START_OBJECT));
        serializeDynamic(entry, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    public MapEntrySerializer(TypeBase typeBase, TypeBase typeBase2, TypeBase typeBase3, boolean z, TypeSerializerBase typeSerializerBase, BeanProperty beanProperty) {
        super(typeBase);
        this._keyType = typeBase2;
        this._valueType = typeBase3;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializerBase;
        this._property = beanProperty;
        this._dynamicValueSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._suppressableValue = null;
        this._suppressNulls = false;
    }
}
