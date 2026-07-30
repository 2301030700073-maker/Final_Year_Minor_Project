package b.b.f.m;

import android.view.MenuItem;

/* renamed from: b.b.f.m.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0029f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0031h f379a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MenuItem f380b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o f381c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0030g f382d;

    public RunnableC0029f(C0030g c0030g, C0031h c0031h, MenuItem menuItem, o oVar) {
        this.f382d = c0030g;
        this.f379a = c0031h;
        this.f380b = menuItem;
        this.f381c = oVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0031h c0031h = this.f379a;
        if (c0031h != null) {
            this.f382d.f383a.A = true;
            c0031h.f385b.c(false);
            this.f382d.f383a.A = false;
        }
        if (this.f380b.isEnabled() && this.f380b.hasSubMenu()) {
            this.f381c.q(this.f380b, 4);
        }
    }
}
