package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeNameIdResolver extends TypeIdResolverBase {
    public final SerializationConfig _config;
    public final HashMap _idToType;
    public final ConcurrentHashMap _typeToId;

    public TypeNameIdResolver(SerializationConfig serializationConfig, TypeBase typeBase, ConcurrentHashMap concurrentHashMap, HashMap hashMap) {
        super(typeBase, serializationConfig._base._typeFactory);
        this._config = serializationConfig;
        this._typeToId = concurrentHashMap;
        this._idToType = hashMap;
        MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES.getClass();
    }

    public final String idFromClass(Class cls) {
        if (cls == null) {
            return null;
        }
        String name = cls.getName();
        ConcurrentHashMap concurrentHashMap = this._typeToId;
        String str = (String) concurrentHashMap.get(name);
        if (str == null) {
            Class cls2 = this._typeFactory._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS)._class;
            MapperFeature mapperFeature = MapperFeature.USE_ANNOTATIONS;
            SerializationConfig serializationConfig = this._config;
            if (mapperFeature.enabledIn(serializationConfig._mapperFeatures)) {
                TypeBase constructType = serializationConfig.constructType(cls2);
                ((BasicClassIntrospector) serializationConfig._base._classIntrospector).getClass();
                BasicBeanDescription _findStdTypeDesc = BasicClassIntrospector._findStdTypeDesc(serializationConfig, constructType);
                if (_findStdTypeDesc == null) {
                    _findStdTypeDesc = BasicBeanDescription.forOtherUse(serializationConfig, constructType, PropertyBuilder.resolve(serializationConfig, constructType, serializationConfig));
                }
                str = serializationConfig.getAnnotationIntrospector().findTypeName(_findStdTypeDesc._classInfo);
            }
            if (str == null) {
                String name2 = cls2.getName();
                int lastIndexOf = name2.lastIndexOf(46);
                if (lastIndexOf >= 0) {
                    name2 = name2.substring(lastIndexOf + 1);
                }
                str = name2;
            }
            concurrentHashMap.put(name, str);
        }
        return str;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public final String idFromValue(Object obj) {
        return idFromClass(obj.getClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public final String idFromValueAndType(Object obj, Class cls) {
        return obj == null ? idFromClass(cls) : idFromClass(obj.getClass());
    }

    public final String toString() {
        return String.format("[%s; id-to-type=%s]", TypeNameIdResolver.class.getName(), this._idToType);
    }
}
