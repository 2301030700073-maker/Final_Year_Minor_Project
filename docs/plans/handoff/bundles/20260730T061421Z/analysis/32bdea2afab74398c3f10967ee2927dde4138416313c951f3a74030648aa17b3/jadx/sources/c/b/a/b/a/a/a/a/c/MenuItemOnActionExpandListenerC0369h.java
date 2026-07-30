package c.b.a.b.a.a.a.a.c;

import android.view.MenuItem;

/* renamed from: c.b.a.b.a.a.a.a.c.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class MenuItemOnActionExpandListenerC0369h implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.b.a.b.a.a.a.a.a.a.t f2464a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0371j f2465b;

    public MenuItemOnActionExpandListenerC0369h(C0371j c0371j, c.b.a.b.a.a.a.a.a.a.t tVar) {
        this.f2465b = c0371j;
        this.f2464a = tVar;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return true;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        InterfaceC0370i interfaceC0370i = this.f2465b.f2471b;
        c.b.a.b.a.a.a.a.a.a.t tVar = this.f2464a;
        c.b.a.b.a.a.a.a.c.y0.d.a(tVar);
        c.b.a.b.a.a.a.a.a.a.s sVar = tVar.f2349c;
        c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
        c.b.a.b.a.a.a.a.a.a.x xVar = this.f2465b.h;
        c.b.a.b.a.a.a.a.c.y0.d.a(xVar);
        interfaceC0370i.a(sVar, xVar);
        return true;
    }
}
