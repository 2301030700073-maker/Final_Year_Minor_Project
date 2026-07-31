package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReferenceType extends SimpleType {
    public final TypeBase _anchorType;
    public final TypeBase _referencedType;

    public ReferenceType(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr, TypeBase typeBase2, TypeBase typeBase3, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, typeBase, typeBaseArr, Objects.hashCode(typeBase2), obj, obj2, z);
        this._referencedType = typeBase2;
        this._anchorType = typeBase3 == null ? this : typeBase3;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final String buildCanonicalName() {
        Class cls = this._class;
        StringBuilder sb = new StringBuilder(cls.getName());
        TypeBase typeBase = this._referencedType;
        if (typeBase != null && cls.getTypeParameters().length == 1) {
            sb.append('<');
            sb.append(typeBase.buildCanonicalName());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != ReferenceType.class) {
            return false;
        }
        ReferenceType referenceType = (ReferenceType) obj;
        if (referenceType._class != this._class) {
            return false;
        }
        return this._referencedType.equals(referenceType._referencedType);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getContentType() {
        return this._referencedType;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getErasedSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, true);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        sb.append('<');
        StringBuilder genericSignature = this._referencedType.getGenericSignature(sb);
        genericSignature.append(">;");
        return genericSignature;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, androidx.work.Operation$State
    public final TypeBase getReferencedType() {
        return this._referencedType;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    /* renamed from: getReferencedType$1 */
    public final TypeBase getReferencedType() {
        return this._referencedType;
    }

    @Override // androidx.work.Operation$State
    public final boolean isReferenceType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return new ReferenceType(cls, this._bindings, typeBase, typeBaseArr, this._referencedType, this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, androidx.work.Operation$State
    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[reference type, class ");
        sb.append(buildCanonicalName());
        sb.append('<');
        sb.append(this._referencedType);
        sb.append(">]");
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        if (this._referencedType == typeBase) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, typeBase, this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        TypeBase typeBase = this._referencedType;
        if (typeSerializerBase == typeBase._typeHandler) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, typeBase.withTypeHandler(typeSerializerBase), this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final ReferenceType withStaticTyping() {
        if (this._asStatic) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType.withStaticTyping(), this._anchorType, this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final SimpleType withTypeHandler(Object obj) {
        if (obj == this._typeHandler) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final SimpleType withValueHandler(Object obj) {
        if (obj == this._valueHandler) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, obj, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        if (obj == this._typeHandler) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        if (obj == this._valueHandler) {
            return this;
        }
        return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, obj, this._typeHandler, this._asStatic);
    }
}
