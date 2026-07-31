package com.fasterxml.jackson.databind.jsontype.impl;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ClassNameIdResolver extends TypeIdResolverBase {
    public final String _idFrom(Object obj, Class cls, TypeFactory typeFactory) {
        Class cls2;
        TypeBindings typeBindings;
        Class cls3;
        TypeBindings typeBindings2;
        Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
        if (Enum.class.isAssignableFrom(cls) && !cls.isEnum()) {
            cls = cls.getSuperclass();
        }
        String name = cls.getName();
        if (name.startsWith("java.util.")) {
            if (obj instanceof EnumSet) {
                EnumSet enumSet = (EnumSet) obj;
                if (enumSet.isEmpty()) {
                    ClassUtil.EnumTypeLocator enumTypeLocator = ClassUtil.EnumTypeLocator.instance;
                    Field field = enumTypeLocator.enumSetTypeField;
                    if (field == null) {
                        Gson$$ExternalSyntheticBUOutline0.m$3("Cannot figure out type parameter for `EnumSet` (odd JDK platform?), problem: ", enumTypeLocator.failForEnumSet);
                        return null;
                    }
                    try {
                        cls3 = (Class) field.get(enumSet);
                    } catch (Exception e) {
                        throw new IllegalArgumentException(e);
                    }
                } else {
                    cls3 = ((Enum) enumSet.iterator().next()).getDeclaringClass();
                }
                TypeBase _fromClass = typeFactory._fromClass(null, cls3, TypeFactory.EMPTY_BINDINGS);
                String[] strArr = TypeBindings.NO_STRINGS;
                TypeVariable[] typeParameters = EnumSet.class.getTypeParameters();
                int length = typeParameters == null ? 0 : typeParameters.length;
                if (length == 0) {
                    typeBindings2 = TypeBindings.EMPTY;
                } else {
                    if (length != 1) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m(length, EnumSet.class.getName(), " with 1 type parameter: class expects ");
                        return null;
                    }
                    typeBindings2 = new TypeBindings(new String[]{typeParameters[0].getName()}, new TypeBase[]{_fromClass}, null);
                }
                CollectionType collectionType = (CollectionType) typeFactory._fromClass(null, EnumSet.class, typeBindings2);
                if (typeBindings2.isEmpty()) {
                    TypeBase contentType = collectionType.findSuperType(Collection.class).getContentType();
                    if (!contentType.equals(_fromClass)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Non-generic Collection class %s did not resolve to something with element type %s but %s ", new Object[]{ClassUtil.nameOf(EnumSet.class), _fromClass, contentType});
                        return null;
                    }
                }
                return collectionType.buildCanonicalName();
            }
            if (obj instanceof EnumMap) {
                EnumMap enumMap = (EnumMap) obj;
                if (enumMap.isEmpty()) {
                    ClassUtil.EnumTypeLocator enumTypeLocator2 = ClassUtil.EnumTypeLocator.instance;
                    Field field2 = enumTypeLocator2.enumMapTypeField;
                    if (field2 == null) {
                        Gson$$ExternalSyntheticBUOutline0.m$3("Cannot figure out type parameter for `EnumMap` (odd JDK platform?), problem: ", enumTypeLocator2.failForEnumMap);
                        return null;
                    }
                    try {
                        cls2 = (Class) field2.get(enumMap);
                    } catch (Exception e2) {
                        throw new IllegalArgumentException(e2);
                    }
                } else {
                    cls2 = ((Enum) enumMap.keySet().iterator().next()).getDeclaringClass();
                }
                TypeBindings typeBindings3 = TypeFactory.EMPTY_BINDINGS;
                TypeBase _fromClass2 = typeFactory._fromClass(null, cls2, typeBindings3);
                TypeBase _fromClass3 = typeFactory._fromClass(null, Object.class, typeBindings3);
                TypeBase[] typeBaseArr = {_fromClass2, _fromClass3};
                String[] strArr2 = TypeBindings.NO_STRINGS;
                TypeVariable[] typeParameters2 = EnumMap.class.getTypeParameters();
                if (typeParameters2 == null || typeParameters2.length == 0) {
                    typeBindings = TypeBindings.EMPTY;
                } else {
                    int length2 = typeParameters2.length;
                    String[] strArr3 = new String[length2];
                    for (int i = 0; i < length2; i++) {
                        strArr3[i] = typeParameters2[i].getName();
                    }
                    if (length2 != 2) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m(length2, EnumMap.class.getName(), " with 2 type parameters: class expects ");
                        return null;
                    }
                    typeBindings = new TypeBindings(strArr3, typeBaseArr, null);
                }
                MapType mapType = (MapType) typeFactory._fromClass(null, EnumMap.class, typeBindings);
                if (typeBindings.isEmpty()) {
                    TypeBase findSuperType = mapType.findSuperType(Map.class);
                    TypeBase keyType = findSuperType.getKeyType();
                    if (!keyType.equals(_fromClass2)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Non-generic Map class %s did not resolve to something with key type %s but %s ", new Object[]{ClassUtil.nameOf(EnumMap.class), _fromClass2, keyType});
                        return null;
                    }
                    TypeBase contentType2 = findSuperType.getContentType();
                    if (!contentType2.equals(_fromClass3)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Non-generic Map class %s did not resolve to something with value type %s but %s ", new Object[]{ClassUtil.nameOf(EnumMap.class), _fromClass3, contentType2});
                        return null;
                    }
                }
                return mapType.buildCanonicalName();
            }
        } else if (name.indexOf(36) >= 0 && ClassUtil.getOuterClass(cls) != null) {
            TypeBase typeBase = this._baseType;
            if (ClassUtil.getOuterClass(typeBase._class) == null) {
                return typeBase._class.getName();
            }
        }
        return name;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public String idFromValue(Object obj) {
        return _idFrom(obj, obj.getClass(), this._typeFactory);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public final String idFromValueAndType(Object obj, Class cls) {
        return _idFrom(obj, cls, this._typeFactory);
    }
}
