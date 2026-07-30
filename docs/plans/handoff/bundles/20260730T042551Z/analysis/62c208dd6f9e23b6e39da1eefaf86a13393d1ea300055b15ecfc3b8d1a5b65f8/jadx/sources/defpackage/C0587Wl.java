package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: Wl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0587Wl {

    /* renamed from: do, reason: not valid java name */
    public final String[] f4398do;

    /* renamed from: Wl$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f4399do = new ArrayList(20);

        /* renamed from: do, reason: not valid java name */
        public final void m2771do(String str, String str2) {
            ArrayList arrayList = this.f4399do;
            arrayList.add(str);
            arrayList.add(str2.trim());
        }

        /* renamed from: for, reason: not valid java name */
        public final void m2772for(String str, String str2) {
            C0587Wl.m2765do(str);
            C0587Wl.m2766if(str2, str);
            m2773if(str);
            m2771do(str, str2);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m2773if(String str) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f4399do;
                if (i >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }
    }

    public C0587Wl(Cdo cdo) {
        ArrayList arrayList = cdo.f4399do;
        this.f4398do = (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2765do(String str) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= ' ' || charAt >= 127) {
                throw new IllegalArgumentException(SJ.m2132class("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2766if(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(Cif.m6908case("value for name ", str2, " == null"));
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                throw new IllegalArgumentException(SJ.m2132class("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str));
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final String m2767case(int i) {
        return this.f4398do[(i * 2) + 1];
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0587Wl) && Arrays.equals(((C0587Wl) obj).f4398do, this.f4398do);
    }

    /* renamed from: for, reason: not valid java name */
    public final String m2768for(String str) {
        String[] strArr = this.f4398do;
        int length = strArr.length;
        do {
            length -= 2;
            if (length < 0) {
                return null;
            }
        } while (!str.equalsIgnoreCase(strArr[length]));
        return strArr[length + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f4398do);
    }

    /* renamed from: new, reason: not valid java name */
    public final String m2769new(int i) {
        return this.f4398do[i * 2];
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.f4398do.length / 2;
        for (int i = 0; i < length; i++) {
            sb.append(m2769new(i));
            sb.append(": ");
            sb.append(m2767case(i));
            sb.append("\n");
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final Cdo m2770try() {
        Cdo cdo = new Cdo();
        Collections.addAll(cdo.f4399do, this.f4398do);
        return cdo;
    }
}
