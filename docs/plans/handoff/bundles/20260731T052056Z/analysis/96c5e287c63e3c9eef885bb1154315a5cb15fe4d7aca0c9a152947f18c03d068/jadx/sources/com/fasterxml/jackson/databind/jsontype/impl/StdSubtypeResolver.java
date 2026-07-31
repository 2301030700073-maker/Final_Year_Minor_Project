package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StdSubtypeResolver extends ResultKt implements Serializable {
    public static void _collectAndResolve(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig mapperConfig, PropertyNamingStrategy propertyNamingStrategy, HashMap hashMap) {
        String findTypeName;
        if (namedType._name == null && (findTypeName = propertyNamingStrategy.findTypeName(annotatedClass)) != null) {
            namedType = new NamedType(namedType._class, findTypeName);
        }
        NamedType namedType2 = new NamedType(namedType._class, null);
        if (hashMap.containsKey(namedType2)) {
            if (namedType._name == null || ((NamedType) hashMap.get(namedType2))._name != null) {
                return;
            }
            hashMap.put(namedType2, namedType);
            return;
        }
        hashMap.put(namedType2, namedType);
        List findSubtypes = propertyNamingStrategy.findSubtypes(annotatedClass);
        if (findSubtypes != null) {
            ArrayList arrayList = (ArrayList) findSubtypes;
            if (arrayList.isEmpty()) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                NamedType namedType3 = (NamedType) it.next();
                _collectAndResolve(PropertyBuilder.resolveWithoutSuperTypes(mapperConfig, namedType3._class, mapperConfig), namedType3, mapperConfig, propertyNamingStrategy, hashMap);
            }
        }
    }

    public final ArrayList collectAndResolveSubtypesByClass(MapperConfig mapperConfig, AnnotatedMember annotatedMember, TypeBase typeBase) {
        Class rawType;
        List findSubtypes;
        PropertyNamingStrategy annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        if (typeBase != null) {
            rawType = typeBase._class;
        } else {
            if (annotatedMember == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Both property and base type are nulls");
                return null;
            }
            rawType = annotatedMember.getRawType();
        }
        HashMap hashMap = new HashMap();
        if (annotatedMember != null && (findSubtypes = annotationIntrospector.findSubtypes(annotatedMember)) != null) {
            Iterator it = ((ArrayList) findSubtypes).iterator();
            while (it.hasNext()) {
                NamedType namedType = (NamedType) it.next();
                _collectAndResolve(PropertyBuilder.resolveWithoutSuperTypes(mapperConfig, namedType._class, mapperConfig), namedType, mapperConfig, annotationIntrospector, hashMap);
            }
        }
        _collectAndResolve(PropertyBuilder.resolveWithoutSuperTypes(mapperConfig, rawType, mapperConfig), new NamedType(rawType, null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }
}
