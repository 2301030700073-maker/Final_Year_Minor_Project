package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.type.TypeBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeKey {
    public final Class _class;
    public final int _hashCode;
    public final boolean _isTyped;
    public final TypeBase _type;

    public TypeKey(Class cls, boolean z) {
        this._class = cls;
        this._type = null;
        this._isTyped = z;
        this._hashCode = z ? cls.getName().hashCode() + 1 : cls.getName().hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != TypeKey.class) {
            return false;
        }
        TypeKey typeKey = (TypeKey) obj;
        if (typeKey._isTyped != this._isTyped) {
            return false;
        }
        Class cls = this._class;
        return cls != null ? typeKey._class == cls : this._type.equals(typeKey._type);
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public final String toString() {
        boolean z = this._isTyped;
        Class cls = this._class;
        if (cls != null) {
            return "{class: " + cls.getName() + ", typed? " + z + "}";
        }
        return "{type: " + this._type + ", typed? " + z + "}";
    }

    public TypeKey(TypeBase typeBase) {
        this._type = typeBase;
        this._class = null;
        this._isTyped = false;
        this._hashCode = typeBase._hash - 1;
    }
}
