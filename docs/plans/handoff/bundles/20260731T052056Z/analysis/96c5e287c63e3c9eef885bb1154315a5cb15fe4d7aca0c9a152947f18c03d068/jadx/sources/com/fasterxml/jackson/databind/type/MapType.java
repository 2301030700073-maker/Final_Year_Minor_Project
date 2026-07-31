package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapType extends TypeBase {
    public final TypeBase _keyType;
    public final TypeBase _valueType;

    public MapType(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr, TypeBase typeBase2, TypeBase typeBase3, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, typeBase, typeBaseArr, typeBase2._hash ^ typeBase3._hash, obj, obj2, z);
        this._keyType = typeBase2;
        this._valueType = typeBase3;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final String buildCanonicalName() {
        Class cls = this._class;
        StringBuilder sb = new StringBuilder(cls.getName());
        TypeBase typeBase = this._keyType;
        if (typeBase != null && cls.getTypeParameters().length == 2) {
            sb.append('<');
            sb.append(typeBase.buildCanonicalName());
            sb.append(',');
            sb.append(this._valueType.buildCanonicalName());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != MapType.class) {
            return false;
        }
        MapType mapType = (MapType) obj;
        return this._class == mapType._class && this._keyType.equals(mapType._keyType) && this._valueType.equals(mapType._valueType);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getContentType() {
        return this._valueType;
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
        this._keyType.getGenericSignature(sb);
        this._valueType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getKeyType() {
        return this._keyType;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean hasHandlers() {
        return super.hasHandlers() || this._valueType.hasHandlers() || this._keyType.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return new MapType(cls, typeBindings, typeBase, typeBaseArr, this._keyType, this._valueType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // androidx.work.Operation$State
    public final String toString() {
        return "[map type; class " + this._class.getName() + ", " + this._keyType + " -> " + this._valueType + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        if (this._valueType == typeBase) {
            return this;
        }
        return new MapType(this._class, this._bindings, this._superClass, this._superInterfaces, this._keyType, typeBase, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        return new MapType(this._class, this._bindings, this._superClass, this._superInterfaces, this._keyType, this._valueType.withTypeHandler(typeSerializerBase), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withHandlersFrom(TypeBase typeBase) {
        TypeBase typeBase2;
        TypeBase withHandlersFrom;
        TypeBase withHandlersFrom2 = super.withHandlersFrom(typeBase);
        TypeBase keyType = typeBase.getKeyType();
        boolean z = withHandlersFrom2 instanceof MapType;
        TypeBase typeBase3 = withHandlersFrom2;
        typeBase3 = withHandlersFrom2;
        if (z && keyType != null) {
            TypeBase typeBase4 = this._keyType;
            TypeBase withHandlersFrom3 = typeBase4.withHandlersFrom(keyType);
            typeBase3 = withHandlersFrom2;
            if (withHandlersFrom3 != typeBase4) {
                MapType mapType = (MapType) withHandlersFrom2;
                TypeBase typeBase5 = mapType._keyType;
                typeBase3 = mapType;
                if (withHandlersFrom3 != typeBase5) {
                    typeBase3 = new MapType(mapType._class, mapType._bindings, mapType._superClass, mapType._superInterfaces, withHandlersFrom3, mapType._valueType, mapType._valueHandler, mapType._typeHandler, mapType._asStatic);
                }
            }
        }
        TypeBase contentType = typeBase.getContentType();
        return (contentType == null || (withHandlersFrom = (typeBase2 = this._valueType).withHandlersFrom(contentType)) == typeBase2) ? typeBase3 : typeBase3.withContentType(withHandlersFrom);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withStaticTyping() {
        if (this._asStatic) {
            return this;
        }
        return new MapType(this._class, this._bindings, this._superClass, this._superInterfaces, this._keyType.withStaticTyping(), this._valueType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        return new MapType(this._class, this._bindings, this._superClass, this._superInterfaces, this._keyType, this._valueType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        return new MapType(this._class, this._bindings, this._superClass, this._superInterfaces, this._keyType, this._valueType, obj, this._typeHandler, this._asStatic);
    }
}
