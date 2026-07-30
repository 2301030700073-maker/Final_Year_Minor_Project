package b.b.f.m;

import android.view.MenuItem;

/* loaded from: classes.dex */
public class v implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f416a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f417b;

    public v(x xVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f417b = xVar;
        this.f416a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f416a.onMenuItemActionCollapse(this.f417b.c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f416a.onMenuItemActionExpand(this.f417b.c(menuItem));
    }
}
