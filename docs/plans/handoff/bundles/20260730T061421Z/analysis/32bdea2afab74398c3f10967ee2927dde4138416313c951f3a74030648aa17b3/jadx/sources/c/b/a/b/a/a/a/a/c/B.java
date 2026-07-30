package c.b.a.b.a.a.a.a.c;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import c.b.a.b.a.a.a.a.a.a.C0357b;

/* loaded from: classes.dex */
public final class B {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f2370a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2371b;

    /* renamed from: c, reason: collision with root package name */
    public final d0 f2372c;

    /* renamed from: d, reason: collision with root package name */
    public final c.b.a.b.b.h.a f2373d;
    public final C0368g e;
    public final String f;
    public final String g;
    public final c.b.a.b.a.a.a.a.b.a h;
    public E i;
    public final InterfaceC0370i j;
    public boolean k;

    public B(Context context, Context context2, d0 d0Var, c.b.a.b.b.h.a aVar, c.b.a.b.b.m.n nVar, Handler handler, String str, c.b.a.b.a.a.a.a.a.a.p pVar, c.b.a.b.a.a.a.a.b.a aVar2) {
        A a2 = new A(this);
        this.j = a2;
        this.k = false;
        this.f2371b = context;
        this.f2370a = handler;
        this.f2372c = d0Var;
        this.f2373d = aVar;
        C0368g g = C0368g.g(str, d0Var, new C0371j(context, context2, a2, nVar, aVar2), -1);
        this.e = g;
        C0371j c0371j = g.f2460b;
        c0371j.h = null;
        c0371j.j = g;
        g.m = pVar;
        this.f = str;
        this.g = d0Var.j();
        this.h = aVar2;
        c.b.a.b.a.a.a.a.c.y0.d.f2526a.nextInt();
    }

    public static boolean a(C0357b c0357b) {
        return (c0357b == null || c0357b.f2301c == null || TextUtils.isEmpty(c0357b.f2299a)) ? false : true;
    }
}
