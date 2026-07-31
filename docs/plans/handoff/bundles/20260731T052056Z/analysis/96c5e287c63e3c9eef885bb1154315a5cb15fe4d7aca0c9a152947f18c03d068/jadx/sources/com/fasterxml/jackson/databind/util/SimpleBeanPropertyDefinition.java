package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.VirtualAnnotatedMember;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleBeanPropertyDefinition extends BeanPropertyDefinition {
    public final PropertyName _fullName;
    public final JsonInclude.Value _inclusion;
    public final VirtualAnnotatedMember _member;
    public final PropertyMetadata _metadata;

    public SimpleBeanPropertyDefinition(PropertyNamingStrategy propertyNamingStrategy, VirtualAnnotatedMember virtualAnnotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Value value) {
        this._member = virtualAnnotatedMember;
        this._fullName = propertyName;
        this._metadata = propertyMetadata == null ? PropertyMetadata.STD_OPTIONAL : propertyMetadata;
        this._inclusion = value;
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig mapperConfig, VirtualAnnotatedMember virtualAnnotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Include include) {
        JsonInclude.Value value;
        JsonInclude.Include include2;
        if (include == null || include == (include2 = JsonInclude.Include.USE_DEFAULTS)) {
            value = BeanPropertyDefinition.EMPTY_INCLUDE;
        } else {
            JsonInclude.Value value2 = JsonInclude.Value.EMPTY;
            value = include != include2 ? new JsonInclude.Value(include, null, null, null) : JsonInclude.Value.EMPTY;
        }
        return new SimpleBeanPropertyDefinition(mapperConfig.getAnnotationIntrospector(), virtualAnnotatedMember, propertyName, propertyMetadata, value);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final JsonInclude.Value findInclusion() {
        return this._inclusion;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedParameter getConstructorParameter() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedField getField() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedMethod getGetter() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final PropertyMetadata getMetadata() {
        return this._metadata;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final String getName() {
        return this._fullName._simpleName;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final Class getRawPrimaryType() {
        return this._member._type._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedMethod getSetter() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final boolean isExplicitlyIncluded() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final void getWrapperName() {
    }
}
