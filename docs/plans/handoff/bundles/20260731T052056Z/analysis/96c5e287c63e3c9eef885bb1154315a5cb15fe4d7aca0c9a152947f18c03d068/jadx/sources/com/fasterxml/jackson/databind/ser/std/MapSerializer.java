package com.fasterxml.jackson.databind.ser.std;

import coil3.svg.internal.AndroidSvg;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Map;
import java.util.Set;
import kotlin.UnsafeLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapSerializer extends ContainerSerializer implements ContextualSerializer {
    public UtilsKt _dynamicValueSerializers;
    public final Object _filterId;
    public final Set _ignoredEntries;
    public final Set _includedEntries;
    public final UnsafeLazyImpl _inclusionChecker;
    public final JsonSerializer _keySerializer;
    public final TypeBase _keyType;
    public final BeanProperty _property;
    public final boolean _sortKeys;
    public final boolean _suppressNulls;
    public final Object _suppressableValue;
    public final JsonSerializer _valueSerializer;
    public final TypeBase _valueType;
    public final boolean _valueTypeIsStatic;
    public final TypeSerializer _valueTypeSerializer;
    public static final SimpleType UNSPECIFIED_TYPE = TypeFactory.unknownType();
    public static final JsonInclude.Include MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.std.MapSerializer$1, reason: invalid class name */
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

    public MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, JsonSerializer jsonSerializer, JsonSerializer jsonSerializer2, Set set, Set set2) {
        super(0, Map.class);
        UnsafeLazyImpl unsafeLazyImpl = null;
        set = (set == null || set.isEmpty()) ? null : set;
        this._ignoredEntries = set;
        this._includedEntries = set2;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._property = beanProperty;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = mapSerializer._suppressableValue;
        this._suppressNulls = mapSerializer._suppressNulls;
        if (set2 != null || (set != null && !set.isEmpty())) {
            unsafeLazyImpl = new UnsafeLazyImpl(set, set2);
        }
        this._inclusionChecker = unsafeLazyImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.fasterxml.jackson.databind.ser.std.MapSerializer construct(java.util.Set r11, java.util.Set r12, com.fasterxml.jackson.databind.type.TypeBase r13, boolean r14, com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase r15, com.fasterxml.jackson.databind.JsonSerializer r16, com.fasterxml.jackson.databind.JsonSerializer r17, java.lang.Object r18) {
        /*
            r0 = r18
            if (r13 != 0) goto L9
            com.fasterxml.jackson.databind.type.SimpleType r13 = com.fasterxml.jackson.databind.ser.std.MapSerializer.UNSPECIFIED_TYPE
            r5 = r13
            r6 = r5
            goto L21
        L9:
            com.fasterxml.jackson.databind.type.TypeBase r1 = r13.getKeyType()
            java.lang.Class<java.util.Properties> r2 = java.util.Properties.class
            boolean r2 = r13.hasRawClass(r2)
            if (r2 == 0) goto L1c
            com.fasterxml.jackson.databind.type.SimpleType r13 = com.fasterxml.jackson.databind.type.TypeFactory.unknownType()
        L19:
            r6 = r13
            r5 = r1
            goto L21
        L1c:
            com.fasterxml.jackson.databind.type.TypeBase r13 = r13.getContentType()
            goto L19
        L21:
            r13 = 0
            if (r14 != 0) goto L37
            if (r6 == 0) goto L34
            java.lang.Class r14 = r6._class
            int r14 = r14.getModifiers()
            boolean r14 = java.lang.reflect.Modifier.isFinal(r14)
            if (r14 == 0) goto L34
            r14 = 1
            goto L35
        L34:
            r14 = r13
        L35:
            r7 = r14
            goto L3e
        L37:
            java.lang.Class r1 = r6._class
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            if (r1 != r2) goto L35
            r7 = r13
        L3e:
            com.fasterxml.jackson.databind.ser.std.MapSerializer r2 = new com.fasterxml.jackson.databind.ser.std.MapSerializer
            r3 = r11
            r4 = r12
            r8 = r15
            r9 = r16
            r10 = r17
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            if (r0 == 0) goto L5a
            java.lang.String r11 = "withFilterId"
            java.lang.Class<com.fasterxml.jackson.databind.ser.std.MapSerializer> r12 = com.fasterxml.jackson.databind.ser.std.MapSerializer.class
            com.fasterxml.jackson.databind.util.ClassUtil.verifyMustOverride(r12, r2, r11)
            com.fasterxml.jackson.databind.ser.std.MapSerializer r11 = new com.fasterxml.jackson.databind.ser.std.MapSerializer
            r11.<init>(r2, r0, r13)
            return r11
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.construct(java.util.Set, java.util.Set, com.fasterxml.jackson.databind.type.TypeBase, boolean, com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.JsonSerializer, java.lang.Object):com.fasterxml.jackson.databind.ser.std.MapSerializer");
    }

    public final JsonSerializer _findSerializer(SerializerProvider serializerProvider, Object obj) {
        Class<?> cls = obj.getClass();
        JsonSerializer serializerFor = this._dynamicValueSerializers.serializerFor(cls);
        if (serializerFor != null) {
            return serializerFor;
        }
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
            return (JsonSerializer) findAndAddSecondarySerializer.svg;
        }
        utilsKt.getClass();
        JsonSerializer findContentValueSerializer = serializerProvider.findContentValueSerializer(cls, beanProperty);
        UtilsKt newWith = utilsKt.newWith(cls, findContentValueSerializer);
        if (utilsKt != newWith) {
            this._dynamicValueSerializers = newWith;
        }
        return findContentValueSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        if (this._valueTypeSerializer == typeSerializer) {
            return this;
        }
        ClassUtil.verifyMustOverride(MapSerializer.class, this, "_withValueTypeSerializer");
        return new MapSerializer(this, typeSerializer, this._suppressableValue, this._suppressNulls);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0127  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r18, com.fasterxml.jackson.databind.BeanProperty r19) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        Map map = (Map) obj;
        if (!map.isEmpty()) {
            boolean z = this._suppressNulls;
            Object obj2 = this._suppressableValue;
            if (obj2 != null || z) {
                boolean z2 = MARKER_FOR_EMPTY == obj2;
                JsonSerializer jsonSerializer = this._valueSerializer;
                if (jsonSerializer != null) {
                    for (Object obj3 : map.values()) {
                        if (obj3 == null) {
                            if (z) {
                            }
                        } else if (z2) {
                            if (!jsonSerializer.isEmpty(serializerProvider, obj3)) {
                            }
                        } else if (obj2 != null && obj2.equals(map)) {
                        }
                    }
                } else {
                    for (Object obj4 : map.values()) {
                        if (obj4 != null) {
                            try {
                                JsonSerializer _findSerializer = _findSerializer(serializerProvider, obj4);
                                if (z2) {
                                    if (!_findSerializer.isEmpty(serializerProvider, obj4)) {
                                    }
                                } else if (obj2 != null && obj2.equals(map)) {
                                }
                            } catch (JsonMappingException unused) {
                            }
                        } else if (z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Map map = (Map) obj;
        jsonGenerator.writeStartObject(map);
        serializeWithoutTypeInfo(map, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndObject();
    }

    public final void serializeTypedFields(Map map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) {
        JsonSerializer jsonSerializer;
        JsonSerializer jsonSerializer2;
        boolean z = MARKER_FOR_EMPTY == obj;
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                jsonSerializer = serializerProvider._nullKeySerializer;
            } else {
                UnsafeLazyImpl unsafeLazyImpl = this._inclusionChecker;
                if (unsafeLazyImpl == null || !unsafeLazyImpl.shouldIgnore(key)) {
                    jsonSerializer = this._keySerializer;
                }
            }
            Object value = entry.getValue();
            if (value != null) {
                jsonSerializer2 = this._valueSerializer;
                if (jsonSerializer2 == null) {
                    jsonSerializer2 = _findSerializer(serializerProvider, value);
                }
                if (!z) {
                    if (obj != null && obj.equals(value)) {
                    }
                    jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
                    jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                } else if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                    continue;
                } else {
                    jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
                    jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                }
            } else if (this._suppressNulls) {
                continue;
            } else {
                jsonSerializer2 = serializerProvider._nullValueSerializer;
                jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
                try {
                    jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                } catch (Exception e) {
                    StdSerializer.wrapAndThrow(serializerProvider, e, map, String.valueOf(key));
                    throw null;
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        Map map = (Map) obj;
        jsonGenerator.setCurrentValue(map);
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(map, JsonToken.START_OBJECT));
        serializeWithoutTypeInfo(map, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r20._config.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS) != false) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serializeWithoutTypeInfo(java.util.Map r18, com.fasterxml.jackson.core.JsonGenerator r19, com.fasterxml.jackson.databind.SerializerProvider r20) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeWithoutTypeInfo(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    public final MapSerializer withContentInclusion(Object obj, boolean z) {
        if (obj == this._suppressableValue && z == this._suppressNulls) {
            return this;
        }
        ClassUtil.verifyMustOverride(MapSerializer.class, this, "withContentInclusion");
        return new MapSerializer(this, this._valueTypeSerializer, obj, z);
    }

    public MapSerializer(Set set, Set set2, TypeBase typeBase, TypeBase typeBase2, boolean z, TypeSerializer typeSerializer, JsonSerializer jsonSerializer, JsonSerializer jsonSerializer2) {
        super(0, Map.class);
        UnsafeLazyImpl unsafeLazyImpl = null;
        set = (set == null || set.isEmpty()) ? null : set;
        this._ignoredEntries = set;
        this._includedEntries = set2;
        this._keyType = typeBase;
        this._valueType = typeBase2;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._property = null;
        this._filterId = null;
        this._sortKeys = false;
        this._suppressableValue = null;
        this._suppressNulls = false;
        if (set2 != null || (set != null && !set.isEmpty())) {
            unsafeLazyImpl = new UnsafeLazyImpl(set, set2);
        }
        this._inclusionChecker = unsafeLazyImpl;
    }

    public MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj, boolean z) {
        super(0, Map.class);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._includedEntries = mapSerializer._includedEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = obj;
        this._suppressNulls = z;
        this._inclusionChecker = mapSerializer._inclusionChecker;
    }

    public MapSerializer(MapSerializer mapSerializer, Object obj, boolean z) {
        super(0, Map.class);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._includedEntries = mapSerializer._includedEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        this._property = mapSerializer._property;
        this._filterId = obj;
        this._sortKeys = z;
        this._suppressableValue = mapSerializer._suppressableValue;
        this._suppressNulls = mapSerializer._suppressNulls;
        this._inclusionChecker = mapSerializer._inclusionChecker;
    }
}
