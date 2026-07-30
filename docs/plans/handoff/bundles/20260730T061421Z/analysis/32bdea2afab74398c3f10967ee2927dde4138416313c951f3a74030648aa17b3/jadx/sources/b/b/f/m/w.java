package b.b.f.m;

import android.view.MenuItem;

/* loaded from: classes.dex */
public class w implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f418a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f419b;

    public w(x xVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f419b = xVar;
        this.f418a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f418a.onMenuItemClick(this.f419b.c(menuItem));
    }
}
