package com.fasterxml.jackson.databind.util;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ClassUtil {
    public static final Annotation[] NO_ANNOTATIONS = new Annotation[0];
    public static final Ctor[] NO_CTORS = new Ctor[0];

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Ctor {
        public transient Annotation[] _annotations;
        public final Constructor _ctor;
        public transient Annotation[][] _paramAnnotations;
        public int _paramCount = -1;

        public Ctor(Constructor constructor) {
            this._ctor = constructor;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnumTypeLocator {
        public static final EnumTypeLocator instance = new EnumTypeLocator();
        public final Field enumMapTypeField;
        public final Field enumSetTypeField;
        public final String failForEnumMap;
        public final String failForEnumSet;

        public EnumTypeLocator() {
            String obj;
            Field field;
            String obj2;
            Field field2 = null;
            try {
                field = locateField(EnumSet.class, "elementType");
                obj = null;
            } catch (Exception e) {
                obj = e.toString();
                field = null;
            }
            this.enumSetTypeField = field;
            this.failForEnumSet = obj;
            try {
                obj2 = null;
                field2 = locateField(EnumMap.class, "keyType");
            } catch (Exception e2) {
                obj2 = e2.toString();
            }
            this.enumMapTypeField = field2;
            this.failForEnumMap = obj2;
        }

        public static Field locateField(Class cls, String str) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName()) && field.getType() == Class.class) {
                    field.setAccessible(true);
                    return field;
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m("No field named '", str, "' in class '", cls.getName(), "'"));
            return null;
        }
    }

    static {
        Collections.emptyIterator();
    }

    public static void _addRawSuperTypes(Class cls, Class cls2, ArrayList arrayList) {
        if (cls == cls2 || cls == null || cls == Object.class || arrayList.contains(cls)) {
            return;
        }
        arrayList.add(cls);
        for (Class<?> cls3 : cls.getInterfaces()) {
            _addRawSuperTypes(cls3, cls2, arrayList);
        }
        _addRawSuperTypes(cls.getSuperclass(), cls2, arrayList);
    }

    public static void _failGetClassMethods(Class cls, Throwable th) {
        String name = cls.getName();
        String name2 = th.getClass().getName();
        String message = th.getMessage();
        StringBuilder m352m = Modifier.CC.m352m("Failed on call to `getDeclaredMethods()` on class `", name, "`, problem: (", name2, ") ");
        m352m.append(message);
        throw new IllegalArgumentException(m352m.toString(), th);
    }

    public static String apostrophed(String str) {
        if (str == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\'');
        sb.append(str);
        sb.append('\'');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void checkAndFixAccess(Member member, boolean z) {
        AccessibleObject accessibleObject = (AccessibleObject) member;
        try {
            Class<?> declaringClass = member.getDeclaringClass();
            if (java.lang.reflect.Modifier.isPublic(member.getModifiers()) && java.lang.reflect.Modifier.isPublic(declaringClass.getModifiers()) && (!z || isJDKClass(declaringClass))) {
                return;
            }
            accessibleObject.setAccessible(true);
        } catch (SecurityException e) {
            if (accessibleObject.isAccessible()) {
                return;
            }
            Class<?> declaringClass2 = member.getDeclaringClass();
            StringBuilder sb = new StringBuilder("Cannot access ");
            sb.append(member);
            String name = declaringClass2.getName();
            String message = e.getMessage();
            sb.append(" (from class ");
            sb.append(name);
            sb.append("; failed to set access: ");
            sb.append(message);
            throw new IllegalArgumentException(sb.toString());
        } catch (RuntimeException e2) {
            if (!"InaccessibleObjectException".equals(e2.getClass().getSimpleName())) {
                throw e2;
            }
            String simpleName = member.getClass().getSimpleName();
            String name2 = member.getName();
            String nameOf = nameOf(member.getDeclaringClass());
            String name3 = e2.getClass().getName();
            String message2 = e2.getMessage();
            StringBuilder m352m = Modifier.CC.m352m("Failed to call `setAccess()` on ", simpleName, " '", name2, "' (of class ");
            Modifier.CC.m(m352m, nameOf, ") due to `", name3, "`, problem: ");
            m352m.append(message2);
            throw new IllegalArgumentException(m352m.toString(), e2);
        }
    }

    public static String classNameOf(Object obj) {
        if (obj == null) {
            return "[null]";
        }
        return nameOf(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    public static Object createInstance(Class cls, boolean z) {
        Constructor constructor;
        try {
            constructor = cls.getDeclaredConstructor(null);
            if (z) {
                checkAndFixAccess(constructor, z);
            } else if (!java.lang.reflect.Modifier.isPublic(constructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + cls.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: cannot instantiate type");
            }
        } catch (NoSuchMethodException unused) {
            constructor = null;
        } catch (Exception e) {
            e = e;
            String str = "Failed to find default constructor of class " + cls.getName() + ", problem: " + e.getMessage();
            while (e.getCause() != null) {
                e = e.getCause();
            }
            throwIfRTE(e);
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw new IllegalArgumentException(str, e);
        }
        if (constructor == null) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m$2(cls.getName(), " has no default (no arg) constructor", "Class ");
            return null;
        }
        try {
            return constructor.newInstance(null);
        } catch (Exception e2) {
            e = e2;
            String str2 = "Failed to instantiate class " + cls.getName() + ", problem: " + e.getMessage();
            while (e.getCause() != null) {
                e = e.getCause();
            }
            throwIfRTE(e);
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw new IllegalArgumentException(str2, e);
        }
    }

    public static String exceptionMessage(Throwable th) {
        return th instanceof JsonProcessingException ? ((JsonProcessingException) th).getOriginalMessage() : (!(th instanceof InvocationTargetException) || th.getCause() == null) ? th.getMessage() : th.getCause().getMessage();
    }

    public static Annotation[] findClassAnnotations(Class cls) {
        return isObjectOrPrimitive(cls) ? NO_ANNOTATIONS : cls.getDeclaredAnnotations();
    }

    public static ArrayList findSuperClasses(Class cls, Class cls2, boolean z) {
        ArrayList arrayList = new ArrayList(8);
        if (cls != null && cls != cls2) {
            if (z) {
                arrayList.add(cls);
            }
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls == cls2) {
                    break;
                }
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    public static Method[] getClassMethods(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                throw null;
            }
            try {
                try {
                    return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
                } finally {
                }
            } catch (ClassNotFoundException e2) {
                e.addSuppressed(e2);
                throw null;
            }
        } finally {
        }
    }

    public static Ctor[] getConstructors(Class cls) {
        if (cls.isInterface() || isObjectOrPrimitive(cls)) {
            return NO_CTORS;
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        Ctor[] ctorArr = new Ctor[length];
        for (int i = 0; i < length; i++) {
            ctorArr[i] = new Ctor(declaredConstructors[i]);
        }
        return ctorArr;
    }

    public static Class getOuterClass(Class cls) {
        if (!java.lang.reflect.Modifier.isStatic(cls.getModifiers())) {
            try {
                if ((isObjectOrPrimitive(cls) || cls.getEnclosingMethod() == null) && !isObjectOrPrimitive(cls)) {
                    return cls.getEnclosingClass();
                }
                return null;
            } catch (SecurityException unused) {
            }
        }
        return null;
    }

    public static String getTypeDescription(TypeBase typeBase) {
        if (typeBase == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(80);
        sb.append('`');
        sb.append(typeBase.buildCanonicalName());
        sb.append('`');
        return sb.toString();
    }

    public static boolean hasClass(Object obj, Class cls) {
        return obj != null && obj.getClass() == cls;
    }

    public static boolean isBogusClass(Class cls) {
        return cls == Void.class || cls == Void.TYPE || cls == TuplesKt.class;
    }

    public static boolean isJDKClass(Class cls) {
        String name = cls.getName();
        return name.startsWith("java.") || name.startsWith("javax.");
    }

    public static boolean isJacksonStdImpl(JsonSerializer jsonSerializer) {
        return jsonSerializer == null || jsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) != null;
    }

    public static boolean isObjectOrPrimitive(Class cls) {
        return cls == Object.class || cls.isPrimitive();
    }

    public static String nameOf(Class cls) {
        if (cls == null) {
            return "[null]";
        }
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
        }
        String simpleName = cls.isPrimitive() ? cls.getSimpleName() : cls.getName();
        if (i > 0) {
            StringBuilder sb = new StringBuilder(simpleName);
            do {
                sb.append("[]");
                i--;
            } while (i > 0);
            simpleName = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 2);
        sb2.append('`');
        sb2.append(simpleName);
        sb2.append('`');
        return sb2.toString();
    }

    public static Class primitiveType(Class cls) {
        if (cls.isPrimitive()) {
            return cls;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        return null;
    }

    public static void throwIfRTE(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
    }

    public static void verifyMustOverride(Class cls, StdSerializer stdSerializer, String str) {
        if (stdSerializer.getClass() == cls) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(Modifier.CC.m352m("Sub-class ", stdSerializer.getClass().getName(), " (of class ", cls.getName(), ") must override method '"), str, "'"));
    }
}
