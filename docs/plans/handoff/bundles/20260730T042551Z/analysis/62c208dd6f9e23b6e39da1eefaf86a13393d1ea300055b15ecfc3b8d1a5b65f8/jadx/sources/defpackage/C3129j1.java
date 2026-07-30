package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* renamed from: j1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3129j1 {

    /* renamed from: do, reason: not valid java name */
    public static final ConcurrentHashMap f13629do = new ConcurrentHashMap();

    /* renamed from: if, reason: not valid java name */
    public static final ConcurrentHashMap f13630if = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name */
    public static void m7028do(Class cls, HashMap hashMap, HashMap hashMap2) {
        for (Method method : cls.getDeclaredMethods()) {
            if (!method.isBridge()) {
                if (method.isAnnotationPresent(JF.class)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != 1) {
                        StringBuilder sb = new StringBuilder("Method ");
                        sb.append(method);
                        sb.append(" has @Subscribe annotation but requires ");
                        throw new IllegalArgumentException(V1.m2506this(sb, parameterTypes.length, " arguments.  Methods must require a single argument."));
                    }
                    Class<?> cls2 = parameterTypes[0];
                    if (cls2.isInterface()) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " which is an interface.  Subscription must be on a concrete class type.");
                    }
                    if ((1 & method.getModifiers()) == 0) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " but is not 'public'.");
                    }
                    Set set = (Set) hashMap2.get(cls2);
                    if (set == null) {
                        set = new HashSet();
                        hashMap2.put(cls2, set);
                    }
                    set.add(method);
                } else if (method.isAnnotationPresent(Mx.class)) {
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    if (parameterTypes2.length != 0) {
                        StringBuilder sb2 = new StringBuilder("Method ");
                        sb2.append(method);
                        sb2.append("has @Produce annotation but requires ");
                        throw new IllegalArgumentException(V1.m2506this(sb2, parameterTypes2.length, " arguments.  Methods must require zero arguments."));
                    }
                    if (method.getReturnType() == Void.class) {
                        throw new IllegalArgumentException("Method " + method + " has a return type of void.  Must declare a non-void type.");
                    }
                    Class<?> returnType = method.getReturnType();
                    if (returnType.isInterface()) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " which is an interface.  Producers must return a concrete class type.");
                    }
                    if (returnType.equals(Void.TYPE)) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation but has no return type.");
                    }
                    if ((1 & method.getModifiers()) == 0) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " but is not 'public'.");
                    }
                    if (hashMap.containsKey(returnType)) {
                        throw new IllegalArgumentException("Producer for type " + returnType + " has already been registered.");
                    }
                    hashMap.put(returnType, method);
                } else {
                    continue;
                }
            }
        }
        f13629do.put(cls, hashMap);
        f13630if.put(cls, hashMap2);
    }
}
