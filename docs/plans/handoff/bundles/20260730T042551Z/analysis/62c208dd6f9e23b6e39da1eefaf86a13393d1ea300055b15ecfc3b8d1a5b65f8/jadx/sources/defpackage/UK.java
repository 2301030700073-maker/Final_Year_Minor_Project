package defpackage;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class UK {

    /* renamed from: do, reason: not valid java name */
    public static final Method f3862do;

    /* renamed from: UK$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static float m2375do(ViewConfiguration viewConfiguration) {
            float scaledHorizontalScrollFactor;
            scaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
            return scaledHorizontalScrollFactor;
        }

        /* renamed from: if, reason: not valid java name */
        public static float m2376if(ViewConfiguration viewConfiguration) {
            float scaledVerticalScrollFactor;
            scaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
            return scaledVerticalScrollFactor;
        }
    }

    /* renamed from: UK$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static int m2377do(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMaximumFlingVelocity(i, i2, i3);
        }

        /* renamed from: if, reason: not valid java name */
        public static int m2378if(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMinimumFlingVelocity(i, i2, i3);
        }
    }

    /* renamed from: UK$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static int m2379do(ViewConfiguration viewConfiguration) {
            int scaledHoverSlop;
            scaledHoverSlop = viewConfiguration.getScaledHoverSlop();
            return scaledHoverSlop;
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m2380if(ViewConfiguration viewConfiguration) {
            boolean shouldShowMenuShortcutsWhenKeyboardPresent;
            shouldShowMenuShortcutsWhenKeyboardPresent = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            return shouldShowMenuShortcutsWhenKeyboardPresent;
        }
    }

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f3862do = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static float m2374do(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f3862do) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception unused) {
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }
}
