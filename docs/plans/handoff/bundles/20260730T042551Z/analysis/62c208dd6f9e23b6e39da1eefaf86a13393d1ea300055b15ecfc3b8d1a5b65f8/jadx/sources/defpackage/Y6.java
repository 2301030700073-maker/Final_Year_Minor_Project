package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class Y6 {

    /* renamed from: do, reason: not valid java name */
    public static Method f4660do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f4661do;

    /* renamed from: if, reason: not valid java name */
    public static Method f4662if;

    /* renamed from: Y6$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m2889do(Canvas canvas) {
            canvas.disableZ();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2890if(Canvas canvas) {
            canvas.enableZ();
        }
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: do, reason: not valid java name */
    public static void m2888do(Canvas canvas, boolean z) {
        Method method;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            if (z) {
                Cdo.m2890if(canvas);
                return;
            } else {
                Cdo.m2889do(canvas);
                return;
            }
        }
        if (i == 28) {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
        if (!f4661do) {
            try {
                Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                f4660do = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                f4662if = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f4661do = true;
        }
        if (z) {
            try {
                Method method2 = f4660do;
                if (method2 != null) {
                    method2.invoke(canvas, new Object[0]);
                }
            } catch (IllegalAccessException unused2) {
                return;
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
        if (z || (method = f4662if) == null) {
            return;
        }
        method.invoke(canvas, new Object[0]);
    }
}
