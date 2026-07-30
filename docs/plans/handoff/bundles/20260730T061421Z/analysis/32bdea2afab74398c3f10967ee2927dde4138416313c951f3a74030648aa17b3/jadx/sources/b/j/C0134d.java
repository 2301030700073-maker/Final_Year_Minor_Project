package b.j;

import androidx.lifecycle.Lifecycle$Event;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.j.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0134d {

    /* renamed from: c, reason: collision with root package name */
    public static C0134d f990c = new C0134d();

    /* renamed from: a, reason: collision with root package name */
    public final Map f991a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map f992b = new HashMap();

    public final C0132b a(Class cls, Method[] methodArr) {
        int i;
        C0132b b2;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (b2 = b(superclass)) != null) {
            hashMap.putAll(b2.f987b);
        }
        for (Class cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : b(cls2).f987b.entrySet()) {
                c(hashMap, (C0133c) entry.getKey(), (Lifecycle$Event) entry.getValue(), cls);
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
            u uVar = (u) method.getAnnotation(u.class);
            if (uVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(j.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle$Event value = uVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle$Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Lifecycle$Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                c(hashMap, new C0133c(i, method), value, cls);
                z = true;
            }
        }
        C0132b c0132b = new C0132b(hashMap);
        this.f991a.put(cls, c0132b);
        this.f992b.put(cls, Boolean.valueOf(z));
        return c0132b;
    }

    public C0132b b(Class cls) {
        C0132b c0132b = (C0132b) this.f991a.get(cls);
        return c0132b != null ? c0132b : a(cls, null);
    }

    public final void c(Map map, C0133c c0133c, Lifecycle$Event lifecycle$Event, Class cls) {
        Lifecycle$Event lifecycle$Event2 = (Lifecycle$Event) map.get(c0133c);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                map.put(c0133c, lifecycle$Event);
                return;
            }
            return;
        }
        Method method = c0133c.f989b;
        StringBuilder f = c.a.c.a.a.f("Method ");
        f.append(method.getName());
        f.append(" in ");
        f.append(cls.getName());
        f.append(" already declared with different @OnLifecycleEvent value: previous value ");
        f.append(lifecycle$Event2);
        f.append(", new value ");
        f.append(lifecycle$Event);
        throw new IllegalArgumentException(f.toString());
    }
}
