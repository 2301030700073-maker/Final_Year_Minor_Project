package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes3.dex */
public final class P5 {

    /* renamed from: P5$do, reason: invalid class name */
    public static class Cdo implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        public final Object f2734do;

        public Cdo(UL ul) {
            this.f2734do = ul;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2 = this.f2734do;
            try {
                return Class.forName(method.getDeclaringClass().getName(), true, obj2.getClass().getClassLoader()).getDeclaredMethod(method.getName(), method.getParameterTypes()).invoke(obj2, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> T m1747do(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(P5.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
