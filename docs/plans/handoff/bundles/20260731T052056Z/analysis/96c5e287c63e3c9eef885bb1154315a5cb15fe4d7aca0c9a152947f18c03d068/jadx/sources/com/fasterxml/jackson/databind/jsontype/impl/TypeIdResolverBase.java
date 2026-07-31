package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeIdResolverBase {
    public final TypeBase _baseType;
    public final TypeFactory _typeFactory;

    public TypeIdResolverBase(TypeBase typeBase, TypeFactory typeFactory) {
        this._baseType = typeBase;
        this._typeFactory = typeFactory;
    }

    public abstract String idFromValue(Object obj);

    public abstract String idFromValueAndType(Object obj, Class cls);
}
