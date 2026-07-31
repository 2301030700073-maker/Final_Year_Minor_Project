package com.fasterxml.jackson.databind;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker$Std;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PropertyNamingStrategy implements Serializable {
    public Object findContentSerializer(Annotated annotated) {
        return null;
    }

    public JsonCreator.Mode findCreatorAnnotation(SerializationConfig serializationConfig, Annotated annotated) {
        if (!hasCreatorAnnotation(annotated)) {
            return null;
        }
        JsonCreator.Mode findCreatorBinding = findCreatorBinding(annotated);
        return findCreatorBinding == null ? JsonCreator.Mode.DEFAULT : findCreatorBinding;
    }

    public JsonCreator.Mode findCreatorBinding(Annotated annotated) {
        return null;
    }

    public Object findFilterId(Annotated annotated) {
        return null;
    }

    public JsonFormat.Value findFormat(Annotated annotated) {
        return JsonFormat.Value.EMPTY;
    }

    public JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        Object findInjectableValueId = findInjectableValueId(annotatedMember);
        if (findInjectableValueId == null) {
            return null;
        }
        if ("".equals(findInjectableValueId)) {
            findInjectableValueId = null;
        }
        return findInjectableValueId == null ? JacksonInject.Value.EMPTY : new JacksonInject.Value(findInjectableValueId, null);
    }

    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findKeySerializer(Annotated annotated) {
        return null;
    }

    public PropertyName findNameForDeserialization(AnnotatedMember annotatedMember) {
        return null;
    }

    public PropertyName findNameForSerialization(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findNamingStrategy(AnnotatedClass annotatedClass) {
        return null;
    }

    public Object findNullSerializer(AnnotatedMember annotatedMember) {
        return null;
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        return null;
    }

    public JsonProperty.Access findPropertyAccess(Annotated annotated) {
        return null;
    }

    public StdTypeResolverBuilder findPropertyContentTypeResolver(MapperConfig mapperConfig, AnnotatedMember annotatedMember, TypeBase typeBase) {
        return null;
    }

    public String findPropertyDefaultValue(AnnotatedMember annotatedMember) {
        return null;
    }

    public String findPropertyDescription(AnnotatedMember annotatedMember) {
        return null;
    }

    public JsonIgnoreProperties.Value findPropertyIgnoralByName(Annotated annotated) {
        return findPropertyIgnorals(annotated);
    }

    public JsonIgnoreProperties.Value findPropertyIgnorals(Annotated annotated) {
        return JsonIgnoreProperties.Value.EMPTY;
    }

    public JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        return JsonInclude.Value.EMPTY;
    }

    public JsonIncludeProperties.Value findPropertyInclusionByName(Annotated annotated) {
        return JsonIncludeProperties.Value.ALL;
    }

    public Integer findPropertyIndex(AnnotatedMember annotatedMember) {
        return null;
    }

    public StdTypeResolverBuilder findPropertyTypeResolver(MapperConfig mapperConfig, AnnotatedMember annotatedMember, TypeBase typeBase) {
        return null;
    }

    public MemoryCacheService findReferenceType(AnnotatedMember annotatedMember) {
        return null;
    }

    public PropertyName findRootName(AnnotatedClass annotatedClass) {
        return null;
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findSerializationConverter(Annotated annotated) {
        return null;
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        return null;
    }

    public Boolean findSerializationSortAlphabetically(Annotated annotated) {
        return null;
    }

    public JsonSerialize.Typing findSerializationTyping(Annotated annotated) {
        return null;
    }

    public Object findSerializer(Annotated annotated) {
        return null;
    }

    public List findSubtypes(Annotated annotated) {
        return null;
    }

    public String findTypeName(AnnotatedClass annotatedClass) {
        return null;
    }

    public StdTypeResolverBuilder findTypeResolver(SerializationConfig serializationConfig, AnnotatedClass annotatedClass, TypeBase typeBase) {
        return null;
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        return null;
    }

    public Class[] findViews(Annotated annotated) {
        return null;
    }

    public Boolean hasAnyGetter(AnnotatedMember annotatedMember) {
        if ((annotatedMember instanceof AnnotatedMethod) && hasAnyGetterAnnotation((AnnotatedMethod) annotatedMember)) {
            return Boolean.TRUE;
        }
        return null;
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public Boolean hasAnySetter(AnnotatedMember annotatedMember) {
        return null;
    }

    public Boolean hasAsKey(AnnotatedMember annotatedMember) {
        return null;
    }

    public Boolean hasAsValue(AnnotatedMember annotatedMember) {
        if ((annotatedMember instanceof AnnotatedMethod) && hasAsValueAnnotation((AnnotatedMethod) annotatedMember)) {
            return Boolean.TRUE;
        }
        return null;
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public boolean hasCreatorAnnotation(Annotated annotated) {
        return false;
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return false;
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        return null;
    }

    public boolean isAnnotationBundle(Annotation annotation) {
        return false;
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        return null;
    }

    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return null;
    }

    public AnnotatedMethod resolveSetterConflict(AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        return null;
    }

    public VisibilityChecker$Std findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker$Std visibilityChecker$Std) {
        return visibilityChecker$Std;
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        return objectIdInfo;
    }

    public void findAndAddVirtualProperties(MapperConfig mapperConfig, AnnotatedClass annotatedClass, ArrayList arrayList) {
    }

    public String[] findEnumValues(Class cls, Enum[] enumArr, String[] strArr) {
        return strArr;
    }

    public TypeBase refineSerializationType(MapperConfig mapperConfig, Annotated annotated, TypeBase typeBase) {
        return typeBase;
    }
}
