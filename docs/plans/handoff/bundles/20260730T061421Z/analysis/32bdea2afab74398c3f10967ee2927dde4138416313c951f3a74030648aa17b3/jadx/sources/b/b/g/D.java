package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class D {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f433b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static D f434c;

    /* renamed from: a, reason: collision with root package name */
    public E0 f435a;

    public static synchronized D a() {
        D d2;
        synchronized (D.class) {
            if (f434c == null) {
                d();
            }
            d2 = f434c;
        }
        return d2;
    }

    public static synchronized void d() {
        synchronized (D.class) {
            if (f434c == null) {
                D d2 = new D();
                f434c = d2;
                d2.f435a = E0.c();
                E0 e0 = f434c.f435a;
                C c2 = new C();
                synchronized (e0) {
                    e0.g = c2;
                }
            }
        }
    }

    public static void e(Drawable drawable, Y0 y0, int[] iArr) {
        E0.k(drawable, y0, iArr);
    }

    public synchronized Drawable b(Context context, int i) {
        return this.f435a.e(context, i);
    }

    public synchronized ColorStateList c(Context context, int i) {
        return this.f435a.h(context, i);
    }
}
