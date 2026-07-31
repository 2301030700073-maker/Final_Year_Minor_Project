package com.fasterxml.jackson.databind.ser.std;

import coil3.ImageLoader$Builder;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.BeanSerializerBuilder;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import kotlin.UnsafeLazyImpl;
import okhttp3.Cache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BeanSerializerBase extends StdSerializer implements ContextualSerializer {
    public static final BeanPropertyWriter[] NO_PROPS;
    public final ImageLoader$Builder _anyGetterWriter;
    public final TypeBase _beanType;
    public final BeanPropertyWriter[] _filteredProps;
    public final Cache.RealCacheRequest _objectIdWriter;
    public final Object _propertyFilterId;
    public final BeanPropertyWriter[] _props;
    public final JsonFormat.Shape _serializationShape;
    public final AnnotatedMember _typeId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.std.BeanSerializerBase$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.NUMBER_INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        new PropertyName("#object-ref", null);
        NO_PROPS = new BeanPropertyWriter[0];
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, Set set, Set set2) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        BeanPropertyWriter[] beanPropertyWriterArr = beanSerializerBase._props;
        BeanPropertyWriter[] beanPropertyWriterArr2 = beanSerializerBase._filteredProps;
        int length = beanPropertyWriterArr.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = beanPropertyWriterArr2 == null ? null : new ArrayList(length);
        for (int i = 0; i < length; i++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
            if (!BeanUtil.shouldIgnore(beanPropertyWriter._name._value, set, set2)) {
                arrayList.add(beanPropertyWriter);
                if (beanPropertyWriterArr2 != null) {
                    arrayList2.add(beanPropertyWriterArr2[i]);
                }
            }
        }
        this._props = (BeanPropertyWriter[]) arrayList.toArray(new BeanPropertyWriter[arrayList.size()]);
        this._filteredProps = arrayList2 != null ? (BeanPropertyWriter[]) arrayList2.toArray(new BeanPropertyWriter[arrayList2.size()]) : null;
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = beanSerializerBase._objectIdWriter;
        this._propertyFilterId = beanSerializerBase._propertyFilterId;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    public static final BeanPropertyWriter[] rename(BeanPropertyWriter[] beanPropertyWriterArr, NameTransformer nameTransformer) {
        if (beanPropertyWriterArr == null || beanPropertyWriterArr.length == 0 || nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return beanPropertyWriterArr;
        }
        int length = beanPropertyWriterArr.length;
        BeanPropertyWriter[] beanPropertyWriterArr2 = new BeanPropertyWriter[length];
        for (int i = 0; i < length; i++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
            if (beanPropertyWriter != null) {
                beanPropertyWriterArr2[i] = beanPropertyWriter.rename(nameTransformer);
            }
        }
        return beanPropertyWriterArr2;
    }

    public final void _serializeWithObjectId(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        Cache.RealCacheRequest realCacheRequest = this._objectIdWriter;
        PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator = (PropertyBasedObjectIdGenerator) realCacheRequest.body;
        boolean z = realCacheRequest.done;
        JsonSerializer jsonSerializer = (JsonSerializer) realCacheRequest.this$0;
        WritableObjectId findObjectId = serializerProvider.findObjectId(obj, propertyBasedObjectIdGenerator);
        if (findObjectId.id != null && (findObjectId.idWritten || z)) {
            jsonGenerator.getClass();
            jsonSerializer.serialize(findObjectId.id, jsonGenerator, serializerProvider);
            return;
        }
        Object generateId = findObjectId.generateId(obj);
        if (z) {
            jsonSerializer.serialize(generateId, jsonGenerator, serializerProvider);
            return;
        }
        WritableTypeId _typeIdDef = _typeIdDef(typeSerializer, obj, JsonToken.START_OBJECT);
        typeSerializer.writeTypePrefix(jsonGenerator, _typeIdDef);
        jsonGenerator.setCurrentValue(obj);
        findObjectId.idWritten = true;
        SerializedString serializedString = (SerializedString) realCacheRequest.cacheOut;
        if (serializedString != null) {
            jsonGenerator.writeFieldName(serializedString);
            jsonSerializer.serialize(findObjectId.id, jsonGenerator, serializerProvider);
        }
        if (this._propertyFilterId != null) {
            serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
            throw null;
        }
        serializeFields(obj, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, _typeIdDef);
    }

    public final WritableTypeId _typeIdDef(TypeSerializer typeSerializer, Object obj, JsonToken jsonToken) {
        AnnotatedMember annotatedMember = this._typeId;
        if (annotatedMember == null) {
            return typeSerializer.typeId(obj, jsonToken);
        }
        Object value = annotatedMember.getValue(obj);
        if (value == null) {
            value = "";
        }
        WritableTypeId typeId = typeSerializer.typeId(obj, jsonToken);
        typeId.id = value;
        return typeId;
    }

    public abstract BeanSerializerBase asArraySerializer();

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        JsonFormat.Shape shape;
        Object obj;
        JsonFormat.Shape shape2;
        int i;
        JsonFormat.Shape shape3;
        Cache.RealCacheRequest realCacheRequest;
        int i2;
        Object obj2;
        Set set;
        Set set2;
        BeanPropertyWriter[] beanPropertyWriterArr;
        Class cls;
        TypeBase _fromAny;
        Object obj3;
        ObjectIdInfo findObjectReferenceInfo;
        JsonFormat.Shape shape4;
        BeanSerializerBase beanSerializerBase = this;
        SerializationConfig serializationConfig = serializerProvider._config;
        PropertyNamingStrategy annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        AnnotatedMember member = beanProperty != null ? beanProperty.getMember() : null;
        Class cls2 = beanSerializerBase._handledType;
        JsonFormat.Value findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, cls2);
        JsonFormat.Shape shape5 = beanSerializerBase._serializationShape;
        if (findFormatOverrides == null || (shape = findFormatOverrides._shape) == (shape4 = JsonFormat.Shape.ANY)) {
            shape = null;
        } else if (shape != shape4 && shape != shape5) {
            TypeBase typeBase = beanSerializerBase._beanType;
            Class cls3 = typeBase._class;
            Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
            if (Enum.class.isAssignableFrom(cls3)) {
                int i3 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[shape.ordinal()];
                if (i3 == 1 || i3 == 2 || i3 == 3) {
                    ((BasicClassIntrospector) serializationConfig._base._classIntrospector).getClass();
                    if (BasicClassIntrospector._findStdTypeDesc(serializationConfig, typeBase) == null) {
                        BasicBeanDescription.forOtherUse(serializationConfig, typeBase, PropertyBuilder.resolve(serializationConfig, typeBase, serializationConfig));
                    }
                    Class cls4 = typeBase._class;
                    return serializerProvider.handlePrimaryContextualization(new EnumSerializer(UnsafeLazyImpl.constructFromName(serializationConfig, cls4), EnumSerializer._isShapeWrittenUsingIndex(cls4, findFormatOverrides, true, null)), beanProperty);
                }
            } else if (shape == JsonFormat.Shape.NATURAL && ((!(typeBase instanceof MapType) || !Map.class.isAssignableFrom(cls2)) && Map.Entry.class.isAssignableFrom(cls2))) {
                TypeBase findSuperType = typeBase.findSuperType(Map.Entry.class);
                TypeBase boundType = findSuperType._bindings.getBoundType(0);
                if (boundType == null) {
                    boundType = TypeFactory.unknownType();
                }
                TypeBase typeBase2 = boundType;
                TypeBase boundType2 = findSuperType._bindings.getBoundType(1);
                if (boundType2 == null) {
                    boundType2 = TypeFactory.unknownType();
                }
                return serializerProvider.handlePrimaryContextualization(new MapEntrySerializer(beanSerializerBase._beanType, typeBase2, boundType2, false, null, beanProperty), beanProperty);
            }
        }
        BeanPropertyWriter[] beanPropertyWriterArr2 = beanSerializerBase._props;
        Cache.RealCacheRequest realCacheRequest2 = beanSerializerBase._objectIdWriter;
        if (member != null) {
            JsonIgnoreProperties.Value findPropertyIgnoralByName = annotationIntrospector.findPropertyIgnoralByName(member);
            set = findPropertyIgnoralByName._allowGetters ? Collections.EMPTY_SET : findPropertyIgnoralByName._ignored;
            set2 = annotationIntrospector.findPropertyInclusionByName(member)._included;
            ObjectIdInfo findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member);
            if (findObjectIdInfo == null) {
                if (realCacheRequest2 == null || (findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, null)) == null) {
                    obj = null;
                    realCacheRequest = realCacheRequest2;
                } else {
                    boolean z = findObjectReferenceInfo._alwaysAsId;
                    realCacheRequest = z == realCacheRequest2.done ? realCacheRequest2 : new Cache.RealCacheRequest((TypeBase) realCacheRequest2.editor, (SerializedString) realCacheRequest2.cacheOut, (PropertyBasedObjectIdGenerator) realCacheRequest2.body, (JsonSerializer) realCacheRequest2.this$0, z);
                    obj = null;
                }
                shape2 = shape5;
                i2 = 0;
                i = 0;
                shape3 = shape;
            } else {
                ObjectIdInfo findObjectReferenceInfo2 = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
                Class cls5 = findObjectReferenceInfo2._generator;
                i = 0;
                boolean z2 = findObjectReferenceInfo2._alwaysAsId;
                PropertyName propertyName = findObjectReferenceInfo2._propertyName;
                if (cls5 == null) {
                    cls = cls2;
                    shape2 = shape5;
                    shape3 = shape;
                    _fromAny = null;
                } else {
                    cls = cls2;
                    shape2 = shape5;
                    shape3 = shape;
                    _fromAny = serializerProvider.getTypeFactory()._fromAny(null, cls5, TypeFactory.EMPTY_BINDINGS);
                }
                serializerProvider.getTypeFactory().getClass();
                TypeBase typeBase3 = TypeFactory.findTypeParameters(_fromAny, ObjectIdGenerator.class)[0];
                if (cls5 == PropertyBasedObjectIdGenerator.class) {
                    String str = propertyName._simpleName;
                    int length = beanPropertyWriterArr2.length;
                    i2 = 0;
                    while (i2 != length) {
                        BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr2[i2];
                        if (str.equals(beanPropertyWriter._name._value)) {
                            realCacheRequest = Cache.RealCacheRequest.construct(beanPropertyWriter._declaredType, null, new PropertyBasedObjectIdGenerator(findObjectReferenceInfo2._scope, beanPropertyWriter), z2);
                            obj = null;
                        } else {
                            i2++;
                        }
                    }
                    serializerProvider.reportBadDefinition("Invalid Object Id definition for " + ClassUtil.nameOf(cls) + ": cannot find property with name " + (str == null ? "[null]" : ClassUtil.apostrophed(str)));
                    throw null;
                }
                obj = null;
                realCacheRequest = Cache.RealCacheRequest.construct(typeBase3, propertyName, serializerProvider.objectIdGeneratorInstance(findObjectReferenceInfo2), z2);
                i2 = 0;
            }
            obj2 = annotationIntrospector.findFilterId(member);
            if (obj2 == null || ((obj3 = beanSerializerBase._propertyFilterId) != null && obj2.equals(obj3))) {
                obj2 = obj;
            }
        } else {
            obj = null;
            shape2 = shape5;
            i = 0;
            shape3 = shape;
            realCacheRequest = realCacheRequest2;
            i2 = 0;
            obj2 = null;
            set = null;
            set2 = null;
        }
        if (i2 > 0) {
            BeanPropertyWriter[] beanPropertyWriterArr3 = (BeanPropertyWriter[]) Arrays.copyOf(beanPropertyWriterArr2, beanPropertyWriterArr2.length);
            BeanPropertyWriter beanPropertyWriter2 = beanPropertyWriterArr3[i2];
            int i4 = i;
            System.arraycopy(beanPropertyWriterArr3, i4, beanPropertyWriterArr3, 1, i2);
            beanPropertyWriterArr3[i4] = beanPropertyWriter2;
            BeanPropertyWriter[] beanPropertyWriterArr4 = beanSerializerBase._filteredProps;
            if (beanPropertyWriterArr4 == null) {
                beanPropertyWriterArr = obj;
            } else {
                BeanPropertyWriter[] beanPropertyWriterArr5 = (BeanPropertyWriter[]) Arrays.copyOf(beanPropertyWriterArr4, beanPropertyWriterArr4.length);
                BeanPropertyWriter beanPropertyWriter3 = beanPropertyWriterArr5[i2];
                System.arraycopy(beanPropertyWriterArr5, i4, beanPropertyWriterArr5, 1, i2);
                beanPropertyWriterArr5[i4] = beanPropertyWriter3;
                beanPropertyWriterArr = beanPropertyWriterArr5;
            }
            beanSerializerBase = beanSerializerBase.withProperties(beanPropertyWriterArr3, beanPropertyWriterArr);
        }
        if (realCacheRequest != null) {
            Cache.RealCacheRequest realCacheRequest3 = new Cache.RealCacheRequest((TypeBase) realCacheRequest.editor, (SerializedString) realCacheRequest.cacheOut, (PropertyBasedObjectIdGenerator) realCacheRequest.body, serializerProvider.findValueSerializer((TypeBase) realCacheRequest.editor, beanProperty), realCacheRequest.done);
            if (realCacheRequest3 != realCacheRequest2) {
                beanSerializerBase = beanSerializerBase.withObjectIdWriter(realCacheRequest3);
            }
        }
        if ((set != null && !set.isEmpty()) || set2 != null) {
            beanSerializerBase = beanSerializerBase.withByNameInclusion(set, set2);
        }
        if (obj2 != null) {
            beanSerializerBase = beanSerializerBase.withFilterId(obj2);
        }
        return (shape3 == null ? shape2 : shape3) == JsonFormat.Shape.ARRAY ? beanSerializerBase.asArraySerializer() : beanSerializerBase;
    }

    public final void resolve(SerializerProvider serializerProvider) {
        BeanPropertyWriter beanPropertyWriter;
        TypeSerializer typeSerializer;
        Object findSerializationConverter;
        JsonSerializer jsonSerializer;
        BeanPropertyWriter beanPropertyWriter2;
        BeanPropertyWriter[] beanPropertyWriterArr = this._filteredProps;
        int length = beanPropertyWriterArr == null ? 0 : beanPropertyWriterArr.length;
        BeanPropertyWriter[] beanPropertyWriterArr2 = this._props;
        int length2 = beanPropertyWriterArr2.length;
        for (int i = 0; i < length2; i++) {
            BeanPropertyWriter beanPropertyWriter3 = beanPropertyWriterArr2[i];
            boolean z = beanPropertyWriter3._suppressNulls;
            AnnotatedMember annotatedMember = beanPropertyWriter3._member;
            if (!z && beanPropertyWriter3._nullSerializer == null && (jsonSerializer = serializerProvider._nullValueSerializer) != null) {
                beanPropertyWriter3.assignNullSerializer(jsonSerializer);
                if (i < length && (beanPropertyWriter2 = beanPropertyWriterArr[i]) != null) {
                    beanPropertyWriter2.assignNullSerializer(jsonSerializer);
                }
            }
            if (beanPropertyWriter3._serializer == null) {
                PropertyNamingStrategy annotationIntrospector = serializerProvider._config.getAnnotationIntrospector();
                if (annotatedMember != null && (findSerializationConverter = annotationIntrospector.findSerializationConverter(annotatedMember)) != null) {
                    serializerProvider.converterInstance(findSerializationConverter);
                    serializerProvider.getTypeFactory();
                    throw null;
                }
                TypeBase typeBase = beanPropertyWriter3._cfgSerializationType;
                if (typeBase == null) {
                    typeBase = beanPropertyWriter3._declaredType;
                    if (!Modifier.isFinal(typeBase._class.getModifiers())) {
                        if (typeBase.isContainerType() || typeBase._bindings._types.length > 0) {
                            beanPropertyWriter3._nonTrivialBaseType = typeBase;
                        }
                    }
                }
                JsonSerializer findValueSerializer = serializerProvider.findValueSerializer(typeBase, beanPropertyWriter3);
                if (typeBase.isContainerType() && (typeSerializer = (TypeSerializer) typeBase.getContentType()._typeHandler) != null && (findValueSerializer instanceof ContainerSerializer)) {
                    findValueSerializer = ((ContainerSerializer) findValueSerializer)._withValueTypeSerializer(typeSerializer);
                }
                if (i >= length || (beanPropertyWriter = beanPropertyWriterArr[i]) == null) {
                    beanPropertyWriter3.assignSerializer(findValueSerializer);
                } else {
                    beanPropertyWriter.assignSerializer(findValueSerializer);
                }
            }
        }
        ImageLoader$Builder imageLoader$Builder = this._anyGetterWriter;
        if (imageLoader$Builder != null) {
            JsonSerializer jsonSerializer2 = (JsonSerializer) imageLoader$Builder.componentRegistry;
            if (jsonSerializer2 instanceof ContextualSerializer) {
                JsonSerializer handlePrimaryContextualization = serializerProvider.handlePrimaryContextualization(jsonSerializer2, (UnsafeLazyImpl) imageLoader$Builder.application);
                imageLoader$Builder.componentRegistry = handlePrimaryContextualization;
                if (handlePrimaryContextualization instanceof MapSerializer) {
                    imageLoader$Builder.extras = (MapSerializer) handlePrimaryContextualization;
                }
            }
        }
    }

    public final void serializeFields(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        if (this._filteredProps != null) {
            serializerProvider.getClass();
        }
        BeanPropertyWriter[] beanPropertyWriterArr = this._props;
        int i = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
                if (beanPropertyWriter != null) {
                    beanPropertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
                }
                i++;
            }
            ImageLoader$Builder imageLoader$Builder = this._anyGetterWriter;
            if (imageLoader$Builder != null) {
                imageLoader$Builder.getAndSerialize(obj, jsonGenerator, serializerProvider);
            }
        } catch (Exception e) {
            StdSerializer.wrapAndThrow(serializerProvider, e, obj, i != beanPropertyWriterArr.length ? beanPropertyWriterArr[i]._name._value : "[anySetter]");
            throw null;
        } catch (StackOverflowError e2) {
            JsonMappingException jsonMappingException = new JsonMappingException(jsonGenerator, "Infinite recursion (StackOverflowError)", e2);
            JsonMappingException.Reference reference = new JsonMappingException.Reference(i != beanPropertyWriterArr.length ? beanPropertyWriterArr[i]._name._value : "[anySetter]", obj);
            LinkedList linkedList = jsonMappingException._path;
            if (linkedList == null) {
                linkedList = new LinkedList();
                jsonMappingException._path = linkedList;
            }
            if (linkedList.size() >= 1000) {
                throw jsonMappingException;
            }
            jsonMappingException._path.addFirst(reference);
            throw jsonMappingException;
        }
    }

    public final void serializeFieldsFiltered(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        if (this._filteredProps != null) {
            serializerProvider.getClass();
        }
        findPropertyFilter(serializerProvider, this._propertyFilterId);
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        if (this._objectIdWriter != null) {
            _serializeWithObjectId(obj, jsonGenerator, serializerProvider, typeSerializer);
            return;
        }
        WritableTypeId _typeIdDef = _typeIdDef(typeSerializer, obj, JsonToken.START_OBJECT);
        typeSerializer.writeTypePrefix(jsonGenerator, _typeIdDef);
        jsonGenerator.setCurrentValue(obj);
        if (this._propertyFilterId != null) {
            serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
            throw null;
        }
        serializeFields(obj, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, _typeIdDef);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final boolean usesObjectId() {
        return this._objectIdWriter != null;
    }

    public abstract BeanSerializerBase withByNameInclusion(Set set, Set set2);

    public abstract BeanSerializerBase withFilterId(Object obj);

    public abstract BeanSerializerBase withObjectIdWriter(Cache.RealCacheRequest realCacheRequest);

    public abstract BeanSerializerBase withProperties(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2);

    public final void _serializeWithObjectId(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, boolean z) {
        Cache.RealCacheRequest realCacheRequest = this._objectIdWriter;
        PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator = (PropertyBasedObjectIdGenerator) realCacheRequest.body;
        boolean z2 = realCacheRequest.done;
        JsonSerializer jsonSerializer = (JsonSerializer) realCacheRequest.this$0;
        WritableObjectId findObjectId = serializerProvider.findObjectId(obj, propertyBasedObjectIdGenerator);
        Object obj2 = findObjectId.id;
        if (obj2 != null && (findObjectId.idWritten || z2)) {
            jsonSerializer.serialize(obj2, jsonGenerator, serializerProvider);
            return;
        }
        Object generateId = findObjectId.generateId(obj);
        if (z2) {
            jsonSerializer.serialize(generateId, jsonGenerator, serializerProvider);
            return;
        }
        if (z) {
            jsonGenerator.writeStartObject(obj);
        }
        findObjectId.idWritten = true;
        SerializedString serializedString = (SerializedString) realCacheRequest.cacheOut;
        if (serializedString != null) {
            jsonGenerator.writeFieldName(serializedString);
            jsonSerializer.serialize(findObjectId.id, jsonGenerator, serializerProvider);
        }
        if (this._propertyFilterId == null) {
            serializeFields(obj, jsonGenerator, serializerProvider);
            if (z) {
                jsonGenerator.writeEndObject();
                return;
            }
            return;
        }
        serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
        throw null;
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        this._props = beanPropertyWriterArr;
        this._filteredProps = beanPropertyWriterArr2;
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = beanSerializerBase._objectIdWriter;
        this._propertyFilterId = beanSerializerBase._propertyFilterId;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, Cache.RealCacheRequest realCacheRequest, Object obj) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        this._props = beanSerializerBase._props;
        this._filteredProps = beanSerializerBase._filteredProps;
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = realCacheRequest;
        this._propertyFilterId = obj;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    public BeanSerializerBase(TypeBase typeBase, BeanSerializerBuilder beanSerializerBuilder, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(typeBase);
        this._beanType = typeBase;
        this._props = beanPropertyWriterArr;
        this._filteredProps = beanPropertyWriterArr2;
        this._typeId = beanSerializerBuilder._typeId;
        this._anyGetterWriter = beanSerializerBuilder._anyGetter;
        this._propertyFilterId = beanSerializerBuilder._filterId;
        this._objectIdWriter = beanSerializerBuilder._objectIdWriter;
        this._serializationShape = beanSerializerBuilder._beanDesc.findExpectedFormat()._shape;
    }
}
