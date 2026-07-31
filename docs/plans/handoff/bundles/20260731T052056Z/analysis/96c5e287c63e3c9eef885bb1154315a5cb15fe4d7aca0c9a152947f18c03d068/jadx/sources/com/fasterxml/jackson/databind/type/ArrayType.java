package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import java.lang.reflect.Array;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayType extends TypeBase {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final TypeBase _componentType;
    public final Object _emptyArray;

    public ArrayType(TypeBase typeBase, TypeBindings typeBindings, Object obj, Object obj2, Object obj3, boolean z) {
        super(obj.getClass(), typeBindings, null, null, typeBase._hash, obj2, obj3, z);
        this._componentType = typeBase;
        this._emptyArray = obj;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == ArrayType.class) {
            return this._componentType.equals(((ArrayType) obj)._componentType);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase getContentType() {
        return this._componentType;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getErasedSignature(StringBuilder sb) {
        sb.append('[');
        return this._componentType.getErasedSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final StringBuilder getGenericSignature(StringBuilder sb) {
        sb.append('[');
        return this._componentType.getGenericSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean hasGenericTypes() {
        return this._componentType.hasGenericTypes();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean hasHandlers() {
        return super.hasHandlers() || this._componentType.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return null;
    }

    @Override // androidx.work.Operation$State
    public final String toString() {
        return "[array type, component type: " + this._componentType + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentType(TypeBase typeBase) {
        return new ArrayType(typeBase, this._bindings, Array.newInstance((Class<?>) typeBase._class, 0), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        TypeBase typeBase = this._componentType;
        if (typeSerializerBase == typeBase._typeHandler) {
            return this;
        }
        return new ArrayType(typeBase.withTypeHandler(typeSerializerBase), this._bindings, this._emptyArray, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withStaticTyping() {
        if (this._asStatic) {
            return this;
        }
        return new ArrayType(this._componentType.withStaticTyping(), this._bindings, this._emptyArray, this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withTypeHandler(Object obj) {
        if (obj == this._typeHandler) {
            return this;
        }
        return new ArrayType(this._componentType, this._bindings, this._emptyArray, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final TypeBase withValueHandler(Object obj) {
        if (obj == this._valueHandler) {
            return this;
        }
        return new ArrayType(this._componentType, this._bindings, this._emptyArray, obj, this._typeHandler, this._asStatic);
    }
}
