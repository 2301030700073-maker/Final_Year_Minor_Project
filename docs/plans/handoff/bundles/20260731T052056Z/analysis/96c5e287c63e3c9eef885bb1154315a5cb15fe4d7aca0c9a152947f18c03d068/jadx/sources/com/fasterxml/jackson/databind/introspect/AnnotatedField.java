package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Member;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedField extends AnnotatedMember {
    public final transient Field _field;

    public AnnotatedField(TypeResolutionContext typeResolutionContext, Field field, MemoryCacheService memoryCacheService) {
        super(typeResolutionContext, memoryCacheService);
        this._field = field;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (ClassUtil.hasClass(obj, AnnotatedField.class)) {
            return ((AnnotatedField) obj)._field.equals(this._field);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Class getDeclaringClass() {
        return this._field.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Member getMember() {
        return this._field;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._field.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._field.getType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._typeContext.resolveType(this._field.getGenericType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Object getValue(Object obj) {
        try {
            return this._field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to getValue() for field " + this.getFullName() + ": " + e.getMessage(), e);
        }
    }

    public final int hashCode() {
        return this._field.getName().hashCode();
    }

    public final String toString() {
        return "[field " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Annotated withAnnotations(MemoryCacheService memoryCacheService) {
        return new AnnotatedField(this._typeContext, this._field, memoryCacheService);
    }
}
