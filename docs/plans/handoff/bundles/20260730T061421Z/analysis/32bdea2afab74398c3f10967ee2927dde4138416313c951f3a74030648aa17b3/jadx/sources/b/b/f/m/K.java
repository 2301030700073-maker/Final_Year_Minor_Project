package b.b.f.m;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public class K extends o implements SubMenu {
    public o A;
    public r B;

    public K(Context context, o oVar, r rVar) {
        super(context);
        this.A = oVar;
        this.B = rVar;
    }

    @Override // b.b.f.m.o
    public boolean d(r rVar) {
        return this.A.d(rVar);
    }

    @Override // b.b.f.m.o
    public boolean e(o oVar, MenuItem menuItem) {
        return super.e(oVar, menuItem) || this.A.e(oVar, menuItem);
    }

    @Override // b.b.f.m.o
    public boolean f(r rVar) {
        return this.A.f(rVar);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.B;
    }

    @Override // b.b.f.m.o
    public String j() {
        r rVar = this.B;
        int i = rVar != null ? rVar.f408a : 0;
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // b.b.f.m.o
    public o k() {
        return this.A.k();
    }

    @Override // b.b.f.m.o
    public boolean m() {
        return this.A.m();
    }

    @Override // b.b.f.m.o
    public boolean n() {
        return this.A.n();
    }

    @Override // b.b.f.m.o
    public boolean o() {
        return this.A.o();
    }

    @Override // b.b.f.m.o, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.A.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        w(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        w(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        w(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.B.setIcon(drawable);
        return this;
    }

    @Override // b.b.f.m.o, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.A.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        w(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        w(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.B.setIcon(i);
        return this;
    }
}
