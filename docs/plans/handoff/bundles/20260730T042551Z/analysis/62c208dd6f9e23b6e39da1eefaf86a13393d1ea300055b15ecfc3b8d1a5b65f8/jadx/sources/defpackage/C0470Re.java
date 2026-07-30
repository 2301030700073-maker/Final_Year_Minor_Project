package defpackage;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: Re, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0470Re {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f3209do = {R.attr.state_checked};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f3210if = new int[0];

    /* renamed from: do, reason: not valid java name */
    public static final Rect f3208do = new Rect();

    /* renamed from: Re$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Field f3211do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final Method f3212do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final boolean f3213do;

        /* renamed from: for, reason: not valid java name */
        public static final Field f3214for;

        /* renamed from: if, reason: not valid java name */
        public static final Field f3215if;

        /* renamed from: new, reason: not valid java name */
        public static final Field f3216new;

        /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
        static {
            /*
                r0 = 1
                r1 = 0
                r2 = 0
                java.lang.String r3 = "android.graphics.Insets"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.NoSuchFieldException -> L44 java.lang.ClassNotFoundException -> L49 java.lang.NoSuchMethodException -> L4e
                java.lang.Class<android.graphics.drawable.Drawable> r4 = android.graphics.drawable.Drawable.class
                java.lang.String r5 = "getOpticalInsets"
                java.lang.Class[] r6 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchFieldException -> L44 java.lang.ClassNotFoundException -> L49 java.lang.NoSuchMethodException -> L4e
                java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.NoSuchFieldException -> L44 java.lang.ClassNotFoundException -> L49 java.lang.NoSuchMethodException -> L4e
                java.lang.String r5 = "left"
                java.lang.reflect.Field r5 = r3.getField(r5)     // Catch: java.lang.NoSuchFieldException -> L3b java.lang.ClassNotFoundException -> L3e java.lang.NoSuchMethodException -> L41
                java.lang.String r6 = "top"
                java.lang.reflect.Field r6 = r3.getField(r6)     // Catch: java.lang.NoSuchFieldException -> L32 java.lang.ClassNotFoundException -> L35 java.lang.NoSuchMethodException -> L38
                java.lang.String r7 = "right"
                java.lang.reflect.Field r7 = r3.getField(r7)     // Catch: java.lang.Throwable -> L2f
                java.lang.String r8 = "bottom"
                java.lang.reflect.Field r3 = r3.getField(r8)     // Catch: java.lang.Throwable -> L2d
                r8 = 1
                goto L55
            L2d:
                goto L53
            L2f:
                r7 = r1
                goto L53
            L32:
                r6 = r1
                goto L52
            L35:
                r6 = r1
                goto L52
            L38:
                r6 = r1
                goto L52
            L3b:
                r5 = r1
                goto L47
            L3e:
                r5 = r1
                goto L4c
            L41:
                r5 = r1
                goto L51
            L44:
                r4 = r1
                r5 = r4
            L47:
                r6 = r5
                goto L52
            L49:
                r4 = r1
                r5 = r4
            L4c:
                r6 = r5
                goto L52
            L4e:
                r4 = r1
                r5 = r4
            L51:
                r6 = r5
            L52:
                r7 = r6
            L53:
                r3 = r1
                r8 = 0
            L55:
                if (r8 == 0) goto L64
                defpackage.C0470Re.Cdo.f3212do = r4
                defpackage.C0470Re.Cdo.f3211do = r5
                defpackage.C0470Re.Cdo.f3215if = r6
                defpackage.C0470Re.Cdo.f3214for = r7
                defpackage.C0470Re.Cdo.f3216new = r3
                defpackage.C0470Re.Cdo.f3213do = r0
                goto L70
            L64:
                defpackage.C0470Re.Cdo.f3212do = r1
                defpackage.C0470Re.Cdo.f3211do = r1
                defpackage.C0470Re.Cdo.f3215if = r1
                defpackage.C0470Re.Cdo.f3214for = r1
                defpackage.C0470Re.Cdo.f3216new = r1
                defpackage.C0470Re.Cdo.f3213do = r2
            L70:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0470Re.Cdo.<clinit>():void");
        }
    }

    /* renamed from: Re$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Insets m2064do(Drawable drawable) {
            Insets opticalInsets;
            opticalInsets = drawable.getOpticalInsets();
            return opticalInsets;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2061do(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i = Build.VERSION.SDK_INT;
        int[] iArr = f3210if;
        int[] iArr2 = f3209do;
        if (i == 21 && "android.graphics.drawable.VectorDrawable".equals(name)) {
            int[] state = drawable.getState();
            if (state == null || state.length == 0) {
                drawable.setState(iArr2);
            } else {
                drawable.setState(iArr);
            }
            drawable.setState(state);
            return;
        }
        if (i < 29 || i >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state2 = drawable.getState();
        if (state2 == null || state2.length == 0) {
            drawable.setState(iArr2);
        } else {
            drawable.setState(iArr);
        }
        drawable.setState(state2);
    }

    /* renamed from: for, reason: not valid java name */
    public static PorterDuff.Mode m2062for(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Rect m2063if(Drawable drawable) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 29) {
            Insets m2064do = Cif.m2064do(drawable);
            i = m2064do.left;
            i2 = m2064do.top;
            i3 = m2064do.right;
            i4 = m2064do.bottom;
            return new Rect(i, i2, i3, i4);
        }
        Drawable m1777else = C0426Pe.m1777else(drawable);
        if (i5 >= 29) {
            boolean z = Cdo.f3213do;
        } else if (Cdo.f3213do) {
            try {
                Object invoke = Cdo.f3212do.invoke(m1777else, new Object[0]);
                if (invoke != null) {
                    return new Rect(Cdo.f3211do.getInt(invoke), Cdo.f3215if.getInt(invoke), Cdo.f3214for.getInt(invoke), Cdo.f3216new.getInt(invoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f3208do;
    }
}
