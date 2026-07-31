package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MinimalClassNameIdResolver extends ClassNameIdResolver {
    public final String _basePackagePrefix;

    public MinimalClassNameIdResolver(TypeBase typeBase, TypeFactory typeFactory) {
        super(typeBase, typeFactory);
        String name = typeBase._class.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            this._basePackagePrefix = ".";
        } else {
            this._basePackagePrefix = name.substring(0, lastIndexOf + 1);
            name.substring(0, lastIndexOf);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver, com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public final String idFromValue(Object obj) {
        String name = obj.getClass().getName();
        return name.startsWith(this._basePackagePrefix) ? name.substring(r1.length() - 1) : name;
    }
}
