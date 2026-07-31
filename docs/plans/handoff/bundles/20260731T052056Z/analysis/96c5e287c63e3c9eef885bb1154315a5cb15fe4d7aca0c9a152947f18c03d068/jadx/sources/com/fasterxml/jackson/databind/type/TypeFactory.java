package com.fasterxml.jackson.databind.type;

import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeFactory implements Serializable {
    public static final Class CLS_BOOL;
    public static final Class CLS_INT;
    public static final Class CLS_LONG;
    public static final SimpleType CORE_TYPE_BOOL;
    public static final SimpleType CORE_TYPE_CLASS;
    public static final SimpleType CORE_TYPE_COMPARABLE;
    public static final SimpleType CORE_TYPE_ENUM;
    public static final SimpleType CORE_TYPE_INT;
    public static final SimpleType CORE_TYPE_JSON_NODE;
    public static final SimpleType CORE_TYPE_LONG;
    public static final SimpleType CORE_TYPE_OBJECT;
    public static final SimpleType CORE_TYPE_STRING;
    public final LRUMap _typeCache = new LRUMap(16, 200);
    public static final TypeBase[] NO_TYPES = new TypeBase[0];
    public static final TypeFactory instance = new TypeFactory();
    public static final TypeBindings EMPTY_BINDINGS = TypeBindings.EMPTY;
    public static final Class CLS_STRING = String.class;
    public static final Class CLS_OBJECT = Object.class;
    public static final Class CLS_COMPARABLE = Comparable.class;
    public static final Class CLS_CLASS = Class.class;
    public static final Class CLS_ENUM = Enum.class;
    public static final Class CLS_JSON_NODE = JsonNode.class;

    static {
        Class cls = Boolean.TYPE;
        CLS_BOOL = cls;
        Class cls2 = Integer.TYPE;
        CLS_INT = cls2;
        Class cls3 = Long.TYPE;
        CLS_LONG = cls3;
        CORE_TYPE_BOOL = new SimpleType(cls);
        CORE_TYPE_INT = new SimpleType(cls2);
        CORE_TYPE_LONG = new SimpleType(cls3);
        CORE_TYPE_STRING = new SimpleType(String.class);
        CORE_TYPE_OBJECT = new SimpleType(Object.class);
        CORE_TYPE_COMPARABLE = new SimpleType(Comparable.class);
        CORE_TYPE_ENUM = new SimpleType(Enum.class);
        CORE_TYPE_CLASS = new SimpleType(Class.class);
        CORE_TYPE_JSON_NODE = new SimpleType(JsonNode.class);
    }

    public static SimpleType _findWellKnownSimple(Class cls) {
        if (cls.isPrimitive()) {
            if (cls == CLS_BOOL) {
                return CORE_TYPE_BOOL;
            }
            if (cls == CLS_INT) {
                return CORE_TYPE_INT;
            }
            if (cls == CLS_LONG) {
                return CORE_TYPE_LONG;
            }
            return null;
        }
        if (cls == CLS_STRING) {
            return CORE_TYPE_STRING;
        }
        if (cls == CLS_OBJECT) {
            return CORE_TYPE_OBJECT;
        }
        if (cls == CLS_JSON_NODE) {
            return CORE_TYPE_JSON_NODE;
        }
        return null;
    }

    public static boolean _verifyAndResolvePlaceholders(TypeBase typeBase, TypeBase typeBase2) {
        if (typeBase2 instanceof PlaceholderForType) {
            ((PlaceholderForType) typeBase2)._actualType = typeBase;
            return true;
        }
        if (typeBase._class == typeBase2._class) {
            List typeParameters = typeBase.getBindings().getTypeParameters();
            List typeParameters2 = typeBase2.getBindings().getTypeParameters();
            int size = typeParameters.size();
            for (int i = 0; i < size; i++) {
                if (_verifyAndResolvePlaceholders((TypeBase) typeParameters.get(i), (TypeBase) typeParameters2.get(i))) {
                }
            }
            return true;
        }
        return false;
    }

    public static TypeBase constructGeneralizedType(TypeBase typeBase, Class cls) {
        Class cls2 = typeBase._class;
        if (cls2 == cls) {
            return typeBase;
        }
        TypeBase findSuperType = typeBase.findSuperType(cls);
        if (findSuperType == null) {
            findSuperType = null;
            if (!cls.isAssignableFrom(cls2)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("Class %s not a super-type of %s", new Object[]{cls.getName(), typeBase});
                return null;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m("Internal error: class %s not included as super-type for %s", new Object[]{cls.getName(), typeBase});
        }
        return findSuperType;
    }

    public static TypeBase[] findTypeParameters(TypeBase typeBase, Class cls) {
        TypeBase findSuperType = typeBase.findSuperType(cls);
        return findSuperType == null ? NO_TYPES : findSuperType.getBindings()._types;
    }

    public static void uncheckedSimpleType(Class cls) {
        TypeBindings typeBindings = EMPTY_BINDINGS;
        if (!typeBindings.isEmpty() || _findWellKnownSimple(cls) == null) {
            new SimpleType(cls, typeBindings, null, null);
        }
    }

    public static SimpleType unknownType() {
        instance.getClass();
        return CORE_TYPE_OBJECT;
    }

    public final TypeBase _fromAny(SVG svg, Type type, TypeBindings typeBindings) {
        Type[] bounds;
        TypeBase typeBase;
        TypeBindings create;
        if (type instanceof Class) {
            return _fromClass(svg, (Class) type, EMPTY_BINDINGS);
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            if (cls == CLS_ENUM) {
                return CORE_TYPE_ENUM;
            }
            if (cls == CLS_COMPARABLE) {
                return CORE_TYPE_COMPARABLE;
            }
            if (cls == CLS_CLASS) {
                return CORE_TYPE_CLASS;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments == null ? 0 : actualTypeArguments.length;
            if (length == 0) {
                create = EMPTY_BINDINGS;
            } else {
                TypeBase[] typeBaseArr = new TypeBase[length];
                for (int i = 0; i < length; i++) {
                    typeBaseArr[i] = _fromAny(svg, actualTypeArguments[i], typeBindings);
                }
                create = TypeBindings.create(cls, typeBaseArr);
            }
            return _fromClass(svg, cls, create);
        }
        if (type instanceof TypeBase) {
            return (TypeBase) type;
        }
        if (type instanceof GenericArrayType) {
            TypeBase _fromAny = _fromAny(svg, ((GenericArrayType) type).getGenericComponentType(), typeBindings);
            int i2 = ArrayType.$r8$clinit;
            return new ArrayType(_fromAny, typeBindings, Array.newInstance((Class<?>) _fromAny._class, 0), null, null, false);
        }
        if (!(type instanceof TypeVariable)) {
            if (type instanceof WildcardType) {
                return _fromAny(svg, ((WildcardType) type).getUpperBounds()[0], typeBindings);
            }
            StringBuilder sb = new StringBuilder("Unrecognized Type: ");
            sb.append(type == null ? "[null]" : type.toString());
            throw new IllegalArgumentException(sb.toString());
        }
        TypeVariable typeVariable = (TypeVariable) type;
        String name = typeVariable.getName();
        TypeBase typeBase2 = null;
        if (typeBindings == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m("Null `bindings` passed (type variable \"", name, "\")"));
            return null;
        }
        String[] strArr = typeBindings._names;
        int length2 = strArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length2) {
                break;
            }
            if (name.equals(strArr[i3])) {
                typeBase2 = typeBindings._types[i3];
                if ((typeBase2 instanceof ResolvedRecursiveType) && (typeBase = ((ResolvedRecursiveType) typeBase2)._referencedType) != null) {
                    typeBase2 = typeBase;
                }
            } else {
                i3++;
            }
        }
        if (typeBase2 != null) {
            return typeBase2;
        }
        String[] strArr2 = typeBindings._unboundVariables;
        if (strArr2 != null) {
            int length3 = strArr2.length;
            do {
                length3--;
                if (length3 >= 0) {
                }
            } while (!name.equals(strArr2[length3]));
            return CORE_TYPE_OBJECT;
        }
        String[] strArr3 = typeBindings._unboundVariables;
        int length4 = strArr3 == null ? 0 : strArr3.length;
        String[] strArr4 = length4 == 0 ? new String[1] : (String[]) Arrays.copyOf(strArr3, length4 + 1);
        strArr4[length4] = name;
        TypeBindings typeBindings2 = new TypeBindings(typeBindings._names, typeBindings._types, strArr4);
        synchronized (typeVariable) {
            bounds = typeVariable.getBounds();
        }
        return _fromAny(svg, bounds[0], typeBindings2);
    }

    public final TypeBase _fromClass(SVG svg, Class cls, TypeBindings typeBindings) {
        SVG svg2;
        SVG svg3;
        TypeBase _fromAny;
        TypeBase[] _resolveSuperInterfaces;
        TypeBase[] typeBaseArr;
        TypeBase typeBase;
        TypeBase typeBase2;
        TypeBindings typeBindings2;
        TypeBindings typeBindings3;
        Class cls2;
        TypeBindings typeBindings4;
        TypeBase typeBase3;
        Class cls3 = cls;
        SimpleType _findWellKnownSimple = _findWellKnownSimple(cls3);
        if (_findWellKnownSimple != null) {
            return _findWellKnownSimple;
        }
        Object asKey = (typeBindings == null || typeBindings.isEmpty()) ? cls3 : new TypeBindings.AsKey(cls3, typeBindings._types, typeBindings._hashCode);
        LRUMap lRUMap = this._typeCache;
        TypeBase typeBase4 = (TypeBase) lRUMap._map.get(asKey);
        if (typeBase4 != null) {
            return typeBase4;
        }
        int i = 27;
        Object obj = null;
        if (svg == null) {
            svg3 = new SVG(i, obj, cls3);
        } else {
            if (((Class) svg.cssRules) != cls3) {
                Object obj2 = svg.rootElement;
                while (true) {
                    SVG svg4 = (SVG) obj2;
                    if (svg4 == null) {
                        svg2 = null;
                        break;
                    }
                    if (((Class) svg4.cssRules) == cls3) {
                        svg2 = svg4;
                        break;
                    }
                    obj2 = svg4.rootElement;
                }
            } else {
                svg2 = svg;
            }
            if (svg2 != null) {
                ResolvedRecursiveType resolvedRecursiveType = new ResolvedRecursiveType(cls, EMPTY_BINDINGS, null, null, 0, null, null, false);
                ArrayList arrayList = (ArrayList) svg2.idToElementMap;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    svg2.idToElementMap = arrayList;
                }
                arrayList.add(resolvedRecursiveType);
                return resolvedRecursiveType;
            }
            svg3 = new SVG(i, svg, cls3);
        }
        int i2 = 0;
        if (cls3.isArray()) {
            TypeBase _fromAny2 = _fromAny(svg3, cls3.getComponentType(), typeBindings);
            int i3 = ArrayType.$r8$clinit;
            typeBase = new ArrayType(_fromAny2, typeBindings, Array.newInstance((Class<?>) _fromAny2._class, 0), null, null, false);
        } else {
            if (cls3.isInterface()) {
                _resolveSuperInterfaces = _resolveSuperInterfaces(svg3, cls3, typeBindings);
                _fromAny = null;
            } else {
                Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
                Type genericSuperclass = cls3.getGenericSuperclass();
                _fromAny = genericSuperclass == null ? null : _fromAny(svg3, genericSuperclass, typeBindings);
                _resolveSuperInterfaces = _resolveSuperInterfaces(svg3, cls3, typeBindings);
            }
            TypeBase typeBase5 = CORE_TYPE_STRING;
            if (cls3 == Properties.class) {
                typeBaseArr = _resolveSuperInterfaces;
                typeBase2 = _fromAny;
                typeBase = new MapType(cls3, typeBindings, typeBase2, typeBaseArr, typeBase5, typeBase5, null, null, false);
                cls3 = cls3;
                typeBindings2 = typeBindings;
            } else {
                typeBaseArr = _resolveSuperInterfaces;
                typeBase = typeBase4;
                typeBase2 = _fromAny;
                typeBindings2 = typeBindings;
                if (typeBase2 != null) {
                    typeBase = typeBase2.refine(cls3, typeBindings2, typeBase2, typeBaseArr);
                }
            }
            if (typeBase == null) {
                TypeBindings typeBindings5 = typeBindings2 == null ? EMPTY_BINDINGS : typeBindings2;
                TypeBase typeBase6 = CORE_TYPE_OBJECT;
                if (cls3 == Map.class) {
                    if (cls3 == Properties.class) {
                        typeBindings4 = typeBindings5;
                    } else {
                        List typeParameters = typeBindings5.getTypeParameters();
                        int size = typeParameters.size();
                        if (size == 0) {
                            typeBindings4 = typeBindings5;
                            typeBase5 = typeBase6;
                        } else {
                            if (size != 2) {
                                throw new IllegalArgumentException(String.format("Strange Map type %s with %d type parameter%s (%s), can not resolve", ClassUtil.nameOf(cls3), Integer.valueOf(size), size == 1 ? "" : "s", typeBindings5));
                            }
                            TypeBase typeBase7 = (TypeBase) typeParameters.get(0);
                            typeBase3 = (TypeBase) typeParameters.get(1);
                            typeBase5 = typeBase7;
                            typeBindings4 = typeBindings5;
                            typeBindings3 = typeBindings2;
                            cls2 = cls;
                            typeBase = new MapType(cls2, typeBindings4, typeBase2, typeBaseArr, typeBase5, typeBase3, null, null, false);
                        }
                    }
                    typeBase3 = typeBase5;
                    typeBindings3 = typeBindings2;
                    cls2 = cls;
                    typeBase = new MapType(cls2, typeBindings4, typeBase2, typeBaseArr, typeBase5, typeBase3, null, null, false);
                } else {
                    typeBindings3 = typeBindings2;
                    cls2 = cls3;
                    TypeBindings typeBindings6 = typeBindings5;
                    if (cls2 == Collection.class) {
                        List typeParameters2 = typeBindings6.getTypeParameters();
                        if (!typeParameters2.isEmpty()) {
                            if (typeParameters2.size() != 1) {
                                TimeSource$Companion$$ExternalSyntheticLambda0.m$2(cls2.getName(), ": cannot determine type parameters", "Strange Collection type ");
                                return null;
                            }
                            typeBase6 = (TypeBase) typeParameters2.get(0);
                        }
                        typeBase = new CollectionType(cls2, typeBindings6, typeBase2, typeBaseArr, typeBase6, null, null, false);
                    } else if (cls2 == AtomicReference.class) {
                        List typeParameters3 = typeBindings6.getTypeParameters();
                        if (!typeParameters3.isEmpty()) {
                            if (typeParameters3.size() != 1) {
                                TimeSource$Companion$$ExternalSyntheticLambda0.m$2(cls2.getName(), ": cannot determine type parameters", "Strange Reference type ");
                                return null;
                            }
                            typeBase6 = (TypeBase) typeParameters3.get(0);
                        }
                        typeBase = new ReferenceType(cls2, typeBindings6, typeBase2, typeBaseArr, typeBase6, null, null, null, false);
                    } else {
                        typeBase = null;
                    }
                }
                if (typeBase == null) {
                    int length = typeBaseArr.length;
                    while (true) {
                        if (i2 >= length) {
                            typeBase = null;
                            break;
                        }
                        TypeBase refine = typeBaseArr[i2].refine(cls2, typeBindings3, typeBase2, typeBaseArr);
                        if (refine != null) {
                            typeBase = refine;
                            break;
                        }
                        i2++;
                    }
                    if (typeBase == null) {
                        typeBase = new SimpleType(cls2, typeBindings3, typeBase2, typeBaseArr);
                    }
                }
            }
        }
        ArrayList arrayList2 = (ArrayList) svg3.idToElementMap;
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ResolvedRecursiveType resolvedRecursiveType2 = (ResolvedRecursiveType) it.next();
                if (resolvedRecursiveType2._referencedType != null) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Trying to re-set self reference; old value = ", resolvedRecursiveType2._referencedType, ", new = ", typeBase);
                    return null;
                }
                resolvedRecursiveType2._referencedType = typeBase;
            }
        }
        if (!typeBase.hasHandlers()) {
            lRUMap.putIfAbsent(asKey, typeBase);
        }
        return typeBase;
    }

    public final TypeBase[] _resolveSuperInterfaces(SVG svg, Class cls, TypeBindings typeBindings) {
        Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null || genericInterfaces.length == 0) {
            return NO_TYPES;
        }
        int length = genericInterfaces.length;
        TypeBase[] typeBaseArr = new TypeBase[length];
        for (int i = 0; i < length; i++) {
            typeBaseArr[i] = _fromAny(svg, genericInterfaces[i], typeBindings);
        }
        return typeBaseArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0060, code lost:
    
        if (r3 == java.util.EnumSet.class) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.type.TypeBase constructSpecializedType(com.fasterxml.jackson.databind.type.TypeBase r24, java.lang.Class r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.type.TypeFactory.constructSpecializedType(com.fasterxml.jackson.databind.type.TypeBase, java.lang.Class, boolean):com.fasterxml.jackson.databind.type.TypeBase");
    }
}
