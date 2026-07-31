package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicBeanDescription {
    public static final Class[] NO_VIEWS = new Class[0];
    public final PropertyNamingStrategy _annotationIntrospector;
    public final AnnotatedClass _classInfo;
    public final MapperConfig _config;
    public Class[] _defaultViews;
    public boolean _defaultViewsResolved;
    public final ObjectIdInfo _objectIdInfo;
    public final POJOPropertiesCollector _propCollector;
    public List _properties;
    public final TypeBase _type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BasicBeanDescription(com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector r3) {
        /*
            r2 = this;
            com.fasterxml.jackson.databind.type.TypeBase r0 = r3._type
            com.fasterxml.jackson.databind.introspect.AnnotatedClass r1 = r3._classDef
            r2.<init>(r0)
            r2._propCollector = r3
            com.fasterxml.jackson.databind.SerializationConfig r0 = r3._config
            r2._config = r0
            com.fasterxml.jackson.databind.PropertyNamingStrategy r0 = r0.getAnnotationIntrospector()
            r2._annotationIntrospector = r0
            r2._classInfo = r1
            com.fasterxml.jackson.databind.PropertyNamingStrategy r3 = r3._annotationIntrospector
            com.fasterxml.jackson.databind.introspect.ObjectIdInfo r0 = r3.findObjectIdInfo(r1)
            if (r0 == 0) goto L21
            com.fasterxml.jackson.databind.introspect.ObjectIdInfo r0 = r3.findObjectReferenceInfo(r1, r0)
        L21:
            r2._objectIdInfo = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.BasicBeanDescription.<init>(com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector):void");
    }

    public static BasicBeanDescription forOtherUse(MapperConfig mapperConfig, TypeBase typeBase, AnnotatedClass annotatedClass) {
        List list = Collections.EMPTY_LIST;
        return new BasicBeanDescription(mapperConfig, typeBase, annotatedClass);
    }

    public final JsonFormat.Value findExpectedFormat() {
        JsonFormat.Value value;
        AnnotatedClass annotatedClass = this._classInfo;
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        if (propertyNamingStrategy == null || (value = propertyNamingStrategy.findFormat(annotatedClass)) == null) {
            value = null;
        }
        Class cls = annotatedClass._class;
        ((MapperConfigBase) this._config).getClass();
        JsonFormat.Value value2 = JsonFormat.Value.EMPTY;
        return value2 != null ? value == null ? value2 : value.withOverrides(value2) : value;
    }

    public final AnnotatedMember findJsonValueAccessor() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        if (pOJOPropertiesCollector != null) {
            if (!pOJOPropertiesCollector._collected) {
                pOJOPropertiesCollector.collectAll();
            }
            LinkedList linkedList = pOJOPropertiesCollector._jsonValueAccessors;
            if (linkedList != null) {
                int size = linkedList.size();
                LinkedList linkedList2 = pOJOPropertiesCollector._jsonValueAccessors;
                if (size <= 1) {
                    return (AnnotatedMember) linkedList2.get(0);
                }
                pOJOPropertiesCollector.reportProblem("Multiple 'as-value' properties defined (%s vs %s)", linkedList2.get(0), pOJOPropertiesCollector._jsonValueAccessors.get(1));
                throw null;
            }
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BasicBeanDescription(MapperConfig mapperConfig, TypeBase typeBase, AnnotatedClass annotatedClass) {
        this(typeBase);
        List list = Collections.EMPTY_LIST;
        this._propCollector = null;
        this._config = mapperConfig;
        if (mapperConfig == null) {
            this._annotationIntrospector = null;
        } else {
            this._annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        }
        this._classInfo = annotatedClass;
        this._properties = list;
    }

    public BasicBeanDescription(TypeBase typeBase) {
        this._type = typeBase;
    }
}
