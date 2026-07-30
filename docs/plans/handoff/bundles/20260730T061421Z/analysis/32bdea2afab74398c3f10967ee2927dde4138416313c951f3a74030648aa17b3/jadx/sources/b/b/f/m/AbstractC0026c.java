package b.b.f.m;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* renamed from: b.b.f.m.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0026c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f374a;

    /* renamed from: b, reason: collision with root package name */
    public b.d.n f375b;

    /* renamed from: c, reason: collision with root package name */
    public b.d.n f376c;

    public AbstractC0026c(Context context) {
        this.f374a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof b.e.e.a.b)) {
            return menuItem;
        }
        b.e.e.a.b bVar = (b.e.e.a.b) menuItem;
        if (this.f375b == null) {
            this.f375b = new b.d.n();
        }
        MenuItem menuItem2 = (MenuItem) this.f375b.getOrDefault(menuItem, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        x xVar = new x(this.f374a, bVar);
        this.f375b.put(bVar, xVar);
        return xVar;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof b.e.e.a.c)) {
            return subMenu;
        }
        b.e.e.a.c cVar = (b.e.e.a.c) subMenu;
        if (this.f376c == null) {
            this.f376c = new b.d.n();
        }
        SubMenu subMenu2 = (SubMenu) this.f376c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        L l = new L(this.f374a, cVar);
        this.f376c.put(cVar, l);
        return l;
    }
}
