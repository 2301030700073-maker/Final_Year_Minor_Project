package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: nj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3405nj {

    /* renamed from: do, reason: not valid java name */
    public static final C2680eE<String, ArrayList<InterfaceC0291Ja<Cdo>>> f14551do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f14552do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadPoolExecutor f14553do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3472or<String, Typeface> f14554do = new C3472or<>(16);

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new Ez());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f14553do = threadPoolExecutor;
        f14552do = new Object();
        f14551do = new C2680eE<>();
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m7603do(String str, Context context, C2942ij c2942ij, int i) {
        int i2;
        C3472or<String, Typeface> c3472or = f14554do;
        Typeface typeface = c3472or.get(str);
        if (typeface != null) {
            return new Cdo(typeface);
        }
        try {
            C3523pj m6833do = C2884hj.m6833do(context, c2942ij);
            int i3 = 1;
            C3582qj[] c3582qjArr = m6833do.f14977do;
            int i4 = m6833do.f14976do;
            if (i4 != 0) {
                if (i4 == 1) {
                    i2 = -2;
                }
                i2 = -3;
            } else {
                if (c3582qjArr != null && c3582qjArr.length != 0) {
                    i3 = 0;
                    for (C3582qj c3582qj : c3582qjArr) {
                        int i5 = c3582qj.f15151for;
                        if (i5 != 0) {
                            if (i5 >= 0) {
                                i2 = i5;
                            }
                            i2 = -3;
                        }
                    }
                }
                i2 = i3;
            }
            if (i2 != 0) {
                return new Cdo(i2);
            }
            Typeface mo1409if = LI.f1942do.mo1409if(context, c3582qjArr, i);
            if (mo1409if == null) {
                return new Cdo(-3);
            }
            c3472or.put(str, mo1409if);
            return new Cdo(mo1409if);
        } catch (PackageManager.NameNotFoundException unused) {
            return new Cdo(-1);
        }
    }

    /* renamed from: nj$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f14555do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Typeface f14556do;

        public Cdo(int i) {
            this.f14556do = null;
            this.f14555do = i;
        }

        @SuppressLint({"WrongConstant"})
        public Cdo(Typeface typeface) {
            this.f14556do = typeface;
            this.f14555do = 0;
        }
    }
}
