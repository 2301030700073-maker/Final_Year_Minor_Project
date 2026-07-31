package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CollectionType extends TypeBase {
    public final TypeBase _elementType;

    public CollectionType(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr, TypeBase typeBase2, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, typeBase, typeBaseArr, typeBase2._hash, obj, obj2, z);
        this._elementType = typeBase2;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final String buildCanonicalName() {
        Class cls = this._class;
        StringBuilder sb = new StringBuilder(cls.getName());
        TypeBase typeBase = this._elementType;
        if (typeBase != null && cls.getTypeParameters().length == 1) {
            sb.append('<');
            sb.append(typeBase.buildCanonicalName());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != CollectionType.class) {
            return false;
        }
        CollectionType collectionType = (CollectionType) obj;
        return this._class == collectionType._class && this._elementType.equals(collectionType._elementType);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getContentType() {
        return this._elementType;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getErasedSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, true);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        sb.append('<');
        this._elementType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean hasHandlers() {
        return super.hasHandlers() || this._elementType.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return new CollectionType(cls, typeBindings, typeBase, typeBaseArr, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // androidx.work.Operation$State
    public final String toString() {
        return "[collection type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        if (this._elementType == typeBase) {
            return this;
        }
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, typeBase, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withTypeHandler(typeSerializerBase), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withHandlersFrom(TypeBase typeBase) {
        TypeBase typeBase2;
        TypeBase withHandlersFrom;
        TypeBase withHandlersFrom2 = super.withHandlersFrom(typeBase);
        TypeBase contentType = typeBase.getContentType();
        return (contentType == null || (withHandlersFrom = (typeBase2 = this._elementType).withHandlersFrom(contentType)) == typeBase2) ? withHandlersFrom2 : withHandlersFrom2.withContentType(withHandlersFrom);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withStaticTyping() {
        if (this._asStatic) {
            return this;
        }
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, obj, this._typeHandler, this._asStatic);
    }
}
