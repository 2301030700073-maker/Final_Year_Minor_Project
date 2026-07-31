package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import coil3.svg.internal.AndroidSvg;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedFieldCollector extends CollectorBase {
    public final boolean _collectAnnotations;
    public Object _mixInResolver;
    public final Object _typeFactory;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FieldBuilder {
        public Annotated annotations = AnnotationCollector$EmptyCollector.instance;
        public final Field field;
        public final TypeResolutionContext typeContext;

        public FieldBuilder(TypeResolutionContext typeResolutionContext, Field field) {
            this.typeContext = typeResolutionContext;
            this.field = field;
        }
    }

    public AnnotatedFieldCollector(PropertyNamingStrategy propertyNamingStrategy, TypeFactory typeFactory, ClassIntrospector$MixInResolver classIntrospector$MixInResolver, boolean z) {
        super(propertyNamingStrategy);
        this._typeFactory = typeFactory;
        this._mixInResolver = propertyNamingStrategy == null ? null : classIntrospector$MixInResolver;
        this._collectAnnotations = z;
    }

    public Map _findFields(TypeResolutionContext typeResolutionContext, TypeBase typeBase) {
        ClassIntrospector$MixInResolver classIntrospector$MixInResolver;
        Class findMixInClassFor;
        FieldBuilder fieldBuilder;
        TypeBase superClass = typeBase.getSuperClass();
        if (superClass == null) {
            return null;
        }
        Class cls = typeBase._class;
        Map _findFields = _findFields(new AndroidSvg((TypeFactory) this._typeFactory, superClass.getBindings()), superClass);
        for (Field field : cls.getDeclaredFields()) {
            if (!field.isSynthetic() && !Modifier.isStatic(field.getModifiers())) {
                if (_findFields == null) {
                    _findFields = new LinkedHashMap();
                }
                FieldBuilder fieldBuilder2 = new FieldBuilder(typeResolutionContext, field);
                if (this._collectAnnotations) {
                    fieldBuilder2.annotations = collectAnnotations(AnnotationCollector$EmptyCollector.instance, field.getDeclaredAnnotations());
                }
                _findFields.put(field.getName(), fieldBuilder2);
            }
        }
        if (_findFields != null && (classIntrospector$MixInResolver = (ClassIntrospector$MixInResolver) this._mixInResolver) != null && (findMixInClassFor = classIntrospector$MixInResolver.findMixInClassFor(cls)) != null) {
            Iterator it = ClassUtil.findSuperClasses(findMixInClassFor, cls, true).iterator();
            while (it.hasNext()) {
                for (Field field2 : ((Class) it.next()).getDeclaredFields()) {
                    if (!field2.isSynthetic() && !Modifier.isStatic(field2.getModifiers()) && (fieldBuilder = (FieldBuilder) _findFields.get(field2.getName())) != null) {
                        fieldBuilder.annotations = collectAnnotations(fieldBuilder.annotations, field2.getDeclaredAnnotations());
                    }
                }
            }
        }
        return _findFields;
    }

    public MemoryCacheService collectAnnotations(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        if (!this._collectAnnotations) {
            return new MemoryCacheService((char) 0, 16);
        }
        Annotation[] annotationArr = ctor._annotations;
        if (annotationArr == null) {
            annotationArr = ctor._ctor.getDeclaredAnnotations();
            ctor._annotations = annotationArr;
        }
        Annotated collectAnnotations = collectAnnotations(annotationArr);
        if (ctor2 != null) {
            Annotation[] annotationArr2 = ctor2._annotations;
            if (annotationArr2 == null) {
                annotationArr2 = ctor2._ctor.getDeclaredAnnotations();
                ctor2._annotations = annotationArr2;
            }
            collectAnnotations = collectAnnotations(collectAnnotations, annotationArr2);
        }
        return collectAnnotations.asAnnotationMap();
    }

    public AnnotatedMethod constructFactoryCreator(Method method, TypeResolutionContext typeResolutionContext, Method method2) {
        int length = method.getParameterTypes().length;
        PropertyNamingStrategy propertyNamingStrategy = this._intr;
        MemoryCacheService[] memoryCacheServiceArr = CollectorBase.NO_ANNOTATION_MAPS;
        if (propertyNamingStrategy != null) {
            if (length == 0) {
                Annotated collectAnnotations = collectAnnotations(method.getDeclaredAnnotations());
                if (method2 != null) {
                    collectAnnotations = collectAnnotations(collectAnnotations, method2.getDeclaredAnnotations());
                }
                return new AnnotatedMethod(typeResolutionContext, method, collectAnnotations.asAnnotationMap(), memoryCacheServiceArr);
            }
            Annotated collectAnnotations2 = collectAnnotations(method.getDeclaredAnnotations());
            if (method2 != null) {
                collectAnnotations2 = collectAnnotations(collectAnnotations2, method2.getDeclaredAnnotations());
            }
            return new AnnotatedMethod(typeResolutionContext, method, collectAnnotations2.asAnnotationMap(), collectAnnotations(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
        }
        char c = 0;
        int i = 16;
        MemoryCacheService memoryCacheService = new MemoryCacheService(c, i);
        if (length != 0) {
            memoryCacheServiceArr = new MemoryCacheService[length];
            for (int i2 = 0; i2 < length; i2++) {
                memoryCacheServiceArr[i2] = new MemoryCacheService(c, i);
            }
        }
        return new AnnotatedMethod(typeResolutionContext, method, memoryCacheService, memoryCacheServiceArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.introspect.AnnotatedConstructor constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil.Ctor r11, com.fasterxml.jackson.databind.util.ClassUtil.Ctor r12) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil$Ctor, com.fasterxml.jackson.databind.util.ClassUtil$Ctor):com.fasterxml.jackson.databind.introspect.AnnotatedConstructor");
    }

    public AnnotatedFieldCollector(PropertyNamingStrategy propertyNamingStrategy, AnnotatedClass annotatedClass, boolean z) {
        super(propertyNamingStrategy);
        this._typeFactory = annotatedClass;
        this._collectAnnotations = z;
    }

    public MemoryCacheService[] collectAnnotations(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        if (this._collectAnnotations) {
            int length = annotationArr.length;
            MemoryCacheService[] memoryCacheServiceArr = new MemoryCacheService[length];
            for (int i = 0; i < length; i++) {
                Annotated collectAnnotations = collectAnnotations(AnnotationCollector$EmptyCollector.instance, annotationArr[i]);
                if (annotationArr2 != null) {
                    collectAnnotations = collectAnnotations(collectAnnotations, annotationArr2[i]);
                }
                memoryCacheServiceArr[i] = collectAnnotations.asAnnotationMap();
            }
            return memoryCacheServiceArr;
        }
        return CollectorBase.NO_ANNOTATION_MAPS;
    }
}
