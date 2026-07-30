package b.j;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public static Map f999a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static Map f1000b = new HashMap();

    public static InterfaceC0136f a(Constructor constructor, Object obj) {
        try {
            return (InterfaceC0136f) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static String b(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int c(Class cls) {
        Constructor constructor;
        boolean z;
        ArrayList arrayList;
        Integer num = (Integer) f999a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i = 1;
        if (cls.getCanonicalName() != null) {
            try {
                Package r4 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r4 != null ? r4.getName() : "";
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String b2 = b(canonicalName);
                if (!name.isEmpty()) {
                    b2 = name + "." + b2;
                }
                constructor = Class.forName(b2).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
            if (constructor != null) {
                f1000b.put(cls, Collections.singletonList(constructor));
            } else {
                C0134d c0134d = C0134d.f990c;
                Boolean bool = (Boolean) c0134d.f992b.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                c0134d.f992b.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            }
                            if (((u) declaredMethods[i2].getAnnotation(u.class)) != null) {
                                c0134d.a(cls, declaredMethods);
                                z = true;
                                break;
                            }
                            i2++;
                        }
                    } catch (NoClassDefFoundError e2) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
                    }
                }
                if (!z) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && InterfaceC0139i.class.isAssignableFrom(superclass)) {
                        arrayList = c(superclass) != 1 ? new ArrayList((Collection) f1000b.get(superclass)) : null;
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    int length2 = interfaces.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            Class<?> cls2 = interfaces[i3];
                            if (cls2 != null && InterfaceC0139i.class.isAssignableFrom(cls2)) {
                                if (c(cls2) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.addAll((Collection) f1000b.get(cls2));
                            }
                            i3++;
                        } else if (arrayList != null) {
                            f1000b.put(cls, arrayList);
                        }
                    }
                }
            }
            i = 2;
        }
        f999a.put(cls, Integer.valueOf(i));
        return i;
    }

    public static InterfaceC0138h d(Object obj) {
        boolean z = obj instanceof InterfaceC0138h;
        boolean z2 = obj instanceof InterfaceC0135e;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0135e) obj, (InterfaceC0138h) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0135e) obj, null);
        }
        if (z) {
            return (InterfaceC0138h) obj;
        }
        Class<?> cls = obj.getClass();
        if (c(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List list = (List) f1000b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a((Constructor) list.get(0), obj));
        }
        InterfaceC0136f[] interfaceC0136fArr = new InterfaceC0136f[list.size()];
        for (int i = 0; i < list.size(); i++) {
            interfaceC0136fArr[i] = a((Constructor) list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(interfaceC0136fArr);
    }
}
