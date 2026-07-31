package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedMethodCollector extends CollectorBase {
    public final boolean _collectAnnotations;
    public final ClassIntrospector$MixInResolver _mixInResolver;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MethodBuilder {
        public Annotated annotations;
        public Method method;
        public TypeResolutionContext typeContext;

        public MethodBuilder(TypeResolutionContext typeResolutionContext, Method method, Annotated annotated) {
            this.typeContext = typeResolutionContext;
            this.method = method;
            this.annotations = annotated;
        }
    }

    public AnnotatedMethodCollector(PropertyNamingStrategy propertyNamingStrategy, ClassIntrospector$MixInResolver classIntrospector$MixInResolver, boolean z) {
        super(propertyNamingStrategy);
        this._mixInResolver = propertyNamingStrategy == null ? null : classIntrospector$MixInResolver;
        this._collectAnnotations = z;
    }

    public static boolean _isIncludableMemberMethod(Method method) {
        return (Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || method.getParameterTypes().length > 2) ? false : true;
    }

    public final void _addMemberMethods(TypeResolutionContext typeResolutionContext, Class cls, LinkedHashMap linkedHashMap, Class cls2) {
        if (cls2 != null) {
            _addMethodMixIns(typeResolutionContext, cls, linkedHashMap, cls2);
        }
        if (cls == null) {
            return;
        }
        for (Method method : ClassUtil.getClassMethods(cls)) {
            if (_isIncludableMemberMethod(method)) {
                MemberKey memberKey = new MemberKey(method);
                MethodBuilder methodBuilder = (MethodBuilder) linkedHashMap.get(memberKey);
                if (methodBuilder == null) {
                    linkedHashMap.put(memberKey, new MethodBuilder(typeResolutionContext, method, this._intr == null ? AnnotationCollector$EmptyCollector.instance : collectAnnotations(method.getDeclaredAnnotations())));
                } else {
                    if (this._collectAnnotations) {
                        methodBuilder.annotations = collectDefaultAnnotations(methodBuilder.annotations, method.getDeclaredAnnotations());
                    }
                    Method method2 = methodBuilder.method;
                    if (method2 == null) {
                        methodBuilder.method = method;
                    } else if (Modifier.isAbstract(method2.getModifiers()) && !Modifier.isAbstract(method.getModifiers())) {
                        methodBuilder.method = method;
                        methodBuilder.typeContext = typeResolutionContext;
                    }
                }
            }
        }
    }

    public final void _addMethodMixIns(TypeResolutionContext typeResolutionContext, Class cls, LinkedHashMap linkedHashMap, Class cls2) {
        List list;
        if (this._intr == null) {
            return;
        }
        Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
        if (cls2 == null || cls2 == cls || cls2 == Object.class) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = new ArrayList(8);
            ClassUtil._addRawSuperTypes(cls2, cls, arrayList);
            list = arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (_isIncludableMemberMethod(method)) {
                    MemberKey memberKey = new MemberKey(method);
                    MethodBuilder methodBuilder = (MethodBuilder) linkedHashMap.get(memberKey);
                    Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                    if (methodBuilder == null) {
                        linkedHashMap.put(memberKey, new MethodBuilder(typeResolutionContext, null, collectAnnotations(declaredAnnotations)));
                    } else {
                        methodBuilder.annotations = collectDefaultAnnotations(methodBuilder.annotations, declaredAnnotations);
                    }
                }
            }
        }
    }
}
