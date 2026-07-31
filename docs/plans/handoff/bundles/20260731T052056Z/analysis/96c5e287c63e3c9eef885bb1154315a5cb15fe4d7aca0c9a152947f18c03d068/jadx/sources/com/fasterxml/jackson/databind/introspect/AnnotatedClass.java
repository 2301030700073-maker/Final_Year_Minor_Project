package com.fasterxml.jackson.databind.introspect;

import coil3.svg.internal.AndroidSvg;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedClass extends Annotated implements TypeResolutionContext {
    public static final SVG NO_CREATORS;
    public final PropertyNamingStrategy _annotationIntrospector;
    public final TypeBindings _bindings;
    public final Class _class;
    public final Annotations _classAnnotations;
    public final boolean _collectAnnotations;
    public SVG _creators;
    public List _fields;
    public AnnotatedMethodMap _memberMethods;
    public final ClassIntrospector$MixInResolver _mixInResolver;
    public transient Boolean _nonStaticInnerClass;
    public final Class _primaryMixIn;
    public final List _superTypes;
    public final TypeBase _type;
    public final TypeFactory _typeFactory;

    static {
        List list = Collections.EMPTY_LIST;
        NO_CREATORS = new SVG((Object) null, list, list, 26);
    }

    public AnnotatedClass(Class cls) {
        this._type = null;
        this._class = cls;
        this._superTypes = Collections.EMPTY_LIST;
        this._primaryMixIn = null;
        this._classAnnotations = Annotated.NO_ANNOTATIONS;
        this._bindings = TypeBindings.EMPTY;
        this._annotationIntrospector = null;
        this._mixInResolver = null;
        this._typeFactory = null;
        this._collectAnnotations = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.caverock.androidsvg.SVG _creators() {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.AnnotatedClass._creators():com.caverock.androidsvg.SVG");
    }

    public final List _fields() {
        List list = this._fields;
        if (list == null) {
            TypeBase typeBase = this._type;
            if (typeBase == null) {
                list = Collections.EMPTY_LIST;
            } else {
                Map _findFields = new AnnotatedFieldCollector(this._annotationIntrospector, this._typeFactory, this._mixInResolver, this._collectAnnotations)._findFields(this, typeBase);
                if (_findFields == null) {
                    list = Collections.EMPTY_LIST;
                } else {
                    ArrayList arrayList = new ArrayList(_findFields.size());
                    for (AnnotatedFieldCollector.FieldBuilder fieldBuilder : _findFields.values()) {
                        arrayList.add(new AnnotatedField(fieldBuilder.typeContext, fieldBuilder.field, fieldBuilder.annotations.asAnnotationMap()));
                    }
                    list = arrayList;
                }
            }
            this._fields = list;
        }
        return list;
    }

    public final AnnotatedMethodMap _methods() {
        ClassIntrospector$MixInResolver classIntrospector$MixInResolver;
        Class findMixInClassFor;
        AnnotatedMethodMap annotatedMethodMap = this._memberMethods;
        if (annotatedMethodMap == null) {
            TypeBase typeBase = this._type;
            if (typeBase == null) {
                annotatedMethodMap = new AnnotatedMethodMap();
            } else {
                Class cls = typeBase._class;
                AnnotatedMethodCollector annotatedMethodCollector = new AnnotatedMethodCollector(this._annotationIntrospector, this._mixInResolver, this._collectAnnotations);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                annotatedMethodCollector._addMemberMethods(this, cls, linkedHashMap, this._primaryMixIn);
                Iterator it = this._superTypes.iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    classIntrospector$MixInResolver = annotatedMethodCollector._mixInResolver;
                    Class cls2 = null;
                    if (!hasNext) {
                        break;
                    }
                    TypeBase typeBase2 = (TypeBase) it.next();
                    if (classIntrospector$MixInResolver != null) {
                        cls2 = classIntrospector$MixInResolver.findMixInClassFor(typeBase2._class);
                    }
                    annotatedMethodCollector._addMemberMethods(new AndroidSvg(this._typeFactory, typeBase2.getBindings()), typeBase2._class, linkedHashMap, cls2);
                }
                if (classIntrospector$MixInResolver != null && (findMixInClassFor = classIntrospector$MixInResolver.findMixInClassFor(Object.class)) != null) {
                    annotatedMethodCollector._addMethodMixIns(this, cls, linkedHashMap, findMixInClassFor);
                    if (annotatedMethodCollector._intr != null && !linkedHashMap.isEmpty()) {
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            MemberKey memberKey = (MemberKey) entry.getKey();
                            if ("hashCode".equals(memberKey._name) && memberKey._argTypes.length == 0) {
                                try {
                                    Method declaredMethod = Object.class.getDeclaredMethod(memberKey._name, null);
                                    if (declaredMethod != null) {
                                        AnnotatedMethodCollector.MethodBuilder methodBuilder = (AnnotatedMethodCollector.MethodBuilder) entry.getValue();
                                        methodBuilder.annotations = annotatedMethodCollector.collectDefaultAnnotations(methodBuilder.annotations, declaredMethod.getDeclaredAnnotations());
                                        methodBuilder.method = declaredMethod;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (linkedHashMap.isEmpty()) {
                    annotatedMethodMap = new AnnotatedMethodMap();
                } else {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap.size());
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        AnnotatedMethodCollector.MethodBuilder methodBuilder2 = (AnnotatedMethodCollector.MethodBuilder) entry2.getValue();
                        Method method = methodBuilder2.method;
                        AnnotatedMethod annotatedMethod = method == null ? null : new AnnotatedMethod(methodBuilder2.typeContext, method, methodBuilder2.annotations.asAnnotationMap(), null);
                        if (annotatedMethod != null) {
                            linkedHashMap2.put(entry2.getKey(), annotatedMethod);
                        }
                    }
                    AnnotatedMethodMap annotatedMethodMap2 = new AnnotatedMethodMap();
                    annotatedMethodMap2._methods = linkedHashMap2;
                    annotatedMethodMap = annotatedMethodMap2;
                }
            }
            this._memberMethods = annotatedMethodMap;
        }
        return annotatedMethodMap;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return ClassUtil.hasClass(obj, AnnotatedClass.class) && ((AnnotatedClass) obj)._class == this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotation getAnnotation(Class cls) {
        return this._classAnnotations.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._class.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._type;
    }

    public final int hashCode() {
        return this._class.getName().hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
    public final TypeBase resolveType(Type type) {
        return this._typeFactory._fromAny(null, type, this._bindings);
    }

    public final String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }

    public AnnotatedClass(TypeBase typeBase, Class cls, List list, Class cls2, Annotations annotations, TypeBindings typeBindings, PropertyNamingStrategy propertyNamingStrategy, ClassIntrospector$MixInResolver classIntrospector$MixInResolver, TypeFactory typeFactory, boolean z) {
        this._type = typeBase;
        this._class = cls;
        this._superTypes = list;
        this._primaryMixIn = cls2;
        this._classAnnotations = annotations;
        this._bindings = typeBindings;
        this._annotationIntrospector = propertyNamingStrategy;
        this._mixInResolver = classIntrospector$MixInResolver;
        this._typeFactory = typeFactory;
        this._collectAnnotations = z;
    }
}
