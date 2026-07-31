package com.fasterxml.jackson.databind.introspect;

import androidx.compose.animation.core.Animation;
import coil3.memory.MemoryCacheService;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonKey;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonMerge;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonRawValue;
import com.fasterxml.jackson.annotation.JsonRootName;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeId;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.annotation.ObjectIdGenerators$None;
import com.fasterxml.jackson.annotation.OptBoolean;
import com.fasterxml.jackson.databind.AnnotationIntrospector$ReferenceProperty$Type;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonAppend;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.ext.Java7SupportImpl;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JacksonAnnotationIntrospector extends PropertyNamingStrategy {
    public transient LRUMap _annotationsInside;
    public boolean _cfgConstructorPropertiesImpliesCreator;
    public static final Class[] ANNOTATIONS_TO_INFER_SER = {JsonSerialize.class, JsonView.class, JsonFormat.class, JsonTypeInfo.class, JsonRawValue.class, JsonUnwrapped.class, JsonBackReference.class, JsonManagedReference.class};
    public static final Class[] ANNOTATIONS_TO_INFER_DESER = {JsonDeserialize.class, JsonView.class, JsonFormat.class, JsonTypeInfo.class, JsonUnwrapped.class, JsonBackReference.class, JsonManagedReference.class, JsonMerge.class};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion;

        static {
            int[] iArr = new int[JsonSerialize.Inclusion.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion = iArr;
            try {
                iArr[JsonSerialize.Inclusion.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_EMPTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.DEFAULT_INCLUSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        try {
            int i = Java7SupportImpl.$r8$clinit;
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder _findTypeResolver(com.fasterxml.jackson.databind.cfg.MapperConfig r5, com.fasterxml.jackson.databind.introspect.Annotated r6) {
        /*
            java.lang.Class<com.fasterxml.jackson.annotation.JsonTypeInfo> r0 = com.fasterxml.jackson.annotation.JsonTypeInfo.class
            java.lang.annotation.Annotation r0 = r6.getAnnotation(r0)
            com.fasterxml.jackson.annotation.JsonTypeInfo r0 = (com.fasterxml.jackson.annotation.JsonTypeInfo) r0
            java.lang.Class<com.fasterxml.jackson.databind.annotation.JsonTypeResolver> r1 = com.fasterxml.jackson.databind.annotation.JsonTypeResolver.class
            java.lang.annotation.Annotation r1 = r6.getAnnotation(r1)
            com.fasterxml.jackson.databind.annotation.JsonTypeResolver r1 = (com.fasterxml.jackson.databind.annotation.JsonTypeResolver) r1
            java.lang.String r2 = "idType cannot be null"
            r3 = 0
            if (r1 == 0) goto L2a
            if (r0 != 0) goto L18
            goto L2c
        L18:
            java.lang.Class r1 = r1.value()
            r5.getClass()
            boolean r4 = r5.canOverrideAccessModifiers()
            java.lang.Object r1 = com.fasterxml.jackson.databind.util.ClassUtil.createInstance(r1, r4)
            com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder r1 = (com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder) r1
            goto L50
        L2a:
            if (r0 != 0) goto L2d
        L2c:
            return r3
        L2d:
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r1 = r0.use()
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r4 = com.fasterxml.jackson.annotation.JsonTypeInfo.Id.NONE
            if (r1 != r4) goto L4b
            com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder r5 = new com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder
            r5.<init>()
            if (r4 == 0) goto L47
            r5._idType = r4
            r5._customIdResolver = r3
            java.lang.String r6 = r4.getDefaultPropertyName()
            r5._typeProperty = r6
            return r5
        L47:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2)
            return r3
        L4b:
            com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder r1 = new com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder
            r1.<init>()
        L50:
            java.lang.Class<com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver> r4 = com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver.class
            java.lang.annotation.Annotation r4 = r6.getAnnotation(r4)
            com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver r4 = (com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver) r4
            if (r4 != 0) goto L5c
            r5 = r3
            goto L6d
        L5c:
            java.lang.Class r4 = r4.value()
            r5.getClass()
            boolean r5 = r5.canOverrideAccessModifiers()
            java.lang.Object r5 = com.fasterxml.jackson.databind.util.ClassUtil.createInstance(r4, r5)
            com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase r5 = (com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase) r5
        L6d:
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r4 = r0.use()
            if (r4 == 0) goto Lb9
            r1._idType = r4
            r1._customIdResolver = r5
            java.lang.String r5 = r4.getDefaultPropertyName()
            r1._typeProperty = r5
            com.fasterxml.jackson.annotation.JsonTypeInfo$As r5 = r0.include()
            com.fasterxml.jackson.annotation.JsonTypeInfo$As r2 = com.fasterxml.jackson.annotation.JsonTypeInfo.As.EXTERNAL_PROPERTY
            if (r5 != r2) goto L8b
            boolean r6 = r6 instanceof com.fasterxml.jackson.databind.introspect.AnnotatedClass
            if (r6 == 0) goto L8b
            com.fasterxml.jackson.annotation.JsonTypeInfo$As r5 = com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY
        L8b:
            if (r5 == 0) goto Lb3
            r1._includeAs = r5
            java.lang.String r5 = r0.property()
            if (r5 == 0) goto L9b
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto La1
        L9b:
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r5 = r1._idType
            java.lang.String r5 = r5.getDefaultPropertyName()
        La1:
            r1._typeProperty = r5
            java.lang.Class r5 = r0.defaultImpl()
            java.lang.Class<coil3.util.ContextsKt> r6 = coil3.util.ContextsKt.class
            if (r5 == r6) goto Laf
            boolean r5 = r5.isAnnotation()
        Laf:
            r0.visible()
            return r1
        Lb3:
            java.lang.String r5 = "includeAs cannot be null"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r5)
            return r3
        Lb9:
            r1.getClass()
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector._findTypeResolver(com.fasterxml.jackson.databind.cfg.MapperConfig, com.fasterxml.jackson.databind.introspect.Annotated):com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder");
    }

    public static boolean _primitiveAndWrapper(Class cls, Class cls2) {
        return cls.isPrimitive() ? cls == ClassUtil.primitiveType(cls2) : cls2.isPrimitive() && cls2 == ClassUtil.primitiveType(cls);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final void findAndAddVirtualProperties(MapperConfig mapperConfig, AnnotatedClass annotatedClass, ArrayList arrayList) {
        Annotations annotations = annotatedClass._classAnnotations;
        Class cls = annotatedClass._class;
        JsonAppend jsonAppend = (JsonAppend) annotations.get(JsonAppend.class);
        if (jsonAppend == null) {
            return;
        }
        boolean prepend = jsonAppend.prepend();
        JsonAppend.Attr[] attrs = jsonAppend.attrs();
        int length = attrs.length;
        TypeBase typeBase = null;
        for (int i = 0; i < length; i++) {
            if (typeBase == null) {
                typeBase = mapperConfig.constructType(Object.class);
            }
            JsonAppend.Attr attr = attrs[i];
            PropertyMetadata propertyMetadata = attr.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
            String value = attr.value();
            String propName = attr.propName();
            String propNamespace = attr.propNamespace();
            PropertyName construct = propName.isEmpty() ? PropertyName.USE_DEFAULT : (propNamespace == null || propNamespace.isEmpty()) ? PropertyName.construct(propName) : PropertyName.construct(propName, propNamespace);
            if (construct._simpleName.isEmpty()) {
                construct = PropertyName.construct(value);
            }
            AttributePropertyWriter attributePropertyWriter = new AttributePropertyWriter(value, SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, cls, value, typeBase), construct, propertyMetadata, attr.include()), annotatedClass._classAnnotations, typeBase);
            if (prepend) {
                arrayList.add(i, attributePropertyWriter);
            } else {
                arrayList.add(attributePropertyWriter);
            }
        }
        JsonAppend.Prop[] props = jsonAppend.props();
        if (props.length > 0) {
            JsonAppend.Prop prop = props[0];
            PropertyMetadata propertyMetadata2 = prop.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
            String name = prop.name();
            String namespace = prop.namespace();
            PropertyName construct2 = !name.isEmpty() ? (namespace == null || namespace.isEmpty()) ? PropertyName.construct(name) : PropertyName.construct(name, namespace) : PropertyName.USE_DEFAULT;
            SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, cls, construct2._simpleName, mapperConfig.constructType(prop.type())), construct2, propertyMetadata2, prop.include());
            ((AttributePropertyWriter) ClassUtil.createInstance(prop.value(), mapperConfig.canOverrideAccessModifiers())).getClass();
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Should not be called on this type");
        }
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final VisibilityChecker$Std findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker$Std visibilityChecker$Std) {
        JsonAutoDetect jsonAutoDetect = (JsonAutoDetect) annotatedClass._classAnnotations.get(JsonAutoDetect.class);
        if (jsonAutoDetect == null) {
            return visibilityChecker$Std;
        }
        JsonAutoDetect.Visibility visibility = visibilityChecker$Std._getterMinLevel;
        JsonAutoDetect.Visibility visibility2 = visibilityChecker$Std._fieldMinLevel;
        JsonAutoDetect.Visibility visibility3 = visibilityChecker$Std._creatorMinLevel;
        JsonAutoDetect.Visibility visibility4 = visibilityChecker$Std._setterMinLevel;
        JsonAutoDetect.Visibility visibility5 = visibilityChecker$Std._isGetterMinLevel;
        JsonAutoDetect.Visibility visibility6 = jsonAutoDetect.getterVisibility();
        JsonAutoDetect.Visibility visibility7 = JsonAutoDetect.Visibility.DEFAULT;
        JsonAutoDetect.Visibility visibility8 = visibility6 == visibility7 ? visibility : visibility6;
        JsonAutoDetect.Visibility isGetterVisibility = jsonAutoDetect.isGetterVisibility();
        JsonAutoDetect.Visibility visibility9 = isGetterVisibility == visibility7 ? visibility5 : isGetterVisibility;
        JsonAutoDetect.Visibility visibility10 = jsonAutoDetect.setterVisibility();
        JsonAutoDetect.Visibility visibility11 = visibility10 == visibility7 ? visibility4 : visibility10;
        JsonAutoDetect.Visibility creatorVisibility = jsonAutoDetect.creatorVisibility();
        JsonAutoDetect.Visibility visibility12 = creatorVisibility == visibility7 ? visibility3 : creatorVisibility;
        JsonAutoDetect.Visibility fieldVisibility = jsonAutoDetect.fieldVisibility();
        JsonAutoDetect.Visibility visibility13 = fieldVisibility == visibility7 ? visibility2 : fieldVisibility;
        return (visibility8 == visibilityChecker$Std._getterMinLevel && visibility9 == visibility5 && visibility11 == visibility4 && visibility12 == visibility3 && visibility13 == visibility2) ? visibilityChecker$Std : new VisibilityChecker$Std(visibility8, visibility9, visibility11, visibility12, visibility13);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findContentSerializer(Annotated annotated) {
        Class contentUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null || (contentUsing = jsonSerialize.contentUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return contentUsing;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonCreator.Mode findCreatorAnnotation(SerializationConfig serializationConfig, Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) annotated.getAnnotation(JsonCreator.class);
        if (jsonCreator != null) {
            return jsonCreator.mode();
        }
        if (!this._cfgConstructorPropertiesImpliesCreator) {
            return null;
        }
        MapperFeature.INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES.getClass();
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonCreator.Mode findCreatorBinding(Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) annotated.getAnnotation(JsonCreator.class);
        if (jsonCreator == null) {
            return null;
        }
        return jsonCreator.mode();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final String[] findEnumValues(Class cls, Enum[] enumArr, String[] strArr) {
        JsonProperty jsonProperty;
        HashMap hashMap = null;
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() && (jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class)) != null) {
                String value = jsonProperty.value();
                if (!value.isEmpty()) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    hashMap.put(field.getName(), value);
                }
            }
        }
        if (hashMap != null) {
            int length = enumArr.length;
            for (int i = 0; i < length; i++) {
                String str = (String) hashMap.get(enumArr[i].name());
                if (str != null) {
                    strArr[i] = str;
                }
            }
        }
        return strArr;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findFilterId(Annotated annotated) {
        JsonFilter jsonFilter = (JsonFilter) annotated.getAnnotation(JsonFilter.class);
        if (jsonFilter == null) {
            return null;
        }
        String value = jsonFilter.value();
        if (value.isEmpty()) {
            return null;
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonFormat.Value findFormat(Annotated annotated) {
        JsonFormat jsonFormat = (JsonFormat) annotated.getAnnotation(JsonFormat.class);
        if (jsonFormat == null) {
            return null;
        }
        String pattern = jsonFormat.pattern();
        JsonFormat.Shape shape = jsonFormat.shape();
        String locale = jsonFormat.locale();
        String timezone = jsonFormat.timezone();
        JsonFormat.Feature[] with = jsonFormat.with();
        JsonFormat.Feature[] without = jsonFormat.without();
        int i = 0;
        for (JsonFormat.Feature feature : with) {
            i |= 1 << feature.ordinal();
        }
        int i2 = 0;
        for (JsonFormat.Feature feature2 : without) {
            i2 |= 1 << feature2.ordinal();
        }
        JsonFormat.Features features = new JsonFormat.Features(i, i2);
        OptBoolean lenient = jsonFormat.lenient();
        lenient.getClass();
        return new JsonFormat.Value(pattern, shape, locale, timezone, features, lenient != OptBoolean.DEFAULT ? lenient == OptBoolean.TRUE ? Boolean.TRUE : Boolean.FALSE : null);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        String name;
        JacksonInject jacksonInject = (JacksonInject) annotatedMember.getAnnotation(JacksonInject.class);
        if (jacksonInject == null) {
            return null;
        }
        String value = jacksonInject.value();
        OptBoolean useInput = jacksonInject.useInput();
        useInput.getClass();
        Boolean bool = useInput == OptBoolean.DEFAULT ? null : useInput == OptBoolean.TRUE ? Boolean.TRUE : Boolean.FALSE;
        if ("".equals(value)) {
            value = null;
        }
        JacksonInject.Value value2 = (value == null && bool == null) ? JacksonInject.Value.EMPTY : new JacksonInject.Value(value, bool);
        Object obj = value2._id;
        if (obj == null) {
            if (annotatedMember instanceof AnnotatedMethod) {
                AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
                if (annotatedMethod.getRawParameterTypes().length == 0) {
                    name = annotatedMethod._method.getReturnType().getName();
                } else {
                    Class[] rawParameterTypes = annotatedMethod.getRawParameterTypes();
                    name = (rawParameterTypes.length > 0 ? rawParameterTypes[0] : null).getName();
                }
            } else {
                name = annotatedMember.getRawType().getName();
            }
            if (!name.equals(obj)) {
                return new JacksonInject.Value(name, value2._useInput);
            }
        }
        return value2;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findInjectableValueId(AnnotatedMember annotatedMember) {
        JacksonInject.Value findInjectableValue = findInjectableValue(annotatedMember);
        if (findInjectableValue == null) {
            return null;
        }
        return findInjectableValue._id;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findKeySerializer(Annotated annotated) {
        Class keyUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null || (keyUsing = jsonSerialize.keyUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return keyUsing;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final PropertyName findNameForDeserialization(AnnotatedMember annotatedMember) {
        boolean z;
        JsonSetter jsonSetter = (JsonSetter) annotatedMember.getAnnotation(JsonSetter.class);
        if (jsonSetter != null) {
            String value = jsonSetter.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z = true;
        } else {
            z = false;
        }
        JsonProperty jsonProperty = (JsonProperty) annotatedMember.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            String namespace = jsonProperty.namespace();
            return PropertyName.construct(jsonProperty.value(), (namespace == null || !namespace.isEmpty()) ? namespace : null);
        }
        if (z || annotatedMember.hasOneOf(ANNOTATIONS_TO_INFER_DESER)) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final PropertyName findNameForSerialization(AnnotatedMember annotatedMember) {
        boolean z;
        JsonGetter jsonGetter = (JsonGetter) annotatedMember.getAnnotation(JsonGetter.class);
        if (jsonGetter != null) {
            String value = jsonGetter.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z = true;
        } else {
            z = false;
        }
        JsonProperty jsonProperty = (JsonProperty) annotatedMember.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            String namespace = jsonProperty.namespace();
            return PropertyName.construct(jsonProperty.value(), (namespace == null || !namespace.isEmpty()) ? namespace : null);
        }
        if (z || annotatedMember.hasOneOf(ANNOTATIONS_TO_INFER_SER)) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findNamingStrategy(AnnotatedClass annotatedClass) {
        JsonNaming jsonNaming = (JsonNaming) annotatedClass._classAnnotations.get(JsonNaming.class);
        if (jsonNaming == null) {
            return null;
        }
        return jsonNaming.value();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findNullSerializer(AnnotatedMember annotatedMember) {
        Class nullsUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) annotatedMember.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null || (nullsUsing = jsonSerialize.nullsUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return nullsUsing;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        JsonIdentityInfo jsonIdentityInfo = (JsonIdentityInfo) annotated.getAnnotation(JsonIdentityInfo.class);
        if (jsonIdentityInfo == null || jsonIdentityInfo.generator() == ObjectIdGenerators$None.class) {
            return null;
        }
        return new ObjectIdInfo(PropertyName.construct(jsonIdentityInfo.property()), jsonIdentityInfo.scope(), jsonIdentityInfo.generator(), false, jsonIdentityInfo.resolver());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        JsonIdentityReference jsonIdentityReference = (JsonIdentityReference) annotated.getAnnotation(JsonIdentityReference.class);
        if (jsonIdentityReference == null) {
            return objectIdInfo;
        }
        if (objectIdInfo == null) {
            objectIdInfo = ObjectIdInfo.EMPTY;
        }
        boolean alwaysAsId = jsonIdentityReference.alwaysAsId();
        return objectIdInfo._alwaysAsId == alwaysAsId ? objectIdInfo : new ObjectIdInfo(objectIdInfo._propertyName, objectIdInfo._scope, objectIdInfo._generator, alwaysAsId, objectIdInfo._resolver);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonProperty.Access findPropertyAccess(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) annotated.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.access();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final StdTypeResolverBuilder findPropertyContentTypeResolver(MapperConfig mapperConfig, AnnotatedMember annotatedMember, TypeBase typeBase) {
        if (typeBase.getContentType() != null) {
            return _findTypeResolver(mapperConfig, annotatedMember);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1(typeBase, ")", "Must call method with a container or reference type (got ");
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final String findPropertyDefaultValue(AnnotatedMember annotatedMember) {
        JsonProperty jsonProperty = (JsonProperty) annotatedMember.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            String defaultValue = jsonProperty.defaultValue();
            if (!defaultValue.isEmpty()) {
                return defaultValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final String findPropertyDescription(AnnotatedMember annotatedMember) {
        JsonPropertyDescription jsonPropertyDescription = (JsonPropertyDescription) annotatedMember.getAnnotation(JsonPropertyDescription.class);
        if (jsonPropertyDescription == null) {
            return null;
        }
        return jsonPropertyDescription.value();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashSet] */
    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonIgnoreProperties.Value findPropertyIgnoralByName(Annotated annotated) {
        ?? r0;
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) annotated.getAnnotation(JsonIgnoreProperties.class);
        if (jsonIgnoreProperties == null) {
            return JsonIgnoreProperties.Value.EMPTY;
        }
        JsonIgnoreProperties.Value value = JsonIgnoreProperties.Value.EMPTY;
        String[] value2 = jsonIgnoreProperties.value();
        if (value2 == null || value2.length == 0) {
            r0 = Collections.EMPTY_SET;
        } else {
            r0 = new HashSet(value2.length);
            for (String str : value2) {
                r0.add(str);
            }
        }
        Set set = r0;
        boolean ignoreUnknown = jsonIgnoreProperties.ignoreUnknown();
        boolean allowGetters = jsonIgnoreProperties.allowGetters();
        boolean allowSetters = jsonIgnoreProperties.allowSetters();
        JsonIgnoreProperties.Value value3 = JsonIgnoreProperties.Value.EMPTY;
        return (ignoreUnknown == value3._ignoreUnknown && allowGetters == value3._allowGetters && allowSetters == value3._allowSetters && !value3._merge && (set == null || set.size() == 0)) ? value3 : new JsonIgnoreProperties.Value(set, ignoreUnknown, allowGetters, allowSetters, false);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonIgnoreProperties.Value findPropertyIgnorals(Annotated annotated) {
        return findPropertyIgnoralByName(annotated);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        JsonInclude.Value value;
        JsonSerialize jsonSerialize;
        JsonInclude jsonInclude = (JsonInclude) annotated.getAnnotation(JsonInclude.class);
        if (jsonInclude == null) {
            value = JsonInclude.Value.EMPTY;
        } else {
            JsonInclude.Value value2 = JsonInclude.Value.EMPTY;
            JsonInclude.Include value3 = jsonInclude.value();
            JsonInclude.Include content = jsonInclude.content();
            JsonInclude.Include include = JsonInclude.Include.USE_DEFAULTS;
            if (value3 == include && content == include) {
                value = value2;
            } else {
                Class valueFilter = jsonInclude.valueFilter();
                if (valueFilter == Void.class) {
                    valueFilter = null;
                }
                Class contentFilter = jsonInclude.contentFilter();
                value = new JsonInclude.Value(value3, content, valueFilter, contentFilter != Void.class ? contentFilter : null);
            }
        }
        if (value._valueInclusion != JsonInclude.Include.USE_DEFAULTS || (jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class)) == null) {
            return value;
        }
        int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[jsonSerialize.include().ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? value : value.withValueInclusion(JsonInclude.Include.NON_EMPTY) : value.withValueInclusion(JsonInclude.Include.NON_DEFAULT) : value.withValueInclusion(JsonInclude.Include.NON_NULL) : value.withValueInclusion(JsonInclude.Include.ALWAYS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashSet] */
    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonIncludeProperties.Value findPropertyInclusionByName(Annotated annotated) {
        ?? r0;
        JsonIncludeProperties jsonIncludeProperties = (JsonIncludeProperties) annotated.getAnnotation(JsonIncludeProperties.class);
        if (jsonIncludeProperties == null) {
            return JsonIncludeProperties.Value.ALL;
        }
        String[] value = jsonIncludeProperties.value();
        if (value == null || value.length == 0) {
            r0 = Collections.EMPTY_SET;
        } else {
            r0 = new HashSet(value.length);
            for (String str : value) {
                r0.add(str);
            }
        }
        return new JsonIncludeProperties.Value(r0);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Integer findPropertyIndex(AnnotatedMember annotatedMember) {
        int index;
        JsonProperty jsonProperty = (JsonProperty) annotatedMember.getAnnotation(JsonProperty.class);
        if (jsonProperty == null || (index = jsonProperty.index()) == -1) {
            return null;
        }
        return Integer.valueOf(index);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final StdTypeResolverBuilder findPropertyTypeResolver(MapperConfig mapperConfig, AnnotatedMember annotatedMember, TypeBase typeBase) {
        if (typeBase.isContainerType() || typeBase.isReferenceType()) {
            return null;
        }
        return _findTypeResolver(mapperConfig, annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final MemoryCacheService findReferenceType(AnnotatedMember annotatedMember) {
        JsonManagedReference jsonManagedReference = (JsonManagedReference) annotatedMember.getAnnotation(JsonManagedReference.class);
        int i = 15;
        if (jsonManagedReference != null) {
            jsonManagedReference.value();
            return new MemoryCacheService(i, AnnotationIntrospector$ReferenceProperty$Type.MANAGED_REFERENCE);
        }
        JsonBackReference jsonBackReference = (JsonBackReference) annotatedMember.getAnnotation(JsonBackReference.class);
        if (jsonBackReference == null) {
            return null;
        }
        jsonBackReference.value();
        return new MemoryCacheService(i, AnnotationIntrospector$ReferenceProperty$Type.BACK_REFERENCE);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final PropertyName findRootName(AnnotatedClass annotatedClass) {
        JsonRootName jsonRootName = (JsonRootName) annotatedClass._classAnnotations.get(JsonRootName.class);
        if (jsonRootName == null) {
            return null;
        }
        String namespace = jsonRootName.namespace();
        return PropertyName.construct(jsonRootName.value(), (namespace == null || !namespace.isEmpty()) ? namespace : null);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        JsonSerialize jsonSerialize = (JsonSerialize) annotatedMember.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        Class contentConverter = jsonSerialize.contentConverter();
        if (contentConverter == null || ClassUtil.isBogusClass(contentConverter)) {
            contentConverter = null;
        }
        if (contentConverter == null || contentConverter == BeanUtil.class) {
            return null;
        }
        return contentConverter;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findSerializationConverter(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        Class converter = jsonSerialize.converter();
        if (converter == null || ClassUtil.isBogusClass(converter)) {
            converter = null;
        }
        if (converter == null || converter == BeanUtil.class) {
            return null;
        }
        return converter;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) annotatedClass._classAnnotations.get(JsonPropertyOrder.class);
        if (jsonPropertyOrder == null) {
            return null;
        }
        return jsonPropertyOrder.value();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean findSerializationSortAlphabetically(Annotated annotated) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) annotated.getAnnotation(JsonPropertyOrder.class);
        if (jsonPropertyOrder == null || !jsonPropertyOrder.alphabetic()) {
            return null;
        }
        return Boolean.TRUE;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final JsonSerialize.Typing findSerializationTyping(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return jsonSerialize.typing();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Object findSerializer(Annotated annotated) {
        Class using;
        JsonSerialize jsonSerialize = (JsonSerialize) annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null && (using = jsonSerialize.using()) != JsonSerializer.None.class) {
            return using;
        }
        JsonRawValue jsonRawValue = (JsonRawValue) annotated.getAnnotation(JsonRawValue.class);
        if (jsonRawValue == null || !jsonRawValue.value()) {
            return null;
        }
        int i = 0;
        return new RawSerializer(i, i, annotated.getRawType());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final List findSubtypes(Annotated annotated) {
        JsonSubTypes jsonSubTypes = (JsonSubTypes) annotated.getAnnotation(JsonSubTypes.class);
        if (jsonSubTypes == null) {
            return null;
        }
        JsonSubTypes.Type[] value = jsonSubTypes.value();
        ArrayList arrayList = new ArrayList(value.length);
        for (JsonSubTypes.Type type : value) {
            arrayList.add(new NamedType(type.value(), type.name()));
            for (String str : type.names()) {
                arrayList.add(new NamedType(type.value(), str));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final String findTypeName(AnnotatedClass annotatedClass) {
        JsonTypeName jsonTypeName = (JsonTypeName) annotatedClass._classAnnotations.get(JsonTypeName.class);
        if (jsonTypeName == null) {
            return null;
        }
        return jsonTypeName.value();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final StdTypeResolverBuilder findTypeResolver(SerializationConfig serializationConfig, AnnotatedClass annotatedClass, TypeBase typeBase) {
        return _findTypeResolver(serializationConfig, annotatedClass);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        JsonUnwrapped jsonUnwrapped = (JsonUnwrapped) annotatedMember.getAnnotation(JsonUnwrapped.class);
        if (jsonUnwrapped == null || !jsonUnwrapped.enabled()) {
            return null;
        }
        final String prefix = jsonUnwrapped.prefix();
        final String suffix = jsonUnwrapped.suffix();
        final int i = 1;
        final int i2 = 0;
        boolean z = (prefix == null || prefix.isEmpty()) ? false : true;
        boolean z2 = (suffix == null || suffix.isEmpty()) ? false : true;
        return z ? z2 ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.1
            public final /* synthetic */ String val$prefix;
            public final /* synthetic */ String val$suffix;

            public AnonymousClass1(final String prefix2, final String suffix2) {
                r1 = prefix2;
                r2 = suffix2;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("[PreAndSuffixTransformer('");
                sb.append(r1);
                sb.append("','");
                return Animation.CC.m(sb, r2, "')]");
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public final String transform(String str) {
                return r1 + str + r2;
            }
        } : new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.2
            public final /* synthetic */ int $r8$classId;
            public final /* synthetic */ String val$prefix;

            public /* synthetic */ AnonymousClass2(final int i22, final String prefix2) {
                r1 = i22;
                r2 = prefix2;
            }

            public final String toString() {
                switch (r1) {
                    case 0:
                        return Animation.CC.m(new StringBuilder("[PrefixTransformer('"), r2, "')]");
                    default:
                        return Animation.CC.m(new StringBuilder("[SuffixTransformer('"), r2, "')]");
                }
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public final String transform(String str) {
                int i3 = r1;
                String str2 = r2;
                switch (i3) {
                    case 0:
                        return Animation.CC.m(new StringBuilder(), str2, str);
                    default:
                        return str + str2;
                }
            }
        } : z2 ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.2
            public final /* synthetic */ int $r8$classId;
            public final /* synthetic */ String val$prefix;

            public /* synthetic */ AnonymousClass2(final int i3, final String suffix2) {
                r1 = i3;
                r2 = suffix2;
            }

            public final String toString() {
                switch (r1) {
                    case 0:
                        return Animation.CC.m(new StringBuilder("[PrefixTransformer('"), r2, "')]");
                    default:
                        return Animation.CC.m(new StringBuilder("[SuffixTransformer('"), r2, "')]");
                }
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public final String transform(String str) {
                int i3 = r1;
                String str2 = r2;
                switch (i3) {
                    case 0:
                        return Animation.CC.m(new StringBuilder(), str2, str);
                    default:
                        return str + str2;
                }
            }
        } : NameTransformer.NOP;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Class[] findViews(Annotated annotated) {
        JsonView jsonView = (JsonView) annotated.getAnnotation(JsonView.class);
        if (jsonView == null) {
            return null;
        }
        return jsonView.value();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean hasAnyGetter(AnnotatedMember annotatedMember) {
        JsonAnyGetter jsonAnyGetter = (JsonAnyGetter) annotatedMember.getAnnotation(JsonAnyGetter.class);
        if (jsonAnyGetter == null) {
            return null;
        }
        return Boolean.valueOf(jsonAnyGetter.enabled());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        HashMap hashMap;
        MemoryCacheService memoryCacheService = annotatedMethod._annotations;
        if (memoryCacheService == null || (hashMap = (HashMap) memoryCacheService.imageLoader) == null) {
            return false;
        }
        return hashMap.containsKey(JsonAnyGetter.class);
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean hasAnySetter(AnnotatedMember annotatedMember) {
        JsonAnySetter jsonAnySetter = (JsonAnySetter) annotatedMember.getAnnotation(JsonAnySetter.class);
        if (jsonAnySetter == null) {
            return null;
        }
        return Boolean.valueOf(jsonAnySetter.enabled());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean hasAsKey(AnnotatedMember annotatedMember) {
        JsonKey jsonKey = (JsonKey) annotatedMember.getAnnotation(JsonKey.class);
        if (jsonKey == null) {
            return null;
        }
        return Boolean.valueOf(jsonKey.value());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean hasAsValue(AnnotatedMember annotatedMember) {
        JsonValue jsonValue = (JsonValue) annotatedMember.getAnnotation(JsonValue.class);
        if (jsonValue == null) {
            return null;
        }
        return Boolean.valueOf(jsonValue.value());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        JsonValue jsonValue = (JsonValue) annotatedMethod.getAnnotation(JsonValue.class);
        return jsonValue != null && jsonValue.value();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final boolean hasCreatorAnnotation(Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) annotated.getAnnotation(JsonCreator.class);
        return (jsonCreator == null || jsonCreator.mode() == JsonCreator.Mode.DISABLED) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        JsonIgnore jsonIgnore = (JsonIgnore) annotatedMember.getAnnotation(JsonIgnore.class);
        if (jsonIgnore != null) {
            return jsonIgnore.value();
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        JsonProperty jsonProperty = (JsonProperty) annotatedMember.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return Boolean.valueOf(jsonProperty.required());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final boolean isAnnotationBundle(Annotation annotation) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        LRUMap lRUMap = this._annotationsInside;
        Boolean bool = (Boolean) lRUMap._map.get(annotationType);
        if (bool == null) {
            bool = Boolean.valueOf(annotationType.getAnnotation(JacksonAnnotationsInside.class) != null);
            lRUMap.putIfAbsent(annotationType, bool);
        }
        return bool.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        JsonIgnoreType jsonIgnoreType = (JsonIgnoreType) annotatedClass._classAnnotations.get(JsonIgnoreType.class);
        if (jsonIgnoreType == null) {
            return null;
        }
        return Boolean.valueOf(jsonIgnoreType.value());
    }

    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    public final Boolean isTypeId(AnnotatedMember annotatedMember) {
        HashMap hashMap;
        MemoryCacheService memoryCacheService = annotatedMember._annotations;
        boolean z = false;
        if (memoryCacheService != null && (hashMap = (HashMap) memoryCacheService.imageLoader) != null) {
            z = hashMap.containsKey(JsonTypeId.class);
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0167  */
    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.type.TypeBase refineSerializationType(com.fasterxml.jackson.databind.cfg.MapperConfig r24, com.fasterxml.jackson.databind.introspect.Annotated r25, com.fasterxml.jackson.databind.type.TypeBase r26) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector.refineSerializationType(com.fasterxml.jackson.databind.cfg.MapperConfig, com.fasterxml.jackson.databind.introspect.Annotated, com.fasterxml.jackson.databind.type.TypeBase):com.fasterxml.jackson.databind.type.TypeBase");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[RETURN] */
    @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.introspect.AnnotatedMethod resolveSetterConflict(com.fasterxml.jackson.databind.introspect.AnnotatedMethod r5, com.fasterxml.jackson.databind.introspect.AnnotatedMethod r6) {
        /*
            r4 = this;
            java.lang.Class[] r4 = r5.getRawParameterTypes()
            int r0 = r4.length
            r1 = 0
            r2 = 0
            if (r0 > 0) goto Lb
            r4 = r1
            goto Ld
        Lb:
            r4 = r4[r2]
        Ld:
            java.lang.Class[] r0 = r6.getRawParameterTypes()
            int r3 = r0.length
            if (r3 > 0) goto L16
            r0 = r1
            goto L18
        L16:
            r0 = r0[r2]
        L18:
            boolean r2 = r4.isPrimitive()
            if (r2 == 0) goto L25
            boolean r4 = r0.isPrimitive()
            if (r4 != 0) goto L36
            goto L32
        L25:
            boolean r2 = r0.isPrimitive()
            if (r2 == 0) goto L2c
            goto L35
        L2c:
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            if (r4 != r2) goto L33
            if (r0 == r2) goto L36
        L32:
            return r5
        L33:
            if (r0 != r2) goto L36
        L35:
            return r6
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector.resolveSetterConflict(com.fasterxml.jackson.databind.introspect.AnnotatedMethod, com.fasterxml.jackson.databind.introspect.AnnotatedMethod):com.fasterxml.jackson.databind.introspect.AnnotatedMethod");
    }
}
