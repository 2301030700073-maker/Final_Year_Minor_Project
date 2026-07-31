package com.squareup.moshi;

import com.squareup.moshi.MapJsonAdapter;
import com.squareup.moshi.internal.Util;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Types {
    public static final MapJsonAdapter.AnonymousClass1 FACTORY = new MapJsonAdapter.AnonymousClass1(5);
    public static final StandardJsonAdapters$2 BOOLEAN_JSON_ADAPTER = new StandardJsonAdapters$2(0);
    public static final StandardJsonAdapters$2 BYTE_JSON_ADAPTER = new StandardJsonAdapters$2(2);
    public static final StandardJsonAdapters$2 CHARACTER_JSON_ADAPTER = new StandardJsonAdapters$2(3);
    public static final StandardJsonAdapters$2 DOUBLE_JSON_ADAPTER = new StandardJsonAdapters$2(4);
    public static final StandardJsonAdapters$2 FLOAT_JSON_ADAPTER = new StandardJsonAdapters$2(5);
    public static final StandardJsonAdapters$2 INTEGER_JSON_ADAPTER = new StandardJsonAdapters$2(6);
    public static final StandardJsonAdapters$2 LONG_JSON_ADAPTER = new StandardJsonAdapters$2(7);
    public static final StandardJsonAdapters$2 SHORT_JSON_ADAPTER = new StandardJsonAdapters$2(8);
    public static final StandardJsonAdapters$2 STRING_JSON_ADAPTER = new StandardJsonAdapters$2(1);

    public static Type collectionElementType(Type type) {
        if (!Collection.class.isAssignableFrom(Collection.class)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return null;
        }
        Type resolve = Util.resolve(type, Collection.class, Util.getGenericSupertype(type, Collection.class, Collection.class), new LinkedHashSet());
        if (resolve instanceof WildcardType) {
            resolve = ((WildcardType) resolve).getUpperBounds()[0];
        }
        return resolve instanceof ParameterizedType ? ((ParameterizedType) resolve).getActualTypeArguments()[0] : Object.class;
    }

    public static boolean equals(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type2 instanceof GenericArrayType ? equals(((Class) type).getComponentType(), ((GenericArrayType) type2).getGenericComponentType()) : type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType instanceof Util.ParameterizedTypeImpl ? ((Util.ParameterizedTypeImpl) parameterizedType).typeArguments : parameterizedType.getActualTypeArguments(), parameterizedType2 instanceof Util.ParameterizedTypeImpl ? ((Util.ParameterizedTypeImpl) parameterizedType2).typeArguments : parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof Class) {
                return equals(((Class) type2).getComponentType(), ((GenericArrayType) type).getGenericComponentType());
            }
            if (type2 instanceof GenericArrayType) {
                return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static String getPath(int i, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb = new StringBuilder("$");
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = strArr[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public static Class getRawType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return getRawType(((WildcardType) type).getUpperBounds()[0]);
        }
        Regex$$ExternalSyntheticBUOutline0.m$1("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
        return null;
    }

    public static Util.ParameterizedTypeImpl newParameterizedType(Type... typeArr) {
        if (typeArr.length != 0) {
            return new Util.ParameterizedTypeImpl(null, Map.class, typeArr);
        }
        Regex$$ExternalSyntheticBUOutline0.m$2(Map.class, "Missing type arguments for ");
        return null;
    }

    public static int rangeCheckNextInt(JsonUtf8Reader jsonUtf8Reader, String str, int i, int i2) {
        int nextInt = jsonUtf8Reader.nextInt();
        if (nextInt >= i && nextInt <= i2) {
            return nextInt;
        }
        throw new JsonDataException("Expected " + str + " but was " + nextInt + " at path " + jsonUtf8Reader.getPath());
    }

    public abstract Object newInstance();
}
