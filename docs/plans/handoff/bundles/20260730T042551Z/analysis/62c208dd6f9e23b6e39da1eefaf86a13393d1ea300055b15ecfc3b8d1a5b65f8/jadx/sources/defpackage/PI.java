package defpackage;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class PI extends OI {
    @Override // defpackage.OI
    /* renamed from: break */
    public final Typeface mo1654break(Object obj) {
        try {
            Object newInstance = Array.newInstance(((OI) this).f2629if, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f2627else.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // defpackage.OI
    /* renamed from: final */
    public final Method mo1656final(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
