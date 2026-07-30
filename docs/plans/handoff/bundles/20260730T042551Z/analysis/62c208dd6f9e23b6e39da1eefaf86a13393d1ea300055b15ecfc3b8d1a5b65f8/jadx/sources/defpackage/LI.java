package defpackage;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import defpackage.Oz;

/* loaded from: classes.dex */
public final class LI {

    /* renamed from: do, reason: not valid java name */
    public static final SI f1942do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3472or<String, Typeface> f1943do;

    /* renamed from: LI$do, reason: invalid class name */
    public static class Cdo extends C3850vF {

        /* renamed from: do, reason: not valid java name */
        public final Oz.Ctry f1944do;

        public Cdo(Oz.Ctry ctry) {
            this.f1944do = ctry;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f1942do = new QI();
        } else if (i >= 28) {
            f1942do = new PI();
        } else if (i >= 26) {
            f1942do = new OI();
        } else {
            if (i >= 24) {
                if (NI.f2361do != null) {
                    f1942do = new NI();
                }
            }
            f1942do = new MI();
        }
        f1943do = new C3472or<>(16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
    
        if (r0.equals(r4) == false) goto L15;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m1321do(android.content.Context r7, defpackage.C3464oj.Cif r8, android.content.res.Resources r9, int r10, java.lang.String r11, int r12, int r13, defpackage.Oz.Ctry r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LI.m1321do(android.content.Context, oj$if, android.content.res.Resources, int, java.lang.String, int, int, Oz$try, boolean):android.graphics.Typeface");
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1322if(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }
}
