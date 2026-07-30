package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import defpackage.InterfaceC2714eq;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
/* renamed from: androidx.lifecycle.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7108do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f7109do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    public final HashMap f7110if = new HashMap();

    @Deprecated
    /* renamed from: androidx.lifecycle.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0038do {

        /* renamed from: do, reason: not valid java name */
        public final HashMap f7111do = new HashMap();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Map<Cif, Ctry.Cdo> f7112do;

        public C0038do(HashMap hashMap) {
            this.f7112do = hashMap;
            for (Map.Entry entry : hashMap.entrySet()) {
                Ctry.Cdo cdo = (Ctry.Cdo) entry.getValue();
                List list = (List) this.f7111do.get(cdo);
                if (list == null) {
                    list = new ArrayList();
                    this.f7111do.put(cdo, list);
                }
                list.add((Cif) entry.getKey());
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static void m4255do(List<Cif> list, InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    Cif cif = list.get(size);
                    cif.getClass();
                    try {
                        int i = cif.f7113do;
                        Method method = cif.f7114do;
                        if (i == 0) {
                            method.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            method.invoke(obj, interfaceC2714eq);
                        } else if (i == 2) {
                            method.invoke(obj, interfaceC2714eq, cdo);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    @Deprecated
    /* renamed from: androidx.lifecycle.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f7113do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Method f7114do;

        public Cif(int i, Method method) {
            this.f7113do = i;
            this.f7114do = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f7113do == cif.f7113do && this.f7114do.getName().equals(cif.f7114do.getName());
        }

        public final int hashCode() {
            return this.f7114do.getName().hashCode() + (this.f7113do * 31);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4252for(HashMap hashMap, Cif cif, Ctry.Cdo cdo, Class cls) {
        Ctry.Cdo cdo2 = (Ctry.Cdo) hashMap.get(cif);
        if (cdo2 == null || cdo == cdo2) {
            if (cdo2 == null) {
                hashMap.put(cif, cdo);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + cif.f7114do.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + cdo2 + ", new value " + cdo);
    }

    /* renamed from: do, reason: not valid java name */
    public final C0038do m4253do(Class<?> cls, Method[] methodArr) {
        int i;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null) {
            hashMap.putAll(m4254if(superclass).f7112do);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<Cif, Ctry.Cdo> entry : m4254if(cls2).f7112do.entrySet()) {
                m4252for(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            Cthis cthis = (Cthis) method.getAnnotation(Cthis.class);
            if (cthis != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!InterfaceC2714eq.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Ctry.Cdo value = cthis.value();
                if (parameterTypes.length > 1) {
                    if (!Ctry.Cdo.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Ctry.Cdo.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m4252for(hashMap, new Cif(i, method), value, cls);
                z = true;
            }
        }
        C0038do c0038do = new C0038do(hashMap);
        this.f7109do.put(cls, c0038do);
        this.f7110if.put(cls, Boolean.valueOf(z));
        return c0038do;
    }

    /* renamed from: if, reason: not valid java name */
    public final C0038do m4254if(Class<?> cls) {
        C0038do c0038do = (C0038do) this.f7109do.get(cls);
        return c0038do != null ? c0038do : m4253do(cls, null);
    }
}
