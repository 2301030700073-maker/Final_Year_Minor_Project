package c.b.a.b.a.a.a.a.c;

import android.graphics.Path;

/* loaded from: classes.dex */
public final /* synthetic */ class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final m0 f2466a;

    /* renamed from: b, reason: collision with root package name */
    public final F f2467b;

    public h0(m0 m0Var, F f) {
        this.f2466a = m0Var;
        this.f2467b = f;
    }

    public void a(Path path) {
        m0 m0Var = this.f2466a;
        F f = this.f2467b;
        if (m0Var.t != null) {
            if (path != null) {
                path.offset(f.getLeft(), f.getTop());
            }
            C0380t c0380t = m0Var.t;
            Path path2 = c0380t.m;
            if (path == path2) {
                return;
            }
            c0380t.n = path2;
            c0380t.m = path;
            c0380t.invalidate();
            c0380t.l = 1.0f;
        }
    }
}
