package defpackage;

import com.google.android.gms.common.api.Api;

/* renamed from: Cm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0149Cm {
    static {
        C3488p6.m7786this("\"\\");
        C3488p6.m7786this("\t ,=");
    }

    /* renamed from: do, reason: not valid java name */
    public static long m292do(Tz tz) {
        String m2768for = tz.f3775do.m2768for("Content-Length");
        if (m2768for != null) {
            try {
                return Long.parseLong(m2768for);
            } catch (NumberFormatException unused) {
            }
        }
        return -1L;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m293for(int i, String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m294if(Tz tz) {
        if (tz.f3771do.f299do.equals("HEAD")) {
            return false;
        }
        int i = tz.f3777for;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && m292do(tz) == -1 && !"chunked".equalsIgnoreCase(tz.m2300do("Transfer-Encoding"))) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x010d, code lost:
    
        if (r19 <= 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x021d, code lost:
    
        if (r11 != false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0333, code lost:
    
        if (r0 != null) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x022e, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x022c, code lost:
    
        if (r11 == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x01ea, code lost:
    
        if ((r0.equals(r14) || (r0.endsWith(r14) && r0.charAt((r0.length() - r14.length()) - 1) == '.' && !defpackage.SJ.f3493do.matcher(r0).matches())) == false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0389 A[SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m295new(defpackage.InterfaceC0818cb r33, defpackage.C0237Gm r34, defpackage.C0587Wl r35) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0149Cm.m295new(cb, Gm, Wl):void");
    }

    /* renamed from: try, reason: not valid java name */
    public static int m296try(int i, String str, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }
}
