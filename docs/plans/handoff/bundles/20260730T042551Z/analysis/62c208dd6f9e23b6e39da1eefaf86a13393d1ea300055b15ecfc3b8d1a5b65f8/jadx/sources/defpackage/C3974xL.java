package defpackage;

import android.annotation.SuppressLint;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: xL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3974xL {

    /* renamed from: do, reason: not valid java name */
    public static Field f16545do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Method f16546do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f16547do = true;

    /* renamed from: for, reason: not valid java name */
    public static boolean f16548for;

    /* renamed from: if, reason: not valid java name */
    public static boolean f16549if;

    /* renamed from: xL$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static float m8641do(View view) {
            float transitionAlpha;
            transitionAlpha = view.getTransitionAlpha();
            return transitionAlpha;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m8642if(View view, float f) {
            view.setTransitionAlpha(f);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: do */
    public float mo177do(View view) {
        if (f16547do) {
            try {
                return Cdo.m8641do(view);
            } catch (NoSuchMethodError unused) {
                f16547do = false;
            }
        }
        return view.getAlpha();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: for */
    public void mo179for(View view, float f) {
        if (f16547do) {
            try {
                Cdo.m8642if(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                f16547do = false;
            }
        }
        view.setAlpha(f);
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: if */
    public void mo180if(View view, int i, int i2, int i3, int i4) {
        if (!f16549if) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                f16546do = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f16549if = true;
        }
        Method method = f16546do;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException unused2) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: new */
    public void mo70new(View view, int i) {
        if (!f16548for) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f16545do = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f16548for = true;
        }
        Field field = f16545do;
        if (field != null) {
            try {
                f16545do.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
