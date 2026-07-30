package defpackage;

import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: hx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2898hx {

    /* renamed from: do, reason: not valid java name */
    public static Field f13409do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Method f13410do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f13411do;

    /* renamed from: if, reason: not valid java name */
    public static boolean f13412if;

    /* renamed from: hx$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static boolean m6849do(PopupWindow popupWindow) {
            boolean overlapAnchor;
            overlapAnchor = popupWindow.getOverlapAnchor();
            return overlapAnchor;
        }

        /* renamed from: for, reason: not valid java name */
        public static void m6850for(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        /* renamed from: if, reason: not valid java name */
        public static int m6851if(PopupWindow popupWindow) {
            int windowLayoutType;
            windowLayoutType = popupWindow.getWindowLayoutType();
            return windowLayoutType;
        }

        /* renamed from: new, reason: not valid java name */
        public static void m6852new(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6847do(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            Cdo.m6850for(popupWindow, z);
            return;
        }
        if (!f13412if) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f13409do = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f13412if = true;
        }
        Field field = f13409do;
        if (field != null) {
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6848if(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            Cdo.m6852new(popupWindow, i);
            return;
        }
        if (!f13411do) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f13410do = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f13411do = true;
        }
        Method method = f13410do;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception unused2) {
            }
        }
    }
}
