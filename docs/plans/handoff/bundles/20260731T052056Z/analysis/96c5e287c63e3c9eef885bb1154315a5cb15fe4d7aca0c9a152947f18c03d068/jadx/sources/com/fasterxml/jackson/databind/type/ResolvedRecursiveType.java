package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ResolvedRecursiveType extends TypeBase {
    public TypeBase _referencedType;

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBindings getBindings() {
        TypeBase typeBase = this._referencedType;
        return typeBase != null ? typeBase.getBindings() : this._bindings;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getErasedSignature(StringBuilder sb) {
        TypeBase typeBase = this._referencedType;
        return typeBase != null ? typeBase.getErasedSignature(sb) : sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase typeBase = this._referencedType;
        if (typeBase != null) {
            return typeBase.getErasedSignature(sb);
        }
        sb.append("?");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getSuperClass() {
        TypeBase typeBase = this._referencedType;
        return typeBase != null ? typeBase.getSuperClass() : this._superClass;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return null;
    }

    @Override // androidx.work.Operation$State
    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[recursive type; ");
        TypeBase typeBase = this._referencedType;
        if (typeBase == null) {
            sb.append("UNRESOLVED");
        } else {
            sb.append(typeBase._class.getName());
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withStaticTyping() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        return this;
    }
}
