package defpackage;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* renamed from: Bq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0131Bq {

    /* renamed from: do, reason: not valid java name */
    public static final C0131Bq f288do = m226do(new Locale[0]);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0175Dq f289do;

    /* renamed from: Bq$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Locale[] f290do = {new Locale("en", "XA"), new Locale("ar", "XB")};

        /* renamed from: do, reason: not valid java name */
        public static Locale m230do(String str) {
            return Locale.forLanguageTag(str);
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m231if(Locale locale, Locale locale2) {
            boolean z;
            boolean z2;
            if (locale.equals(locale2)) {
                return true;
            }
            if (!locale.getLanguage().equals(locale2.getLanguage())) {
                return false;
            }
            Locale[] localeArr = f290do;
            int length = localeArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (localeArr[i].equals(locale)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                int length2 = localeArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length2) {
                        z2 = false;
                        break;
                    }
                    if (localeArr[i2].equals(locale2)) {
                        z2 = true;
                        break;
                    }
                    i2++;
                }
                if (!z2) {
                    String m965do = C0281Im.m965do(locale);
                    if (!m965do.isEmpty()) {
                        return m965do.equals(C0281Im.m965do(locale2));
                    }
                    String country = locale.getCountry();
                    return country.isEmpty() || country.equals(locale2.getCountry());
                }
            }
            return false;
        }
    }

    /* renamed from: Bq$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static LocaleList m232do(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        /* renamed from: for, reason: not valid java name */
        public static LocaleList m233for() {
            LocaleList localeList;
            localeList = LocaleList.getDefault();
            return localeList;
        }

        /* renamed from: if, reason: not valid java name */
        public static LocaleList m234if() {
            LocaleList adjustedDefault;
            adjustedDefault = LocaleList.getAdjustedDefault();
            return adjustedDefault;
        }
    }

    public C0131Bq(InterfaceC0175Dq interfaceC0175Dq) {
        this.f289do = interfaceC0175Dq;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0131Bq m226do(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new C0131Bq(new C0197Eq(Cif.m232do(localeArr))) : new C0131Bq(new C0153Cq(localeArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static C0131Bq m227if(String str) {
        if (str == null || str.isEmpty()) {
            return f288do;
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = Cdo.m230do(split[i]);
        }
        return m226do(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0131Bq) {
            if (this.f289do.equals(((C0131Bq) obj).f289do)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final Locale m228for(int i) {
        return this.f289do.mo303if(i);
    }

    public final int hashCode() {
        return this.f289do.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m229new() {
        return this.f289do.isEmpty();
    }

    public final String toString() {
        return this.f289do.toString();
    }
}
