package com.fasterxml.jackson.databind.type;

import androidx.work.Operation$State;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import java.io.Serializable;
import java.lang.reflect.Type;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeBase extends Operation$State implements JsonSerializable, Serializable, Type {
    public static final TypeBindings NO_BINDINGS = TypeBindings.EMPTY;
    public final boolean _asStatic;
    public final TypeBindings _bindings;
    public final Class _class;
    public final int _hash;
    public final TypeBase _superClass;
    public final TypeBase[] _superInterfaces;
    public final Object _typeHandler;
    public final Object _valueHandler;

    public TypeBase(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr, int i, Object obj, Object obj2, boolean z) {
        super(false);
        this._class = cls;
        this._hash = cls.getName().hashCode() + i;
        this._valueHandler = obj;
        this._typeHandler = obj2;
        this._asStatic = z;
        this._bindings = typeBindings == null ? NO_BINDINGS : typeBindings;
        this._superClass = typeBase;
        this._superInterfaces = typeBaseArr;
    }

    public static void _classSignature(Class cls, StringBuilder sb, boolean z) {
        if (!cls.isPrimitive()) {
            sb.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                if (charAt == '.') {
                    charAt = '/';
                }
                sb.append(charAt);
            }
            if (z) {
                sb.append(';');
                return;
            }
            return;
        }
        if (cls == Boolean.TYPE) {
            sb.append('Z');
            return;
        }
        if (cls == Byte.TYPE) {
            sb.append('B');
            return;
        }
        if (cls == Short.TYPE) {
            sb.append('S');
            return;
        }
        if (cls == Character.TYPE) {
            sb.append('C');
            return;
        }
        if (cls == Integer.TYPE) {
            sb.append('I');
            return;
        }
        if (cls == Long.TYPE) {
            sb.append('J');
            return;
        }
        if (cls == Float.TYPE) {
            sb.append('F');
            return;
        }
        if (cls == Double.TYPE) {
            sb.append('D');
        } else if (cls == Void.TYPE) {
            sb.append('V');
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unrecognized primitive type: ".concat(cls.getName()));
        }
    }

    public String buildCanonicalName() {
        return this._class.getName();
    }

    public abstract boolean equals(Object obj);

    public final TypeBase findSuperType(Class cls) {
        TypeBase findSuperType;
        TypeBase[] typeBaseArr;
        if (cls == this._class) {
            return this;
        }
        if (cls.isInterface() && (typeBaseArr = this._superInterfaces) != null) {
            for (TypeBase typeBase : typeBaseArr) {
                TypeBase findSuperType2 = typeBase.findSuperType(cls);
                if (findSuperType2 != null) {
                    return findSuperType2;
                }
            }
        }
        TypeBase typeBase2 = this._superClass;
        if (typeBase2 == null || (findSuperType = typeBase2.findSuperType(cls)) == null) {
            return null;
        }
        return findSuperType;
    }

    public TypeBindings getBindings() {
        return this._bindings;
    }

    public TypeBase getContentType() {
        return null;
    }

    public abstract StringBuilder getErasedSignature(StringBuilder sb);

    public abstract StringBuilder getGenericSignature(StringBuilder sb);

    public TypeBase getKeyType() {
        return null;
    }

    @Override // androidx.work.Operation$State
    /* renamed from: getReferencedType$1, reason: merged with bridge method [inline-methods] */
    public TypeBase getReferencedType() {
        return null;
    }

    public TypeBase getSuperClass() {
        return this._superClass;
    }

    public boolean hasGenericTypes() {
        return this._bindings._types.length > 0;
    }

    public boolean hasHandlers() {
        return (this._typeHandler == null && this._valueHandler == null) ? false : true;
    }

    public final boolean hasRawClass(Class cls) {
        return this._class == cls;
    }

    public final int hashCode() {
        return this._hash;
    }

    public abstract boolean isContainerType();

    public final boolean isJavaLangObject() {
        return this._class == Object.class;
    }

    public final boolean isTypeOrSubTypeOf(Class cls) {
        Class cls2 = this._class;
        return cls2 == cls || cls.isAssignableFrom(cls2);
    }

    public abstract TypeBase refine(Class cls, TypeBindings typeBindings, TypeBase typeBase, TypeBase[] typeBaseArr);

    public abstract TypeBase withContentType(TypeBase typeBase);

    public abstract TypeBase withContentTypeHandler(TypeSerializerBase typeSerializerBase);

    public TypeBase withHandlersFrom(TypeBase typeBase) {
        Object obj = typeBase._typeHandler;
        TypeBase withTypeHandler = obj != this._typeHandler ? withTypeHandler(obj) : this;
        Object obj2 = typeBase._valueHandler;
        return obj2 != this._valueHandler ? withTypeHandler.withValueHandler(obj2) : withTypeHandler;
    }

    public abstract TypeBase withStaticTyping();

    public abstract TypeBase withTypeHandler(Object obj);

    public abstract TypeBase withValueHandler(Object obj);
}
