package com.fasterxml.jackson.databind.type;

import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.TypeVariable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeBindings implements Serializable {
    public static final TypeBindings EMPTY;
    public static final String[] NO_STRINGS;
    public static final TypeBase[] NO_TYPES;
    public final int _hashCode;
    public final String[] _names;
    public final TypeBase[] _types;
    public final String[] _unboundVariables;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AsKey {
        public final int _hash;
        public final TypeBase[] _params;
        public final Class _raw;

        public AsKey(Class cls, TypeBase[] typeBaseArr, int i) {
            this._raw = cls;
            this._params = typeBaseArr;
            this._hash = i;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == AsKey.class) {
                AsKey asKey = (AsKey) obj;
                if (this._hash == asKey._hash && this._raw == asKey._raw) {
                    TypeBase[] typeBaseArr = asKey._params;
                    TypeBase[] typeBaseArr2 = this._params;
                    int length = typeBaseArr2.length;
                    if (length == typeBaseArr.length) {
                        for (int i = 0; i < length; i++) {
                            if (typeBaseArr2[i].equals(typeBaseArr[i])) {
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            return this._hash;
        }

        public final String toString() {
            return this._raw.getName().concat("<>");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class TypeParamStash {
        public static final TypeVariable[] VARS_ABSTRACT_LIST = AbstractList.class.getTypeParameters();
        public static final TypeVariable[] VARS_COLLECTION = Collection.class.getTypeParameters();
        public static final TypeVariable[] VARS_ITERABLE = Iterable.class.getTypeParameters();
        public static final TypeVariable[] VARS_LIST = List.class.getTypeParameters();
        public static final TypeVariable[] VARS_ARRAY_LIST = ArrayList.class.getTypeParameters();
        public static final TypeVariable[] VARS_MAP = Map.class.getTypeParameters();
        public static final TypeVariable[] VARS_HASH_MAP = HashMap.class.getTypeParameters();
        public static final TypeVariable[] VARS_LINKED_HASH_MAP = LinkedHashMap.class.getTypeParameters();
    }

    static {
        String[] strArr = new String[0];
        NO_STRINGS = strArr;
        TypeBase[] typeBaseArr = new TypeBase[0];
        NO_TYPES = typeBaseArr;
        EMPTY = new TypeBindings(strArr, typeBaseArr, null);
    }

    public TypeBindings(String[] strArr, TypeBase[] typeBaseArr, String[] strArr2) {
        strArr = strArr == null ? NO_STRINGS : strArr;
        this._names = strArr;
        typeBaseArr = typeBaseArr == null ? NO_TYPES : typeBaseArr;
        this._types = typeBaseArr;
        if (strArr.length != typeBaseArr.length) {
            StringBuilder sb = new StringBuilder("Mismatching names (");
            sb.append(strArr.length);
            sb.append("), types (");
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(sb, typeBaseArr.length, ")"));
            throw null;
        }
        int length = typeBaseArr.length;
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            i += this._types[i2]._hash;
        }
        this._unboundVariables = strArr2;
        this._hashCode = i;
    }

    public static TypeBindings create(Class cls, TypeBase[] typeBaseArr) {
        String[] strArr;
        int length = typeBaseArr.length;
        if (length == 1) {
            return create(typeBaseArr[0], cls);
        }
        if (length == 2) {
            return create(cls, typeBaseArr[0], typeBaseArr[1]);
        }
        TypeVariable[] typeParameters = cls.getTypeParameters();
        if (typeParameters == null || typeParameters.length == 0) {
            strArr = NO_STRINGS;
        } else {
            int length2 = typeParameters.length;
            strArr = new String[length2];
            for (int i = 0; i < length2; i++) {
                strArr[i] = typeParameters[i].getName();
            }
        }
        if (strArr.length == typeBaseArr.length) {
            return new TypeBindings(strArr, typeBaseArr, null);
        }
        StringBuilder sb = new StringBuilder("Cannot create TypeBindings for class ");
        sb.append(cls.getName());
        sb.append(" with ");
        sb.append(typeBaseArr.length);
        sb.append(" type parameter");
        sb.append(typeBaseArr.length == 1 ? "" : "s");
        sb.append(": class expects ");
        sb.append(strArr.length);
        throw new IllegalArgumentException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, TypeBindings.class)) {
            return false;
        }
        TypeBase[] typeBaseArr = this._types;
        int length = typeBaseArr.length;
        TypeBase[] typeBaseArr2 = ((TypeBindings) obj)._types;
        if (length != typeBaseArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!typeBaseArr2[i].equals(typeBaseArr[i])) {
                return false;
            }
        }
        return true;
    }

    public final TypeBase getBoundType(int i) {
        if (i < 0) {
            return null;
        }
        TypeBase[] typeBaseArr = this._types;
        if (i >= typeBaseArr.length) {
            return null;
        }
        return typeBaseArr[i];
    }

    public final List getTypeParameters() {
        TypeBase[] typeBaseArr = this._types;
        return typeBaseArr.length == 0 ? Collections.EMPTY_LIST : Arrays.asList(typeBaseArr);
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public final boolean isEmpty() {
        return this._types.length == 0;
    }

    public final String toString() {
        TypeBase[] typeBaseArr = this._types;
        if (typeBaseArr.length == 0) {
            return "<>";
        }
        StringBuilder sb = new StringBuilder("<");
        int length = typeBaseArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            TypeBase typeBase = typeBaseArr[i];
            StringBuilder sb2 = new StringBuilder(40);
            typeBase.getGenericSignature(sb2);
            sb.append(sb2.toString());
        }
        sb.append('>');
        return sb.toString();
    }

    public static TypeBindings create(TypeBase typeBase, Class cls) {
        TypeVariable[] typeParameters;
        if (cls == Collection.class) {
            typeParameters = TypeParamStash.VARS_COLLECTION;
        } else if (cls == List.class) {
            typeParameters = TypeParamStash.VARS_LIST;
        } else if (cls == ArrayList.class) {
            typeParameters = TypeParamStash.VARS_ARRAY_LIST;
        } else if (cls == AbstractList.class) {
            typeParameters = TypeParamStash.VARS_ABSTRACT_LIST;
        } else if (cls == Iterable.class) {
            typeParameters = TypeParamStash.VARS_ITERABLE;
        } else {
            TypeVariable[] typeVariableArr = TypeParamStash.VARS_ABSTRACT_LIST;
            typeParameters = cls.getTypeParameters();
        }
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 1) {
            return new TypeBindings(new String[]{typeParameters[0].getName()}, new TypeBase[]{typeBase}, null);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m(length, cls.getName(), " with 1 type parameter: class expects ");
        return null;
    }

    public static TypeBindings create(Class cls, TypeBase typeBase, TypeBase typeBase2) {
        TypeVariable[] typeParameters;
        if (cls == Map.class) {
            typeParameters = TypeParamStash.VARS_MAP;
        } else if (cls == HashMap.class) {
            typeParameters = TypeParamStash.VARS_HASH_MAP;
        } else if (cls == LinkedHashMap.class) {
            typeParameters = TypeParamStash.VARS_LINKED_HASH_MAP;
        } else {
            TypeVariable[] typeVariableArr = TypeParamStash.VARS_ABSTRACT_LIST;
            typeParameters = cls.getTypeParameters();
        }
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 2) {
            return new TypeBindings(new String[]{typeParameters[0].getName(), typeParameters[1].getName()}, new TypeBase[]{typeBase, typeBase2}, null);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m(length, cls.getName(), " with 2 type parameters: class expects ");
        return null;
    }
}
