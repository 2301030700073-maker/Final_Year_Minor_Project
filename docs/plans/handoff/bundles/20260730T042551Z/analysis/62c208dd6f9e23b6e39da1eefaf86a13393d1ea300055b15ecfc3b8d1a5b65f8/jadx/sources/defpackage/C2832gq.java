package defpackage;

import androidx.lifecycle.Cdo;
import androidx.lifecycle.Cif;
import androidx.lifecycle.Cthis;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/* renamed from: gq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2832gq {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f13218do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    public static final HashMap f13219if = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public static Cif m6749do(Constructor constructor, Object obj) {
        try {
            Object newInstance = constructor.newInstance(obj);
            C0173Do.m399new(newInstance, "{\n            constructo…tance(`object`)\n        }");
            return (Cif) newInstance;
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public static int m6750if(Class cls) {
        Constructor constructor;
        boolean z;
        HashMap hashMap = f13218do;
        Integer num = (Integer) hashMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r4 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r4 != null ? r4.getName() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                C0173Do.m399new(name, "fullPackage");
                if (!(name.length() == 0)) {
                    C0173Do.m399new(canonicalName, FacebookRequestErrorClassification.KEY_NAME);
                    canonicalName = canonicalName.substring(name.length() + 1);
                    C0173Do.m399new(canonicalName, "this as java.lang.String).substring(startIndex)");
                }
                C0173Do.m399new(canonicalName, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String concat = BF.i(canonicalName, ".", "_").concat("_LifecycleAdapter");
                if (!(name.length() == 0)) {
                    concat = name + '.' + concat;
                }
                constructor = Class.forName(concat).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
            HashMap hashMap2 = f13219if;
            if (constructor != null) {
                hashMap2.put(cls, O4.m1617package(constructor));
            } else {
                Cdo cdo = Cdo.f7108do;
                HashMap hashMap3 = cdo.f7110if;
                Boolean bool = (Boolean) hashMap3.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                hashMap3.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            }
                            if (((Cthis) declaredMethods[i2].getAnnotation(Cthis.class)) != null) {
                                cdo.m4253do(cls, declaredMethods);
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
                    if (superclass != null && InterfaceC2655dq.class.isAssignableFrom(superclass)) {
                        C0173Do.m399new(superclass, "superclass");
                        if (m6750if(superclass) != 1) {
                            Object obj = hashMap2.get(superclass);
                            C0173Do.m398if(obj);
                            arrayList = new ArrayList((Collection) obj);
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    C0173Do.m399new(interfaces, "klass.interfaces");
                    int length2 = interfaces.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            Class<?> cls2 = interfaces[i3];
                            if (cls2 != null && InterfaceC2655dq.class.isAssignableFrom(cls2)) {
                                C0173Do.m399new(cls2, "intrface");
                                if (m6750if(cls2) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                Object obj2 = hashMap2.get(cls2);
                                C0173Do.m398if(obj2);
                                arrayList.addAll((Collection) obj2);
                            }
                            i3++;
                        } else if (arrayList != null) {
                            hashMap2.put(cls, arrayList);
                        }
                    }
                }
            }
            i = 2;
        }
        hashMap.put(cls, Integer.valueOf(i));
        return i;
    }
}
