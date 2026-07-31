package com.fasterxml.jackson.databind.ser;

import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class BeanPropertyWriter implements BeanProperty, Serializable {
    public static final JsonInclude.Include MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
    public final transient Method _accessorMethod;
    public final TypeBase _cfgSerializationType;
    public final TypeBase _declaredType;
    public transient UtilsKt _dynamicSerializers;
    public final transient Field _field;
    public final Class[] _includeInViews;
    public final transient HashMap _internalSettings;
    public final AnnotatedMember _member;
    public final PropertyMetadata _metadata;
    public final SerializedString _name;
    public TypeBase _nonTrivialBaseType;
    public JsonSerializer _nullSerializer;
    public JsonSerializer _serializer;
    public final boolean _suppressNulls;
    public final Object _suppressableValue;
    public TypeSerializer _typeSerializer;
    public final PropertyName _wrapperName;

    public BeanPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, AnnotatedMember annotatedMember, Annotations annotations, TypeBase typeBase, JsonSerializer jsonSerializer, TypeSerializerBase typeSerializerBase, TypeBase typeBase2, boolean z, Object obj, Class[] clsArr) {
        PropertyMetadata metadata = beanPropertyDefinition.getMetadata();
        this._metadata = metadata == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : metadata;
        this._member = annotatedMember;
        this._name = new SerializedString(beanPropertyDefinition.getName());
        beanPropertyDefinition.getWrapperName();
        this._wrapperName = null;
        this._declaredType = typeBase;
        this._serializer = jsonSerializer;
        this._dynamicSerializers = jsonSerializer == null ? PropertySerializerMap$Empty.FOR_PROPERTIES : null;
        this._typeSerializer = typeSerializerBase;
        this._cfgSerializationType = typeBase2;
        if (annotatedMember instanceof AnnotatedField) {
            this._accessorMethod = null;
            this._field = ((AnnotatedField) annotatedMember)._field;
        } else if (annotatedMember instanceof AnnotatedMethod) {
            this._accessorMethod = ((AnnotatedMethod) annotatedMember)._method;
            this._field = null;
        } else {
            this._accessorMethod = null;
            this._field = null;
        }
        this._suppressNulls = z;
        this._suppressableValue = obj;
        this._nullSerializer = null;
        this._includeInViews = clsArr;
    }

    public JsonSerializer _findAndAddDynamic(UtilsKt utilsKt, Class cls, SerializerProvider serializerProvider) {
        AndroidSvg androidSvg;
        TypeBase typeBase = this._nonTrivialBaseType;
        if (typeBase != null) {
            TypeBase constructSpecializedType = serializerProvider.constructSpecializedType(typeBase, cls);
            utilsKt.getClass();
            JsonSerializer findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(constructSpecializedType, this);
            androidSvg = new AndroidSvg(findPrimaryPropertySerializer, utilsKt.newWith(constructSpecializedType._class, findPrimaryPropertySerializer));
        } else {
            utilsKt.getClass();
            JsonSerializer findPrimaryPropertySerializer2 = serializerProvider.findPrimaryPropertySerializer(cls, this);
            androidSvg = new AndroidSvg(findPrimaryPropertySerializer2, utilsKt.newWith(cls, findPrimaryPropertySerializer2));
        }
        UtilsKt utilsKt2 = (UtilsKt) androidSvg.renderOptions;
        if (utilsKt != utilsKt2) {
            this._dynamicSerializers = utilsKt2;
        }
        return (JsonSerializer) androidSvg.svg;
    }

    public final boolean _handleSelfReference(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer jsonSerializer) {
        if (jsonSerializer.usesObjectId()) {
            return false;
        }
        if (serializerProvider._config.isEnabled(SerializationFeature.FAIL_ON_SELF_REFERENCES)) {
            if (!(jsonSerializer instanceof BeanSerializerBase)) {
                return false;
            }
            serializerProvider.reportBadDefinition("Direct self-reference leading to cycle");
            throw null;
        }
        if (!serializerProvider._config.isEnabled(SerializationFeature.WRITE_SELF_REFERENCES_AS_NULL)) {
            return false;
        }
        if (this._nullSerializer != null) {
            if (((GeneratorBase) jsonGenerator)._writeContext._type != 1) {
                jsonGenerator.writeFieldName(this._name);
            }
            this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
        }
        return true;
    }

    public void assignNullSerializer(JsonSerializer jsonSerializer) {
        JsonSerializer jsonSerializer2 = this._nullSerializer;
        if (jsonSerializer2 == null || jsonSerializer2 == jsonSerializer) {
            this._nullSerializer = jsonSerializer;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Cannot override _nullSerializer: had a ", ClassUtil.classNameOf(jsonSerializer2), ", trying to set to ", ClassUtil.classNameOf(jsonSerializer)));
        }
    }

    public void assignSerializer(JsonSerializer jsonSerializer) {
        JsonSerializer jsonSerializer2 = this._serializer;
        if (jsonSerializer2 == null || jsonSerializer2 == jsonSerializer) {
            this._serializer = jsonSerializer;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Cannot override _serializer: had a ", ClassUtil.classNameOf(jsonSerializer2), ", trying to set to ", ClassUtil.classNameOf(jsonSerializer)));
        }
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public final JsonFormat.Value findPropertyFormat(MapperConfig mapperConfig, Class cls) {
        ((MapperConfigBase) mapperConfig).getClass();
        JsonFormat.Value value = JsonFormat.Value.EMPTY;
        PropertyNamingStrategy annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        JsonFormat.Value findFormat = member != null ? annotationIntrospector.findFormat(member) : null;
        return value == null ? findFormat == null ? BeanProperty.EMPTY_FORMAT : findFormat : findFormat == null ? value : value.withOverrides(findFormat);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public final JsonInclude.Value findPropertyInclusion(MapperConfig mapperConfig, Class cls) {
        PropertyNamingStrategy annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (member == null) {
            JsonInclude.Value value = (JsonInclude.Value) ((MapperConfigBase) mapperConfig)._configOverrides.value;
            if (value == null) {
                return null;
            }
            return value;
        }
        member.getRawType();
        JsonInclude.Value value2 = (JsonInclude.Value) ((MapperConfigBase) mapperConfig)._configOverrides.value;
        if (value2 == null) {
            value2 = null;
        }
        JsonInclude.Value value3 = value2 != null ? value2 : null;
        JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(member);
        return value3 == null ? findPropertyInclusion : value3.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public final AnnotatedMember getMember() {
        return this._member;
    }

    public BeanPropertyWriter rename(NameTransformer nameTransformer) {
        SerializedString serializedString = this._name;
        String transform = nameTransformer.transform(serializedString._value);
        return transform.equals(serializedString._value) ? this : new BeanPropertyWriter(this, PropertyName.construct(transform));
    }

    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Method method = this._accessorMethod;
        Object invoke = method == null ? this._field.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
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
            Class<?> cls = invoke.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            jsonSerializer2 = serializerFor == null ? _findAndAddDynamic(utilsKt, cls, serializerProvider) : serializerFor;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 != null) {
            if (MARKER_FOR_EMPTY == obj2) {
                if (jsonSerializer2.isEmpty(serializerProvider, invoke)) {
                    serializeAsPlaceholder(jsonGenerator, serializerProvider);
                    return;
                }
            } else if (obj2.equals(invoke)) {
                serializeAsPlaceholder(jsonGenerator, serializerProvider);
                return;
            }
        }
        if (invoke == obj && _handleSelfReference(jsonGenerator, serializerProvider, jsonSerializer2)) {
            return;
        }
        TypeSerializer typeSerializer = this._typeSerializer;
        if (typeSerializer == null) {
            jsonSerializer2.serialize(invoke, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer2.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
        }
    }

    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Method method = this._accessorMethod;
        Object invoke = method == null ? this._field.get(obj) : method.invoke(obj, null);
        SerializedString serializedString = this._name;
        if (invoke == null) {
            if (this._nullSerializer != null) {
                jsonGenerator.writeFieldName(serializedString);
                this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
                return;
            }
            return;
        }
        JsonSerializer jsonSerializer = this._serializer;
        if (jsonSerializer == null) {
            Class<?> cls = invoke.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            jsonSerializer = serializerFor == null ? _findAndAddDynamic(utilsKt, cls, serializerProvider) : serializerFor;
        }
        Object obj2 = this._suppressableValue;
        if (obj2 != null) {
            if (MARKER_FOR_EMPTY == obj2) {
                if (jsonSerializer.isEmpty(serializerProvider, invoke)) {
                    return;
                }
            } else if (obj2.equals(invoke)) {
                return;
            }
        }
        if (invoke == obj && _handleSelfReference(jsonGenerator, serializerProvider, jsonSerializer)) {
            return;
        }
        jsonGenerator.writeFieldName(serializedString);
        TypeSerializer typeSerializer = this._typeSerializer;
        if (typeSerializer == null) {
            jsonSerializer.serialize(invoke, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
        }
    }

    public final void serializeAsPlaceholder(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        JsonSerializer jsonSerializer = this._nullSerializer;
        if (jsonSerializer != null) {
            jsonSerializer.serialize(null, jsonGenerator, serializerProvider);
        } else {
            jsonGenerator.writeNull();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("property '");
        sb.append(this._name._value);
        sb.append("' (");
        Method method = this._accessorMethod;
        if (method != null) {
            sb.append("via method ");
            sb.append(method.getDeclaringClass().getName());
            sb.append("#");
            sb.append(method.getName());
        } else {
            Field field = this._field;
            if (field != null) {
                sb.append("field \"");
                sb.append(field.getDeclaringClass().getName());
                sb.append("#");
                sb.append(field.getName());
            } else {
                sb.append("virtual");
            }
        }
        JsonSerializer jsonSerializer = this._serializer;
        if (jsonSerializer == null) {
            sb.append(", no static serializer");
        } else {
            sb.append(", static serializer of type ".concat(jsonSerializer.getClass().getName()));
        }
        sb.append(')');
        return sb.toString();
    }

    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, SerializedString serializedString) {
        this(beanPropertyWriter, false);
        this._name = serializedString;
        this._wrapperName = beanPropertyWriter._wrapperName;
        this._member = beanPropertyWriter._member;
        this._declaredType = beanPropertyWriter._declaredType;
        this._accessorMethod = beanPropertyWriter._accessorMethod;
        this._field = beanPropertyWriter._field;
        this._serializer = beanPropertyWriter._serializer;
        this._nullSerializer = beanPropertyWriter._nullSerializer;
        if (beanPropertyWriter._internalSettings != null) {
            this._internalSettings = new HashMap(beanPropertyWriter._internalSettings);
        }
        this._cfgSerializationType = beanPropertyWriter._cfgSerializationType;
        this._dynamicSerializers = beanPropertyWriter._dynamicSerializers;
        this._suppressNulls = beanPropertyWriter._suppressNulls;
        this._suppressableValue = beanPropertyWriter._suppressableValue;
        this._includeInViews = beanPropertyWriter._includeInViews;
        this._typeSerializer = beanPropertyWriter._typeSerializer;
        this._nonTrivialBaseType = beanPropertyWriter._nonTrivialBaseType;
    }

    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, PropertyName propertyName) {
        this(beanPropertyWriter, false);
        this._name = new SerializedString(propertyName._simpleName);
        this._wrapperName = beanPropertyWriter._wrapperName;
        this._declaredType = beanPropertyWriter._declaredType;
        this._member = beanPropertyWriter._member;
        this._accessorMethod = beanPropertyWriter._accessorMethod;
        this._field = beanPropertyWriter._field;
        this._serializer = beanPropertyWriter._serializer;
        this._nullSerializer = beanPropertyWriter._nullSerializer;
        if (beanPropertyWriter._internalSettings != null) {
            this._internalSettings = new HashMap(beanPropertyWriter._internalSettings);
        }
        this._cfgSerializationType = beanPropertyWriter._cfgSerializationType;
        this._dynamicSerializers = beanPropertyWriter._dynamicSerializers;
        this._suppressNulls = beanPropertyWriter._suppressNulls;
        this._suppressableValue = beanPropertyWriter._suppressableValue;
        this._includeInViews = beanPropertyWriter._includeInViews;
        this._typeSerializer = beanPropertyWriter._typeSerializer;
        this._nonTrivialBaseType = beanPropertyWriter._nonTrivialBaseType;
    }

    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, boolean z) {
        this._metadata = beanPropertyWriter._metadata;
    }
}
