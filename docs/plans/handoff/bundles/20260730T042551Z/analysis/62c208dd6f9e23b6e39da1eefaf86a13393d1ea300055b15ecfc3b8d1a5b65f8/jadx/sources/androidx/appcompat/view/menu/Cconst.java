package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.Ccase;
import defpackage.V1;

/* renamed from: androidx.appcompat.view.menu.const, reason: invalid class name */
/* loaded from: classes.dex */
public class Cconst extends Ccase implements SubMenu {

    /* renamed from: do, reason: not valid java name */
    public final Ccase f5446do;

    /* renamed from: if, reason: not valid java name */
    public final Cgoto f5447if;

    public Cconst(Context context, Ccase ccase, Cgoto cgoto) {
        super(context);
        this.f5446do = ccase;
        this.f5447if = cgoto;
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: break */
    public final String mo3323break() {
        Cgoto cgoto = this.f5447if;
        int i = cgoto != null ? cgoto.f5466do : 0;
        if (i == 0) {
            return null;
        }
        return V1.m2494case("android:menu:actionviewstates:", i);
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: case */
    public final boolean mo3324case(Cgoto cgoto) {
        return this.f5446do.mo3324case(cgoto);
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: catch */
    public final Ccase mo3325catch() {
        return this.f5446do.mo3325catch();
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: const */
    public final boolean mo3327const() {
        return this.f5446do.mo3327const();
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: final */
    public final boolean mo3332final() {
        return this.f5446do.mo3332final();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f5447if;
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: new */
    public final boolean mo3338new(Cgoto cgoto) {
        return this.f5446do.mo3338new(cgoto);
    }

    @Override // androidx.appcompat.view.menu.Ccase, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.f5446do.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        m3346throws(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        m3346throws(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        m3346throws(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f5447if.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.Ccase, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f5446do.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: super */
    public final boolean mo3342super() {
        return this.f5446do.mo3342super();
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: switch */
    public final void mo3343switch(Ccase.Cdo cdo) {
        throw null;
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: try */
    public final boolean mo3347try(Ccase ccase, MenuItem menuItem) {
        return super.mo3347try(ccase, menuItem) || this.f5446do.mo3347try(ccase, menuItem);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        m3346throws(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        m3346throws(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f5447if.setIcon(i);
        return this;
    }
}
