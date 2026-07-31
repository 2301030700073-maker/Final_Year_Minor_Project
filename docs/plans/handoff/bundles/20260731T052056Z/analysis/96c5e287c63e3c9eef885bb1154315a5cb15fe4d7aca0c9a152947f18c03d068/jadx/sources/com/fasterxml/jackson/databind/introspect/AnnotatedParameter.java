package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Member;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedParameter extends AnnotatedMember {
    public final int _index;
    public final AnnotatedWithParams _owner;
    public final TypeBase _type;

    public AnnotatedParameter(AnnotatedWithParams annotatedWithParams, TypeBase typeBase, TypeResolutionContext typeResolutionContext, MemoryCacheService memoryCacheService, int i) {
        super(typeResolutionContext, memoryCacheService);
        this._owner = annotatedWithParams;
        this._type = typeBase;
        this._index = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, AnnotatedParameter.class)) {
            return false;
        }
        AnnotatedParameter annotatedParameter = (AnnotatedParameter) obj;
        return annotatedParameter._owner.equals(this._owner) && annotatedParameter._index == this._index;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Class getDeclaringClass() {
        return this._owner.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Member getMember() {
        return this._owner.getMember();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._type._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._type;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Object getValue(Object obj) {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor parameter of ".concat(this._owner.getDeclaringClass().getName()));
    }

    public final int hashCode() {
        return this._owner.hashCode() + this._index;
    }

    public final String toString() {
        return "[parameter #" + this._index + ", annotations: " + this._annotations + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Annotated withAnnotations(MemoryCacheService memoryCacheService) {
        if (memoryCacheService == this._annotations) {
            return this;
        }
        AnnotatedWithParams annotatedWithParams = this._owner;
        MemoryCacheService[] memoryCacheServiceArr = annotatedWithParams._paramAnnotations;
        int i = this._index;
        memoryCacheServiceArr[i] = memoryCacheService;
        return annotatedWithParams.getParameter(i);
    }
}
