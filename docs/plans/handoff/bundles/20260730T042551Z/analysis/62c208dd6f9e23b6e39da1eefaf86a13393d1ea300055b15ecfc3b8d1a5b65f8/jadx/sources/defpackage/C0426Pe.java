package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: Pe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0426Pe {

    /* renamed from: do, reason: not valid java name */
    public static Method f2804do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f2805do;

    /* renamed from: if, reason: not valid java name */
    public static Method f2806if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static boolean f2807if;

    /* renamed from: Pe$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: case, reason: not valid java name */
        public static void m1783case(Drawable drawable, int i, int i2, int i3, int i4) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }

        /* renamed from: do, reason: not valid java name */
        public static void m1784do(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        /* renamed from: else, reason: not valid java name */
        public static void m1785else(Drawable drawable, int i) {
            drawable.setTint(i);
        }

        /* renamed from: for, reason: not valid java name */
        public static ColorFilter m1786for(Drawable drawable) {
            return drawable.getColorFilter();
        }

        /* renamed from: goto, reason: not valid java name */
        public static void m1787goto(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m1788if(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        /* renamed from: new, reason: not valid java name */
        public static void m1789new(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        /* renamed from: this, reason: not valid java name */
        public static void m1790this(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1791try(Drawable drawable, float f, float f2) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: Pe$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static int m1792do(Drawable drawable) {
            int layoutDirection;
            layoutDirection = drawable.getLayoutDirection();
            return layoutDirection;
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m1793if(Drawable drawable, int i) {
            boolean layoutDirection;
            layoutDirection = drawable.setLayoutDirection(i);
            return layoutDirection;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m1775case(Drawable drawable, PorterDuff.Mode mode) {
        Cdo.m1790this(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public static void m1776do(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            m1776do(((InsetDrawable) drawable).getDrawable());
            return;
        }
        if (drawable instanceof InterfaceC2807gN) {
            m1776do(((InterfaceC2807gN) drawable).mo6730do());
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Drawable child = drawableContainerState.getChild(i);
            if (child != null) {
                m1776do(child);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else, reason: not valid java name */
    public static <T extends Drawable> T m1777else(Drawable drawable) {
        return drawable instanceof InterfaceC2807gN ? (T) ((InterfaceC2807gN) drawable).mo6730do() : drawable;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m1778for(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Cif.m1793if(drawable, i);
        }
        if (!f2805do) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f2804do = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f2805do = true;
        }
        Method method = f2804do;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i));
                return true;
            } catch (Exception unused2) {
                f2804do = null;
            }
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Drawable m1779goto(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 23 ? drawable : !(drawable instanceof InterfaceC3734tH) ? new C2925iN(drawable) : drawable;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1780if(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Cif.m1792do(drawable);
        }
        if (!f2807if) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f2806if = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f2807if = true;
        }
        Method method = f2806if;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception unused2) {
                f2806if = null;
            }
        }
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m1781new(Drawable drawable, int i) {
        Cdo.m1785else(drawable, i);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1782try(Drawable drawable, ColorStateList colorStateList) {
        Cdo.m1787goto(drawable, colorStateList);
    }
}
