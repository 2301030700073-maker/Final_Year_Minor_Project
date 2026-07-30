package c.b.a.c.f;

import android.content.Context;

/* renamed from: c.b.a.c.f.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0431e {

    /* renamed from: b, reason: collision with root package name */
    public static C0431e f3039b = new C0431e();

    /* renamed from: a, reason: collision with root package name */
    public C0430d f3040a = null;

    public static C0430d a(Context context) {
        C0430d c0430d;
        C0431e c0431e = f3039b;
        synchronized (c0431e) {
            if (c0431e.f3040a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                c0431e.f3040a = new C0430d(context);
            }
            c0430d = c0431e.f3040a;
        }
        return c0430d;
    }
}
