package defpackage;

import android.icu.util.ULocale;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* renamed from: Im, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0281Im {

    /* renamed from: do, reason: not valid java name */
    public static final Method f1564do;

    /* renamed from: Im$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static String m966do(Locale locale) {
            return locale.getScript();
        }
    }

    /* renamed from: Im$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static ULocale m967do(Object obj) {
            ULocale addLikelySubtags;
            addLikelySubtags = ULocale.addLikelySubtags((ULocale) obj);
            return addLikelySubtags;
        }

        /* renamed from: for, reason: not valid java name */
        public static String m968for(Object obj) {
            String script;
            script = ((ULocale) obj).getScript();
            return script;
        }

        /* renamed from: if, reason: not valid java name */
        public static ULocale m969if(Locale locale) {
            ULocale forLocale;
            forLocale = ULocale.forLocale(locale);
            return forLocale;
        }
    }

    static {
        if (Build.VERSION.SDK_INT < 24) {
            try {
                f1564do = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m965do(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cif.m968for(Cif.m967do(Cif.m969if(locale)));
        }
        try {
            return Cdo.m966do((Locale) f1564do.invoke(null, locale));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return Cdo.m966do(locale);
        }
    }
}
