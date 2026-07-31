package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlaceholderForType extends TypeBase {
    public TypeBase _actualType;
    public final int _ordinal;

    public PlaceholderForType(int i) {
        super(Object.class, TypeBindings.EMPTY, TypeFactory.unknownType(), null, 1, null, null, false);
        this._ordinal = i;
    }

    public static void _unsupported() {
        throw new UnsupportedOperationException("Operation should not be attempted on ".concat(PlaceholderForType.class.getName()));
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final String buildCanonicalName() {
        return toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getErasedSignature(StringBuilder sb) {
        sb.append('$');
        sb.append(this._ordinal + 1);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getGenericSignature(StringBuilder sb) {
        getErasedSignature(sb);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        _unsupported();
        throw null;
    }

    @Override // androidx.work.Operation$State
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        getErasedSignature(sb);
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        _unsupported();
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        _unsupported();
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withStaticTyping() {
        _unsupported();
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        _unsupported();
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        _unsupported();
        throw null;
    }
}
