package defpackage;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* loaded from: classes.dex */
public abstract class S4 {

    /* renamed from: do, reason: not valid java name */
    public final Context f3443do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2680eE<ZF, MenuItem> f3444do;

    /* renamed from: if, reason: not valid java name */
    public C2680eE<InterfaceSubMenuC2624dG, SubMenu> f3445if;

    public S4(Context context) {
        this.f3443do = context;
    }

    /* renamed from: case, reason: not valid java name */
    public final SubMenu m2111case(SubMenu subMenu) {
        if (!(subMenu instanceof InterfaceSubMenuC2624dG)) {
            return subMenu;
        }
        InterfaceSubMenuC2624dG interfaceSubMenuC2624dG = (InterfaceSubMenuC2624dG) subMenu;
        if (this.f3445if == null) {
            this.f3445if = new C2680eE<>();
        }
        SubMenu orDefault = this.f3445if.getOrDefault(interfaceSubMenuC2624dG, null);
        if (orDefault != null) {
            return orDefault;
        }
        IF r0 = new IF(this.f3443do, interfaceSubMenuC2624dG);
        this.f3445if.put(interfaceSubMenuC2624dG, r0);
        return r0;
    }

    /* renamed from: try, reason: not valid java name */
    public final MenuItem m2112try(MenuItem menuItem) {
        if (!(menuItem instanceof ZF)) {
            return menuItem;
        }
        ZF zf = (ZF) menuItem;
        if (this.f3444do == null) {
            this.f3444do = new C2680eE<>();
        }
        MenuItem orDefault = this.f3444do.getOrDefault(zf, null);
        if (orDefault != null) {
            return orDefault;
        }
        MenuItemC0265Hs menuItemC0265Hs = new MenuItemC0265Hs(this.f3443do, zf);
        this.f3444do.put(zf, menuItemC0265Hs);
        return menuItemC0265Hs;
    }
}
