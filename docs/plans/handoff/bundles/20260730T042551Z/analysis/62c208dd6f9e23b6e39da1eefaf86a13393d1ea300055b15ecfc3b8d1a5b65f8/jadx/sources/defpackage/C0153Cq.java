package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* renamed from: Cq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0153Cq implements InterfaceC0175Dq {

    /* renamed from: if, reason: not valid java name */
    public static final Locale[] f435if = new Locale[0];

    /* renamed from: do, reason: not valid java name */
    public final String f436do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Locale[] f437do;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else {
            if (split.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(split[0]);
        }
    }

    public C0153Cq(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f437do = f435if;
            this.f436do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(Creturn.m7981if("list[", i, "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f437do = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f436do = sb.toString();
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: do, reason: not valid java name */
    public final Object mo301do() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0153Cq)) {
            return false;
        }
        Locale[] localeArr = ((C0153Cq) obj).f437do;
        Locale[] localeArr2 = this.f437do;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < localeArr2.length; i++) {
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: for, reason: not valid java name */
    public final String mo302for() {
        return this.f436do;
    }

    public final int hashCode() {
        int i = 1;
        for (Locale locale : this.f437do) {
            i = (i * 31) + locale.hashCode();
        }
        return i;
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: if, reason: not valid java name */
    public final Locale mo303if(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.f437do;
            if (i < localeArr.length) {
                return localeArr[i];
            }
        }
        return null;
    }

    @Override // defpackage.InterfaceC0175Dq
    public final boolean isEmpty() {
        return this.f437do.length == 0;
    }

    @Override // defpackage.InterfaceC0175Dq
    public final int size() {
        return this.f437do.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f437do;
            if (i >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < localeArr.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }
}
