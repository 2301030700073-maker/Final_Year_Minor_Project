package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* renamed from: Ks, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class MenuC0331Ks extends S4 implements Menu {

    /* renamed from: do, reason: not valid java name */
    public final XF f1891do;

    public MenuC0331Ks(Context context, XF xf) {
        super(context);
        if (xf == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1891do = xf;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return m2112try(this.f1891do.add(charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f1891do.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m2112try(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return m2111case(this.f1891do.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public final void clear() {
        C2680eE<ZF, MenuItem> c2680eE = ((S4) this).f3444do;
        if (c2680eE != null) {
            c2680eE.clear();
        }
        C2680eE<InterfaceSubMenuC2624dG, SubMenu> c2680eE2 = this.f3445if;
        if (c2680eE2 != null) {
            c2680eE2.clear();
        }
        this.f1891do.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f1891do.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        return m2112try(this.f1891do.findItem(i));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return m2112try(this.f1891do.getItem(i));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f1891do.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f1891do.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return this.f1891do.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f1891do.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        if (((S4) this).f3444do != null) {
            int i2 = 0;
            while (true) {
                C2680eE<ZF, MenuItem> c2680eE = ((S4) this).f3444do;
                if (i2 >= c2680eE.f12632for) {
                    break;
                }
                if (c2680eE.m6527goto(i2).getGroupId() == i) {
                    ((S4) this).f3444do.m6530this(i2);
                    i2--;
                }
                i2++;
            }
        }
        this.f1891do.removeGroup(i);
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        if (((S4) this).f3444do != null) {
            int i2 = 0;
            while (true) {
                C2680eE<ZF, MenuItem> c2680eE = ((S4) this).f3444do;
                if (i2 >= c2680eE.f12632for) {
                    break;
                }
                if (c2680eE.m6527goto(i2).getItemId() == i) {
                    ((S4) this).f3444do.m6530this(i2);
                    break;
                }
                i2++;
            }
        }
        this.f1891do.removeItem(i);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f1891do.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        this.f1891do.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        this.f1891do.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f1891do.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f1891do.size();
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return m2112try(this.f1891do.add(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return m2111case(this.f1891do.addSubMenu(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m2112try(this.f1891do.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m2111case(this.f1891do.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return m2112try(this.f1891do.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m2111case(this.f1891do.addSubMenu(i, i2, i3, i4));
    }
}
