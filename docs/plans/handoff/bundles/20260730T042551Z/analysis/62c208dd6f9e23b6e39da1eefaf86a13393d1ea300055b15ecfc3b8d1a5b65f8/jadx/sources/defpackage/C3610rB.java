package defpackage;

import android.app.Application;
import androidx.lifecycle.Cconst;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* renamed from: rB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3610rB {

    /* renamed from: do, reason: not valid java name */
    public static final List<Class<?>> f15224do = O4.m1618private(Application.class, Cconst.class);

    /* renamed from: if, reason: not valid java name */
    public static final List<Class<?>> f15225if = O4.m1617package(Cconst.class);

    /* renamed from: do, reason: not valid java name */
    public static final <T> Constructor<T> m7938do(Class<T> cls, List<? extends Class<?>> list) {
        C0173Do.m401try(list, "signature");
        Object[] constructors = cls.getConstructors();
        C0173Do.m399new(constructors, "modelClass.constructors");
        for (Object obj : constructors) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            C0173Do.m399new(parameterTypes, "constructor.parameterTypes");
            List i = J2.i(parameterTypes);
            if (C0173Do.m394do(list, i)) {
                return constructor;
            }
            if (list.size() == i.size() && i.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static final <T extends AbstractC0805cL> T m7939if(Class<T> cls, Constructor<T> constructor, Object... objArr) {
        try {
            return constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Failed to access " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
        }
    }
}
