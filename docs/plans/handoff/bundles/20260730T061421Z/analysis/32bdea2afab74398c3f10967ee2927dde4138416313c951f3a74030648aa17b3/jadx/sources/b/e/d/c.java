package b.e.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import b.b.g.Z;
import b.d.m;
import b.e.g.i;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final e f697a = new d();

    /* renamed from: b, reason: collision with root package name */
    public static final m f698b = new m(16);

    public static Typeface a(Context context, Typeface typeface, int i) {
        if (context != null) {
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, b.e.c.c.a aVar, Resources resources, int i, int i2, Z z, Handler handler, boolean z2) {
        Typeface a2;
        if (aVar instanceof b.e.c.c.d) {
            b.e.c.c.d dVar = (b.e.c.c.d) aVar;
            boolean z3 = false;
            if (!z2 ? z == null : dVar.f684c == 0) {
                z3 = true;
            }
            a2 = i.b(context, dVar.f682a, z, handler, z3, z2 ? dVar.f683b : -1, i2);
        } else {
            a2 = f697a.a(context, (b.e.c.c.b) aVar, resources, i2);
            if (z != null) {
                if (a2 != null) {
                    z.b(a2, handler);
                } else {
                    z.a(-3, handler);
                }
            }
        }
        if (a2 != null) {
            f698b.b(d(resources, i, i2), a2);
        }
        return a2;
    }

    public static Typeface c(Context context, Resources resources, int i, String str, int i2) {
        Typeface c2 = f697a.c(context, resources, i, str, i2);
        if (c2 != null) {
            f698b.b(d(resources, i, i2), c2);
        }
        return c2;
    }

    public static String d(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
