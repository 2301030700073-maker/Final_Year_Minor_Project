package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import defpackage.C3464oj;
import j$.util.Objects;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class Oz {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal<TypedValue> f2712do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final WeakHashMap<Cnew, SparseArray<Cfor>> f2713do = new WeakHashMap<>(0);

    /* renamed from: do, reason: not valid java name */
    public static final Object f2711do = new Object();

    /* renamed from: Oz$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: Oz$case$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name */
            public static final Object f2714do = new Object();

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public static Method f2715do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public static boolean f2716do;
        }

        /* renamed from: Oz$case$if, reason: invalid class name */
        public static class Cif {
            /* renamed from: do, reason: not valid java name */
            public static void m1725do(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static void m1724do(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                Cif.m1725do(theme);
                return;
            }
            if (i >= 23) {
                synchronized (Cdo.f2714do) {
                    if (!Cdo.f2716do) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            Cdo.f2715do = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        Cdo.f2716do = true;
                    }
                    Method method = Cdo.f2715do;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            Cdo.f2715do = null;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: Oz$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Drawable m1726do(Resources resources, int i, Resources.Theme theme) {
            return resources.getDrawable(i, theme);
        }

        /* renamed from: if, reason: not valid java name */
        public static Drawable m1727if(Resources resources, int i, int i2, Resources.Theme theme) {
            return resources.getDrawableForDensity(i, i2, theme);
        }
    }

    /* renamed from: Oz$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final int f2717do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ColorStateList f2718do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Configuration f2719do;

        public Cfor(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f2718do = colorStateList;
            this.f2719do = configuration;
            this.f2717do = theme == null ? 0 : theme.hashCode();
        }
    }

    /* renamed from: Oz$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static int m1728do(Resources resources, int i, Resources.Theme theme) {
            int color;
            color = resources.getColor(i, theme);
            return color;
        }

        /* renamed from: if, reason: not valid java name */
        public static ColorStateList m1729if(Resources resources, int i, Resources.Theme theme) {
            ColorStateList colorStateList;
            colorStateList = resources.getColorStateList(i, theme);
            return colorStateList;
        }
    }

    /* renamed from: Oz$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Resources.Theme f2720do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Resources f2721do;

        public Cnew(Resources resources, Resources.Theme theme) {
            this.f2721do = resources;
            this.f2720do = theme;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cnew.class != obj.getClass()) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            return this.f2721do.equals(cnew.f2721do) && Objects.equals(this.f2720do, cnew.f2720do);
        }

        public final int hashCode() {
            return Objects.hash(this.f2721do, this.f2720do);
        }
    }

    /* renamed from: Oz$try, reason: invalid class name */
    public static abstract class Ctry {
        /* renamed from: do, reason: not valid java name */
        public final void m1730do(int i) {
            new Handler(Looper.getMainLooper()).post(new Qz(i, 0, this));
        }

        /* renamed from: for, reason: not valid java name */
        public abstract void mo1731for(int i);

        /* renamed from: if, reason: not valid java name */
        public final void m1732if(Typeface typeface) {
            new Handler(Looper.getMainLooper()).post(new Pz(0, this, typeface));
        }

        /* renamed from: new, reason: not valid java name */
        public abstract void mo1733new(Typeface typeface);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1721do(Cnew cnew, int i, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f2711do) {
            WeakHashMap<Cnew, SparseArray<Cfor>> weakHashMap = f2713do;
            SparseArray<Cfor> sparseArray = weakHashMap.get(cnew);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(cnew, sparseArray);
            }
            sparseArray.append(i, new Cfor(colorStateList, cnew.f2721do.getConfiguration(), theme));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Typeface m1722for(Context context, int i, TypedValue typedValue, int i2, Ctry ctry, boolean z, boolean z2) {
        Typeface typeface;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String charSequence2 = charSequence.toString();
        if (charSequence2.startsWith("res/")) {
            int i3 = typedValue.assetCookie;
            C3472or<String, Typeface> c3472or = LI.f1943do;
            typeface = c3472or.get(LI.m1322if(resources, i, charSequence2, i3, i2));
            if (typeface != null) {
                if (ctry != null) {
                    ctry.m1732if(typeface);
                }
            } else if (!z2) {
                try {
                    if (charSequence2.toLowerCase().endsWith(".xml")) {
                        C3464oj.Cif m7717do = C3464oj.m7717do(resources.getXml(i), resources);
                        if (m7717do != null) {
                            typeface = LI.m1321do(context, m7717do, resources, i, charSequence2, typedValue.assetCookie, i2, ctry, z);
                        } else if (ctry != null) {
                            ctry.m1730do(-3);
                        }
                    } else {
                        int i4 = typedValue.assetCookie;
                        typeface = LI.f1942do.mo1657new(context, resources, i, charSequence2, i2);
                        if (typeface != null) {
                            c3472or.put(LI.m1322if(resources, i, charSequence2, i4, i2), typeface);
                        }
                        if (ctry != null) {
                            if (typeface != null) {
                                ctry.m1732if(typeface);
                            } else {
                                ctry.m1730do(-3);
                            }
                        }
                    }
                } catch (IOException | XmlPullParserException unused) {
                    if (ctry != null) {
                        ctry.m1730do(-3);
                    }
                }
            }
            if (typeface == null || ctry != null || z2) {
                return typeface;
            }
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        if (ctry != null) {
            ctry.m1730do(-3);
        }
        typeface = null;
        if (typeface == null) {
        }
        return typeface;
    }

    /* renamed from: if, reason: not valid java name */
    public static Typeface m1723if(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m1722for(context, i, new TypedValue(), 0, null, false, false);
    }
}
