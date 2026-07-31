package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnnotatedWithParams extends AnnotatedMember {
    public final MemoryCacheService[] _paramAnnotations;

    public AnnotatedWithParams(TypeResolutionContext typeResolutionContext, MemoryCacheService memoryCacheService, MemoryCacheService[] memoryCacheServiceArr) {
        super(typeResolutionContext, memoryCacheService);
        this._paramAnnotations = memoryCacheServiceArr;
    }

    public final AnnotatedParameter getParameter(int i) {
        TypeBase parameterType = getParameterType(i);
        MemoryCacheService[] memoryCacheServiceArr = this._paramAnnotations;
        return new AnnotatedParameter(this, parameterType, this._typeContext, (memoryCacheServiceArr == null || i < 0 || i >= memoryCacheServiceArr.length) ? null : memoryCacheServiceArr[i], i);
    }

    public abstract TypeBase getParameterType(int i);
}
