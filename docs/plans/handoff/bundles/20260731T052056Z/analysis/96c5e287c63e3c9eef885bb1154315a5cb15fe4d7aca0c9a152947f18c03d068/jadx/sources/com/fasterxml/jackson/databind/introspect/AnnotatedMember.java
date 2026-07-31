package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnnotatedMember extends Annotated implements Serializable {
    public final transient MemoryCacheService _annotations;
    public final transient TypeResolutionContext _typeContext;

    public AnnotatedMember(TypeResolutionContext typeResolutionContext, MemoryCacheService memoryCacheService) {
        this._typeContext = typeResolutionContext;
        this._annotations = memoryCacheService;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotation getAnnotation(Class cls) {
        MemoryCacheService memoryCacheService = this._annotations;
        if (memoryCacheService == null) {
            return null;
        }
        return memoryCacheService.get(cls);
    }

    public abstract Class getDeclaringClass();

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    public abstract Member getMember();

    public abstract Object getValue(Object obj);

    public final boolean hasOneOf(Class[] clsArr) {
        MemoryCacheService memoryCacheService = this._annotations;
        if (memoryCacheService == null || ((HashMap) memoryCacheService.imageLoader) == null) {
            return false;
        }
        for (Class cls : clsArr) {
            if (((HashMap) memoryCacheService.imageLoader).containsKey(cls)) {
                return true;
            }
        }
        return false;
    }

    public abstract Annotated withAnnotations(MemoryCacheService memoryCacheService);
}
