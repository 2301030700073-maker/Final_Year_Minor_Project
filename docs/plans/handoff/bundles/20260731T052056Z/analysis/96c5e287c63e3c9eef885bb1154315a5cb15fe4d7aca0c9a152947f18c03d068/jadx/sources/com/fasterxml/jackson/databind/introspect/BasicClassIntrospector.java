package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicClassIntrospector extends Annotated implements Serializable {
    public static final BasicBeanDescription BOOLEAN_DESC;
    public static final BasicBeanDescription INT_DESC;
    public static final BasicBeanDescription LONG_DESC;
    public static final BasicBeanDescription OBJECT_DESC;
    public static final BasicBeanDescription STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), new AnnotatedClass(String.class));

    static {
        Class cls = Boolean.TYPE;
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls), new AnnotatedClass(cls));
        Class cls2 = Integer.TYPE;
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls2), new AnnotatedClass(cls2));
        Class cls3 = Long.TYPE;
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls3), new AnnotatedClass(cls3));
        OBJECT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Object.class), new AnnotatedClass(Object.class));
    }

    public static BasicBeanDescription _findStdTypeDesc(MapperConfig mapperConfig, TypeBase typeBase) {
        Class cls = typeBase._class;
        if (cls.isPrimitive()) {
            if (cls != Integer.TYPE) {
                if (cls != Long.TYPE) {
                    if (cls != Boolean.TYPE) {
                        return null;
                    }
                    return BOOLEAN_DESC;
                }
                return LONG_DESC;
            }
            return INT_DESC;
        }
        if (!ClassUtil.isJDKClass(cls)) {
            if (JsonNode.class.isAssignableFrom(cls)) {
                return BasicBeanDescription.forOtherUse(mapperConfig, typeBase, new AnnotatedClass(cls));
            }
            return null;
        }
        if (cls == Object.class) {
            return OBJECT_DESC;
        }
        if (cls == String.class) {
            return STRING_DESC;
        }
        if (cls != Integer.class) {
            if (cls != Long.class) {
                if (cls != Boolean.class) {
                    return null;
                }
                return BOOLEAN_DESC;
            }
            return LONG_DESC;
        }
        return INT_DESC;
    }
}
