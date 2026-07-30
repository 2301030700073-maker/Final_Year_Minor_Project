package defpackage;

import android.util.LongSparseArray;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class Rz {

    /* renamed from: do, reason: not valid java name */
    public static Class<?> f3248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Field f3249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f3250do;

    /* renamed from: for, reason: not valid java name */
    public static Field f3251for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static boolean f3252for;

    /* renamed from: if, reason: not valid java name */
    public static Field f3253if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static boolean f3254if;

    /* renamed from: new, reason: not valid java name */
    public static boolean f3255new;

    /* renamed from: Rz$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m2079do(LongSparseArray longSparseArray) {
            longSparseArray.clear();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2078do(Object obj) {
        LongSparseArray longSparseArray;
        if (!f3254if) {
            try {
                f3248do = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f3254if = true;
        }
        Class<?> cls = f3248do;
        if (cls == null) {
            return;
        }
        if (!f3252for) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f3253if = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f3252for = true;
        }
        Field field = f3253if;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            Cdo.m2079do(longSparseArray);
        }
    }
}
