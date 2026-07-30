package defpackage;

import defpackage.AbstractC2890hp;
import java.io.ObjectStreamClass;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class U7<T> extends AbstractC2890hp<T> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3833do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FM f3834do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, Cif<?>> f3835do;

    /* renamed from: U7$do, reason: invalid class name */
    public static class Cdo implements AbstractC2890hp.Cdo {
        /* renamed from: if, reason: not valid java name */
        public static boolean m2362if(Class cls) {
            return cls.getName().startsWith("java.") || cls.getName().startsWith("javax.") || cls.getName().startsWith("android.");
        }

        @Override // defpackage.AbstractC2890hp.Cdo
        /* renamed from: do */
        public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
            FM t7;
            Class<?> m2722case = WI.m2722case(type);
            if (m2722case.isInterface() || m2722case.isEnum()) {
                return null;
            }
            if (m2362if(m2722case)) {
                throw new IllegalArgumentException("Platform " + type + " annotated " + set + " requires explicit JsonAdapter to be registered");
            }
            if (!set.isEmpty()) {
                return null;
            }
            if (m2722case.getEnclosingClass() != null && !Modifier.isStatic(m2722case.getModifiers())) {
                if (m2722case.getSimpleName().isEmpty()) {
                    throw new IllegalArgumentException("Cannot serialize anonymous class ".concat(m2722case.getName()));
                }
                throw new IllegalArgumentException("Cannot serialize non-static nested class ".concat(m2722case.getName()));
            }
            if (Modifier.isAbstract(m2722case.getModifiers())) {
                throw new IllegalArgumentException("Cannot serialize abstract class ".concat(m2722case.getName()));
            }
            try {
                try {
                    try {
                        Constructor<?> declaredConstructor = m2722case.getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        t7 = new R7(declaredConstructor, m2722case);
                    } catch (NoSuchMethodException unused) {
                        Class<?> cls = Class.forName("sun.misc.Unsafe");
                        Field declaredField = cls.getDeclaredField("theUnsafe");
                        declaredField.setAccessible(true);
                        t7 = new S7(cls.getMethod("allocateInstance", Class.class), declaredField.get(null), m2722case);
                    }
                } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    t7 = new T7(declaredMethod2, m2722case, intValue);
                } catch (IllegalAccessException unused3) {
                    throw new AssertionError();
                }
                TreeMap treeMap = new TreeMap();
                while (type != Object.class) {
                    Class<?> m2722case2 = WI.m2722case(type);
                    boolean m2362if = m2362if(m2722case2);
                    for (Field field : m2722case2.getDeclaredFields()) {
                        int modifiers = field.getModifiers();
                        if ((Modifier.isStatic(modifiers) || Modifier.isTransient(modifiers) || (!Modifier.isPublic(modifiers) && !Modifier.isProtected(modifiers) && m2362if)) ? false : true) {
                            Type m2724else = WI.m2724else(type, m2722case2, field.getGenericType());
                            Set<Annotation> set2 = UJ.f3861do;
                            AbstractC2890hp<T> m8486if = c3886vt.m8486if(m2724else, UJ.m2373if(field.getAnnotations()));
                            field.setAccessible(true);
                            Cif cif = new Cif(field, m8486if);
                            InterfaceC2772fp interfaceC2772fp = (InterfaceC2772fp) field.getAnnotation(InterfaceC2772fp.class);
                            Cif cif2 = (Cif) treeMap.put(interfaceC2772fp != null ? interfaceC2772fp.name() : field.getName(), cif);
                            if (cif2 != null) {
                                throw new IllegalArgumentException("Conflicting fields:\n    " + cif2.f3837do + "\n    " + field);
                            }
                        }
                    }
                    Class<?> m2722case3 = WI.m2722case(type);
                    type = WI.m2724else(type, m2722case3, m2722case3.getGenericSuperclass());
                }
                return new C2831gp(new U7(t7, treeMap));
            } catch (IllegalAccessException unused4) {
                throw new AssertionError();
            } catch (NoSuchMethodException unused5) {
                throw new IllegalArgumentException("cannot construct instances of ".concat(m2722case.getName()));
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: U7$if, reason: invalid class name */
    public static class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC2890hp<T> f3836do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Field f3837do;

        public Cif(Field field, AbstractC2890hp<T> abstractC2890hp) {
            this.f3837do = field;
            this.f3836do = abstractC2890hp;
        }
    }

    public U7(FM fm, TreeMap treeMap) {
        this.f3834do = fm;
        this.f3835do = treeMap;
    }

    @Override // defpackage.AbstractC2890hp
    /* renamed from: do */
    public final T mo249do(C3470op c3470op) {
        try {
            T t = (T) this.f3834do.mo611if();
            try {
                c3470op.m7731if();
                while (c3470op.m7725class()) {
                    Cif<?> cif = this.f3835do.get(c3470op.m7735package());
                    if (cif != null) {
                        cif.f3837do.set(t, cif.f3836do.mo249do(c3470op));
                    } else {
                        c3470op.k();
                    }
                }
                c3470op.m7730goto();
                return t;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            if (targetException instanceof Error) {
                throw ((Error) targetException);
            }
            throw new RuntimeException(targetException);
        }
    }

    public final String toString() {
        return "JsonAdapter(" + this.f3834do + ")";
    }
}
