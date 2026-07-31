package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.PropertyMetadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BeanPropertyDefinition {
    public static final JsonInclude.Value EMPTY_INCLUDE = JsonInclude.Value.EMPTY;

    public boolean couldDeserialize() {
        Annotated constructorParameter = getConstructorParameter();
        if (constructorParameter == null && (constructorParameter = getSetter()) == null) {
            constructorParameter = getField();
        }
        return constructorParameter != null;
    }

    public abstract JsonInclude.Value findInclusion();

    public MemoryCacheService findReferenceType() {
        return null;
    }

    public Class[] findViews() {
        return null;
    }

    public final AnnotatedMember getAccessor() {
        AnnotatedMethod getter = getGetter();
        return getter == null ? getField() : getter;
    }

    public abstract AnnotatedParameter getConstructorParameter();

    public abstract AnnotatedField getField();

    public abstract AnnotatedMethod getGetter();

    public abstract PropertyMetadata getMetadata();

    public abstract String getName();

    public abstract Class getRawPrimaryType();

    public abstract AnnotatedMethod getSetter();

    public abstract void getWrapperName();

    public abstract boolean isExplicitlyIncluded();

    public boolean isTypeId() {
        return false;
    }
}
