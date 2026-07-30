package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: Gm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0237Gm {

    /* renamed from: do, reason: not valid java name */
    public static final char[] f1226do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: case, reason: not valid java name */
    public final String f1227case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f1228do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<String> f1230do;

    /* renamed from: for, reason: not valid java name */
    public final String f1231for;

    /* renamed from: if, reason: not valid java name */
    public final String f1232if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final List<String> f1233if;

    /* renamed from: new, reason: not valid java name */
    public final String f1234new;

    /* renamed from: try, reason: not valid java name */
    public final String f1235try;

    /* renamed from: Gm$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f1237do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f1238do;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ArrayList f1241if;

        /* renamed from: new, reason: not valid java name */
        public String f1242new;

        /* renamed from: try, reason: not valid java name */
        public String f1243try;

        /* renamed from: if, reason: not valid java name */
        public String f1240if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: for, reason: not valid java name */
        public String f1239for = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: do, reason: not valid java name */
        public int f1236do = -1;

        public Cdo() {
            ArrayList arrayList = new ArrayList();
            this.f1238do = arrayList;
            arrayList.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }

        /* renamed from: do, reason: not valid java name */
        public final C0237Gm m759do() {
            if (this.f1237do == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f1242new != null) {
                return new C0237Gm(this);
            }
            throw new IllegalStateException("host == null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:181:0x0239, code lost:
        
            if (r1 <= 65535) goto L121;
         */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m760if(defpackage.C0237Gm r32, java.lang.String r33) {
            /*
                Method dump skipped, instructions count: 985
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0237Gm.Cdo.m760if(Gm, java.lang.String):void");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f1237do;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f1240if.isEmpty() || !this.f1239for.isEmpty()) {
                sb.append(this.f1240if);
                if (!this.f1239for.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f1239for);
                }
                sb.append('@');
            }
            String str2 = this.f1242new;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f1242new);
                    sb.append(']');
                } else {
                    sb.append(this.f1242new);
                }
            }
            int i = this.f1236do;
            if (i != -1 || this.f1237do != null) {
                if (i == -1) {
                    i = C0237Gm.m750for(this.f1237do);
                }
                String str3 = this.f1237do;
                if (str3 == null || i != C0237Gm.m750for(str3)) {
                    sb.append(':');
                    sb.append(i);
                }
            }
            ArrayList arrayList = this.f1238do;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append((String) arrayList.get(i2));
            }
            if (this.f1241if != null) {
                sb.append('?');
                ArrayList arrayList2 = this.f1241if;
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3 += 2) {
                    String str4 = (String) arrayList2.get(i3);
                    String str5 = (String) arrayList2.get(i3 + 1);
                    if (i3 > 0) {
                        sb.append('&');
                    }
                    sb.append(str4);
                    if (str5 != null) {
                        sb.append('=');
                        sb.append(str5);
                    }
                }
            }
            if (this.f1243try != null) {
                sb.append('#');
                sb.append(this.f1243try);
            }
            return sb.toString();
        }
    }

    public C0237Gm(Cdo cdo) {
        this.f1229do = cdo.f1237do;
        String str = cdo.f1240if;
        this.f1232if = m745break(false, str, 0, str.length());
        String str2 = cdo.f1239for;
        this.f1231for = m745break(false, str2, 0, str2.length());
        this.f1234new = cdo.f1242new;
        int i = cdo.f1236do;
        this.f1228do = i == -1 ? m750for(cdo.f1237do) : i;
        this.f1230do = m746catch(cdo.f1238do, false);
        ArrayList arrayList = cdo.f1241if;
        this.f1233if = arrayList != null ? m746catch(arrayList, true) : null;
        String str3 = cdo.f1243try;
        this.f1235try = str3 != null ? m745break(false, str3, 0, str3.length()) : null;
        this.f1227case = cdo.toString();
    }

    /* renamed from: break, reason: not valid java name */
    public static String m745break(boolean z, String str, int i, int i2) {
        int i3;
        int i4 = i;
        while (i4 < i2) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                U5 u5 = new U5();
                u5.m2340strictfp(i, i4, str);
                while (i4 < i2) {
                    int codePointAt = str.codePointAt(i4);
                    if (codePointAt != 37 || (i3 = i4 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            u5.m2338return(32);
                        }
                        u5.m2344volatile(codePointAt);
                    } else {
                        int m2135else = SJ.m2135else(str.charAt(i4 + 1));
                        int m2135else2 = SJ.m2135else(str.charAt(i3));
                        if (m2135else != -1 && m2135else2 != -1) {
                            u5.m2338return((m2135else << 4) + m2135else2);
                            i4 = i3;
                        }
                        u5.m2344volatile(codePointAt);
                    }
                    i4 += Character.charCount(codePointAt);
                }
                return u5.m2324break();
            }
            i4++;
        }
        return str.substring(i, i2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static List m746catch(List list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = (String) list.get(i);
            arrayList.add(str != null ? m745break(z, str, 0, str.length()) : null);
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m747class(int i, int i2, String str) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && SJ.m2135else(str.charAt(i + 1)) != -1 && SJ.m2135else(str.charAt(i3)) != -1;
    }

    /* renamed from: const, reason: not valid java name */
    public static ArrayList m748const(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m749do(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m747class(i3, i2, str)))) || (codePointAt == 43 && z3)))) {
                U5 u5 = new U5();
                u5.m2340strictfp(i, i3, str);
                U5 u52 = null;
                while (i3 < i2) {
                    int codePointAt2 = str.codePointAt(i3);
                    if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == 43 && z3) {
                            String str3 = z ? "+" : "%2B";
                            u5.m2340strictfp(0, str3.length(), str3);
                        } else if (codePointAt2 < 32 || codePointAt2 == 127 || ((codePointAt2 >= 128 && z4) || str2.indexOf(codePointAt2) != -1 || (codePointAt2 == 37 && (!z || (z2 && !m747class(i3, i2, str)))))) {
                            if (u52 == null) {
                                u52 = new U5();
                            }
                            u52.m2344volatile(codePointAt2);
                            while (!u52.h()) {
                                int readByte = u52.readByte() & 255;
                                u5.m2338return(37);
                                char[] cArr = f1226do;
                                u5.m2338return(cArr[(readByte >> 4) & 15]);
                                u5.m2338return(cArr[readByte & 15]);
                            }
                        } else {
                            u5.m2344volatile(codePointAt2);
                        }
                    }
                    i3 += Character.charCount(codePointAt2);
                }
                return u5.m2324break();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m750for(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m751if(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m749do(str, 0, str.length(), str2, z, z2, z3, z4);
    }

    /* renamed from: case, reason: not valid java name */
    public final ArrayList m752case() {
        int length = this.f1229do.length() + 3;
        String str = this.f1227case;
        int indexOf = str.indexOf(47, length);
        int m2147this = SJ.m2147this(indexOf, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m2147this) {
            int i = indexOf + 1;
            int m2129break = SJ.m2129break(str, i, m2147this, '/');
            arrayList.add(str.substring(i, m2129break));
            indexOf = m2129break;
        }
        return arrayList;
    }

    /* renamed from: else, reason: not valid java name */
    public final String m753else() {
        if (this.f1233if == null) {
            return null;
        }
        String str = this.f1227case;
        int indexOf = str.indexOf(63) + 1;
        return str.substring(indexOf, SJ.m2129break(str, indexOf, str.length(), '#'));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0237Gm) && ((C0237Gm) obj).f1227case.equals(this.f1227case);
    }

    /* renamed from: final, reason: not valid java name */
    public final URI m754final() {
        Cdo m757this = m757this();
        ArrayList arrayList = m757this.f1238do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, m751if((String) arrayList.get(i), "[]", true, true, false, true));
        }
        ArrayList arrayList2 = m757this.f1241if;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = (String) m757this.f1241if.get(i2);
                if (str != null) {
                    m757this.f1241if.set(i2, m751if(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = m757this.f1243try;
        if (str2 != null) {
            m757this.f1243try = m751if(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String cdo = m757this.toString();
        try {
            return new URI(cdo);
        } catch (URISyntaxException e) {
            try {
                return URI.create(cdo.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final String m755goto() {
        if (this.f1232if.isEmpty()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int length = this.f1229do.length() + 3;
        String str = this.f1227case;
        return str.substring(length, SJ.m2147this(length, str.length(), str, ":@"));
    }

    public final int hashCode() {
        return this.f1227case.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public final String m756new() {
        if (this.f1231for.isEmpty()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int length = this.f1229do.length() + 3;
        String str = this.f1227case;
        return str.substring(str.indexOf(58, length) + 1, str.indexOf(64));
    }

    /* renamed from: this, reason: not valid java name */
    public final Cdo m757this() {
        Cdo cdo = new Cdo();
        String str = this.f1229do;
        cdo.f1237do = str;
        cdo.f1240if = m755goto();
        cdo.f1239for = m756new();
        cdo.f1242new = this.f1234new;
        int m750for = m750for(str);
        int i = this.f1228do;
        if (i == m750for) {
            i = -1;
        }
        cdo.f1236do = i;
        ArrayList arrayList = cdo.f1238do;
        arrayList.clear();
        arrayList.addAll(m752case());
        String m753else = m753else();
        String str2 = null;
        cdo.f1241if = m753else != null ? m748const(m751if(m753else, " \"'<>#", true, false, true, true)) : null;
        if (this.f1235try != null) {
            String str3 = this.f1227case;
            str2 = str3.substring(str3.indexOf(35) + 1);
        }
        cdo.f1243try = str2;
        return cdo;
    }

    public final String toString() {
        return this.f1227case;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m758try() {
        int length = this.f1229do.length() + 3;
        String str = this.f1227case;
        int indexOf = str.indexOf(47, length);
        return str.substring(indexOf, SJ.m2147this(indexOf, str.length(), str, "?#"));
    }
}
