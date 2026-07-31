package com.fasterxml.jackson.databind.ser;

import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector$MixInResolver;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertyBuilder {
    public final Object _annotationIntrospector;
    public final Object _beanDesc;
    public final Object _config;
    public Object _defaultBean;
    public final Object _defaultInclusion;
    public boolean _useRealPropertyDefaults;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public PropertyBuilder(SerializationConfig serializationConfig, BasicBeanDescription basicBeanDescription) {
        JsonInclude.Value value;
        this._config = serializationConfig;
        this._beanDesc = basicBeanDescription;
        JsonInclude.Value value2 = JsonInclude.Value.EMPTY;
        PropertyNamingStrategy propertyNamingStrategy = basicBeanDescription._annotationIntrospector;
        if (propertyNamingStrategy == null || (value = propertyNamingStrategy.findPropertyInclusion(basicBeanDescription._classInfo)) == null) {
            value = value2;
        } else if (value2 != null) {
            value = value2.withOverrides(value);
        }
        Class cls = basicBeanDescription._type._class;
        serializationConfig.getClass();
        value2 = value != null ? value.withOverrides(value2) : value2;
        JsonInclude.Value value3 = (JsonInclude.Value) serializationConfig._configOverrides.value;
        this._defaultInclusion = value3 == null ? value2 : value3.withOverrides(value2);
        this._useRealPropertyDefaults = value2._valueInclusion == JsonInclude.Include.NON_DEFAULT;
        this._annotationIntrospector = serializationConfig.getAnnotationIntrospector();
    }

    public static void _addSuperInterfaces(TypeBase typeBase, ArrayList arrayList, boolean z) {
        List asList;
        Class cls = typeBase._class;
        if (z) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((TypeBase) arrayList.get(i))._class == cls) {
                    return;
                }
            }
            arrayList.add(typeBase);
            if (cls == List.class || cls == Map.class) {
                return;
            }
        }
        TypeBase[] typeBaseArr = typeBase._superInterfaces;
        if (typeBaseArr == null) {
            asList = Collections.EMPTY_LIST;
        } else {
            int length = typeBaseArr.length;
            asList = length != 0 ? length != 1 ? Arrays.asList(typeBaseArr) : Collections.singletonList(typeBaseArr[0]) : Collections.EMPTY_LIST;
        }
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            _addSuperInterfaces((TypeBase) it.next(), arrayList, true);
        }
    }

    public static void _addSuperTypes(TypeBase typeBase, ArrayList arrayList, boolean z) {
        List asList;
        Class cls = typeBase._class;
        if (cls == Object.class || cls == Enum.class) {
            return;
        }
        if (z) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((TypeBase) arrayList.get(i))._class == cls) {
                    return;
                }
            }
            arrayList.add(typeBase);
        }
        TypeBase[] typeBaseArr = typeBase._superInterfaces;
        if (typeBaseArr == null) {
            asList = Collections.EMPTY_LIST;
        } else {
            int length = typeBaseArr.length;
            asList = length != 0 ? length != 1 ? Arrays.asList(typeBaseArr) : Collections.singletonList(typeBaseArr[0]) : Collections.EMPTY_LIST;
        }
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            _addSuperInterfaces((TypeBase) it.next(), arrayList, true);
        }
        TypeBase superClass = typeBase.getSuperClass();
        if (superClass != null) {
            _addSuperTypes(superClass, arrayList, true);
        }
    }

    public static AnnotatedClass resolve(MapperConfig mapperConfig, TypeBase typeBase, MapperConfig mapperConfig2) {
        typeBase.getClass();
        Class cls = typeBase._class;
        if (typeBase instanceof ArrayType) {
            return new AnnotatedClass(cls);
        }
        PropertyBuilder propertyBuilder = new PropertyBuilder(mapperConfig, typeBase, mapperConfig2);
        ArrayList arrayList = new ArrayList(8);
        if (!typeBase.hasRawClass(Object.class)) {
            if (cls.isInterface()) {
                _addSuperInterfaces(typeBase, arrayList, false);
            } else {
                _addSuperTypes(typeBase, arrayList, false);
            }
        }
        return new AnnotatedClass(typeBase, (Class) propertyBuilder._defaultBean, arrayList, null, propertyBuilder.resolveClassAnnotations(arrayList), (TypeBindings) propertyBuilder._beanDesc, (PropertyNamingStrategy) propertyBuilder._annotationIntrospector, mapperConfig2, mapperConfig._base._typeFactory, propertyBuilder._useRealPropertyDefaults);
    }

    public static AnnotatedClass resolveWithoutSuperTypes(MapperConfig mapperConfig, Class cls, MapperConfig mapperConfig2) {
        if (cls.isArray()) {
            return new AnnotatedClass(cls);
        }
        PropertyBuilder propertyBuilder = new PropertyBuilder(mapperConfig, cls, mapperConfig2);
        List list = Collections.EMPTY_LIST;
        return new AnnotatedClass(null, cls, list, (Class) propertyBuilder._defaultInclusion, propertyBuilder.resolveClassAnnotations(list), (TypeBindings) propertyBuilder._beanDesc, (PropertyNamingStrategy) propertyBuilder._annotationIntrospector, mapperConfig2, mapperConfig._base._typeFactory, propertyBuilder._useRealPropertyDefaults);
    }

    public Annotated _addAnnotationsIfNotPresent(Annotated annotated, Annotation[] annotationArr) {
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                if (!annotated.isPresent(annotation)) {
                    annotated = annotated.addOrOverride(annotation);
                    if (((PropertyNamingStrategy) this._annotationIntrospector).isAnnotationBundle(annotation)) {
                        annotated = _addFromBundleIfNotPresent(annotated, annotation);
                    }
                }
            }
        }
        return annotated;
    }

    public Annotated _addClassMixIns(Annotated annotated, Class cls, Class cls2) {
        if (cls2 != null) {
            annotated = _addAnnotationsIfNotPresent(annotated, ClassUtil.findClassAnnotations(cls2));
            Iterator it = ClassUtil.findSuperClasses(cls2, cls, false).iterator();
            while (it.hasNext()) {
                annotated = _addAnnotationsIfNotPresent(annotated, ClassUtil.findClassAnnotations((Class) it.next()));
            }
        }
        return annotated;
    }

    public Annotated _addFromBundleIfNotPresent(Annotated annotated, Annotation annotation) {
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention) && !annotated.isPresent(annotation2)) {
                annotated = annotated.addOrOverride(annotation2);
                if (((PropertyNamingStrategy) this._annotationIntrospector).isAnnotationBundle(annotation2)) {
                    annotated = _addFromBundleIfNotPresent(annotated, annotation2);
                }
            }
        }
        return annotated;
    }

    public TypeBase findSerializationType(AnnotatedMember annotatedMember, boolean z, TypeBase typeBase) {
        PropertyNamingStrategy propertyNamingStrategy = (PropertyNamingStrategy) this._annotationIntrospector;
        TypeBase refineSerializationType = propertyNamingStrategy.refineSerializationType((SerializationConfig) this._config, annotatedMember, typeBase);
        if (refineSerializationType != typeBase) {
            Class<?> cls = refineSerializationType._class;
            Class<?> cls2 = typeBase._class;
            if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m("Illegal concrete-type annotation for method '", annotatedMember.getName(), "': class ", cls.getName(), " not a super-type of (declared) class ", cls2.getName());
                return null;
            }
            typeBase = refineSerializationType;
            z = true;
        }
        JsonSerialize.Typing findSerializationTyping = propertyNamingStrategy.findSerializationTyping(annotatedMember);
        if (findSerializationTyping != null && findSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
            z = findSerializationTyping == JsonSerialize.Typing.STATIC;
        }
        if (z) {
            return typeBase.withStaticTyping();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.util.Annotations resolveClassAnnotations(java.util.List r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7._defaultBean
            java.lang.Class r0 = (java.lang.Class) r0
            boolean r1 = r7._useRealPropertyDefaults
            java.lang.Object r2 = r7._config
            com.fasterxml.jackson.databind.introspect.ClassIntrospector$MixInResolver r2 = (com.fasterxml.jackson.databind.introspect.ClassIntrospector$MixInResolver) r2
            java.lang.Object r3 = r7._annotationIntrospector
            com.fasterxml.jackson.databind.PropertyNamingStrategy r3 = (com.fasterxml.jackson.databind.PropertyNamingStrategy) r3
            if (r3 != 0) goto L11
            goto L22
        L11:
            if (r2 == 0) goto L1d
            boolean r3 = r2 instanceof com.fasterxml.jackson.databind.introspect.SimpleMixInResolver
            if (r3 == 0) goto L1b
            r3 = r2
            com.fasterxml.jackson.databind.introspect.SimpleMixInResolver r3 = (com.fasterxml.jackson.databind.introspect.SimpleMixInResolver) r3
            goto L1d
        L1b:
            r3 = 1
            goto L1e
        L1d:
            r3 = 0
        L1e:
            if (r3 != 0) goto L25
            if (r1 != 0) goto L25
        L22:
            com.hcaptcha.sdk.HCaptchaHtml r7 = com.fasterxml.jackson.databind.introspect.Annotated.NO_ANNOTATIONS
            return r7
        L25:
            java.lang.Object r4 = r7._defaultInclusion
            java.lang.Class r4 = (java.lang.Class) r4
            com.fasterxml.jackson.databind.introspect.AnnotationCollector$EmptyCollector r5 = com.fasterxml.jackson.databind.introspect.AnnotationCollector$EmptyCollector.instance
            if (r4 == 0) goto L31
            com.fasterxml.jackson.databind.introspect.Annotated r5 = r7._addClassMixIns(r5, r0, r4)
        L31:
            if (r1 == 0) goto L3b
            java.lang.annotation.Annotation[] r0 = com.fasterxml.jackson.databind.util.ClassUtil.findClassAnnotations(r0)
            com.fasterxml.jackson.databind.introspect.Annotated r5 = r7._addAnnotationsIfNotPresent(r5, r0)
        L3b:
            java.util.Iterator r8 = r8.iterator()
        L3f:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L65
            java.lang.Object r0 = r8.next()
            com.fasterxml.jackson.databind.type.TypeBase r0 = (com.fasterxml.jackson.databind.type.TypeBase) r0
            if (r3 == 0) goto L57
            java.lang.Class r4 = r0._class
            java.lang.Class r6 = r2.findMixInClassFor(r4)
            com.fasterxml.jackson.databind.introspect.Annotated r5 = r7._addClassMixIns(r5, r4, r6)
        L57:
            if (r1 == 0) goto L3f
            java.lang.Class r0 = r0._class
            java.lang.annotation.Annotation[] r0 = com.fasterxml.jackson.databind.util.ClassUtil.findClassAnnotations(r0)
            com.fasterxml.jackson.databind.introspect.Annotated r0 = r7._addAnnotationsIfNotPresent(r5, r0)
            r5 = r0
            goto L3f
        L65:
            if (r3 == 0) goto L71
            java.lang.Class<java.lang.Object> r8 = java.lang.Object.class
            java.lang.Class r0 = r2.findMixInClassFor(r8)
            com.fasterxml.jackson.databind.introspect.Annotated r5 = r7._addClassMixIns(r5, r8, r0)
        L71:
            com.fasterxml.jackson.databind.util.Annotations r7 = r5.asAnnotations()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder.resolveClassAnnotations(java.util.List):com.fasterxml.jackson.databind.util.Annotations");
    }

    public PropertyBuilder(MapperConfig mapperConfig, TypeBase typeBase, MapperConfig mapperConfig2) {
        Class cls = typeBase._class;
        this._defaultBean = cls;
        this._config = mapperConfig2;
        this._beanDesc = typeBase.getBindings();
        PropertyNamingStrategy annotationIntrospector = MapperFeature.USE_ANNOTATIONS.enabledIn(mapperConfig._mapperFeatures) ? mapperConfig.getAnnotationIntrospector() : null;
        this._annotationIntrospector = annotationIntrospector;
        this._defaultInclusion = null;
        this._useRealPropertyDefaults = (annotationIntrospector == null || (ClassUtil.isJDKClass(cls) && typeBase.isContainerType())) ? false : true;
    }

    public PropertyBuilder(int i, float f, PagerState pagerState) {
        this._config = pagerState;
        this._beanDesc = new ParcelableSnapshotMutableIntState(i);
        this._annotationIntrospector = new ParcelableSnapshotMutableFloatState(f);
        this._defaultInclusion = new LazyLayoutNearestRangeState(i, 30, 100);
    }

    public PropertyBuilder(MapperConfig mapperConfig, Class cls, ClassIntrospector$MixInResolver classIntrospector$MixInResolver) {
        this._defaultBean = cls;
        this._config = classIntrospector$MixInResolver;
        this._beanDesc = TypeBindings.EMPTY;
        if (mapperConfig == null) {
            this._annotationIntrospector = null;
            this._defaultInclusion = null;
        } else {
            PropertyNamingStrategy annotationIntrospector = MapperFeature.USE_ANNOTATIONS.enabledIn(mapperConfig._mapperFeatures) ? mapperConfig.getAnnotationIntrospector() : null;
            this._annotationIntrospector = annotationIntrospector;
            this._defaultInclusion = classIntrospector$MixInResolver != null ? classIntrospector$MixInResolver.findMixInClassFor(cls) : null;
            r0 = annotationIntrospector;
        }
        this._useRealPropertyDefaults = r0 != null;
    }
}
