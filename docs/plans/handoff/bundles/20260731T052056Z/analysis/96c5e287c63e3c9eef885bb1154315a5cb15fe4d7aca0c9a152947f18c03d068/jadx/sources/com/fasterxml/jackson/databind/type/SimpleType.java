package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class SimpleType extends TypeBase {
    public SimpleType(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        super(cls, typeBindings, typeBase, typeBaseArr, 0, null, null, false);
    }

    public static SimpleType constructUnsafe(Class cls) {
        return new SimpleType(cls, null, null, null, 0, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public String buildCanonicalName() {
        Class cls = this._class;
        StringBuilder sb = new StringBuilder(cls.getName());
        TypeBindings typeBindings = this._bindings;
        int length = typeBindings._types.length;
        if (length > 0 && cls.getTypeParameters().length == length) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                TypeBase boundType = typeBindings.getBoundType(i);
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(boundType.buildCanonicalName());
            }
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        SimpleType simpleType = (SimpleType) obj;
        if (simpleType._class != this._class) {
            return false;
        }
        return this._bindings.equals(simpleType._bindings);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public StringBuilder getErasedSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, true);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        TypeBindings typeBindings = this._bindings;
        int length = typeBindings._types.length;
        if (length > 0) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                sb = typeBindings.getBoundType(i).getGenericSignature(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public final boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr) {
        return null;
    }

    @Override // androidx.work.Operation$State
    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ");
        sb.append(buildCanonicalName());
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public TypeBase withContentType(TypeBase typeBase) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContentType()");
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenTypeHandler()");
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public SimpleType withStaticTyping() {
        return this._asStatic ? this : new SimpleType(this._class, this._bindings, this._superClass, this._superInterfaces, 0, this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public SimpleType withTypeHandler(Object obj) {
        if (this._typeHandler == obj) {
            return this;
        }
        return new SimpleType(this._class, this._bindings, this._superClass, this._superInterfaces, 0, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public SimpleType withValueHandler(Object obj) {
        if (obj == this._valueHandler) {
            return this;
        }
        return new SimpleType(this._class, this._bindings, this._superClass, this._superInterfaces, 0, obj, this._typeHandler, this._asStatic);
    }

    public SimpleType(Class cls) {
        this(cls, TypeBindings.EMPTY, null, null);
    }
}
