package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class IF extends MenuC0331Ks implements SubMenu {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceSubMenuC2624dG f1478do;

    public IF(Context context, InterfaceSubMenuC2624dG interfaceSubMenuC2624dG) {
        super(context, interfaceSubMenuC2624dG);
        this.f1478do = interfaceSubMenuC2624dG;
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        this.f1478do.clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return m2112try(this.f1478do.getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        this.f1478do.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        this.f1478do.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        this.f1478do.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f1478do.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        this.f1478do.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f1478do.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f1478do.setIcon(drawable);
        return this;
    }
}
