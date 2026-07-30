package b.b.f;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import b.b.f.m.r;
import b.b.f.m.x;
import b.e.i.AbstractC0089c;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public class i {
    public AbstractC0089c A;
    public CharSequence B;
    public CharSequence C;
    public final /* synthetic */ j F;

    /* renamed from: a, reason: collision with root package name */
    public Menu f345a;
    public boolean h;
    public int i;
    public int j;
    public CharSequence k;
    public CharSequence l;
    public int m;
    public char n;
    public int o;
    public char p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public String x;
    public String y;
    public String z;
    public ColorStateList D = null;
    public PorterDuff.Mode E = null;

    /* renamed from: b, reason: collision with root package name */
    public int f346b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f347c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f348d = 0;
    public int e = 0;
    public boolean f = true;
    public boolean g = true;

    public i(j jVar, Menu menu) {
        this.F = jVar;
        this.f345a = menu;
    }

    public SubMenu a() {
        this.h = true;
        SubMenu addSubMenu = this.f345a.addSubMenu(this.f346b, this.i, this.j, this.k);
        c(addSubMenu.getItem());
        return addSubMenu;
    }

    public final Object b(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.F.f351c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
            return null;
        }
    }

    public final void c(MenuItem menuItem) {
        boolean z = false;
        menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
        int i = this.v;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        if (this.z != null) {
            if (this.F.f351c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            j jVar = this.F;
            if (jVar.f352d == null) {
                jVar.f352d = jVar.a(jVar.f351c);
            }
            menuItem.setOnMenuItemClickListener(new h(jVar.f352d, this.z));
        }
        if (this.r >= 2) {
            if (menuItem instanceof r) {
                r rVar = (r) menuItem;
                rVar.x = (rVar.x & (-5)) | 4;
            } else if (menuItem instanceof x) {
                x xVar = (x) menuItem;
                try {
                    if (xVar.e == null) {
                        xVar.e = xVar.f420d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    xVar.e.invoke(xVar.f420d, Boolean.TRUE);
                } catch (Exception e) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
                }
            }
        }
        String str = this.x;
        if (str != null) {
            menuItem.setActionView((View) b(str, j.e, this.F.f349a));
            z = true;
        }
        int i2 = this.w;
        if (i2 > 0) {
            if (z) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i2);
            }
        }
        AbstractC0089c abstractC0089c = this.A;
        if (abstractC0089c != null) {
            if (menuItem instanceof b.e.e.a.b) {
                ((b.e.e.a.b) menuItem).a(abstractC0089c);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.B;
        boolean z2 = menuItem instanceof b.e.e.a.b;
        if (z2) {
            ((b.e.e.a.b) menuItem).setContentDescription(charSequence);
        } else {
            menuItem.setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.C;
        if (z2) {
            ((b.e.e.a.b) menuItem).setTooltipText(charSequence2);
        } else {
            menuItem.setTooltipText(charSequence2);
        }
        char c2 = this.n;
        int i3 = this.o;
        if (z2) {
            ((b.e.e.a.b) menuItem).setAlphabeticShortcut(c2, i3);
        } else {
            menuItem.setAlphabeticShortcut(c2, i3);
        }
        char c3 = this.p;
        int i4 = this.q;
        if (z2) {
            ((b.e.e.a.b) menuItem).setNumericShortcut(c3, i4);
        } else {
            menuItem.setNumericShortcut(c3, i4);
        }
        PorterDuff.Mode mode = this.E;
        if (mode != null) {
            if (z2) {
                ((b.e.e.a.b) menuItem).setIconTintMode(mode);
            } else {
                menuItem.setIconTintMode(mode);
            }
        }
        ColorStateList colorStateList = this.D;
        if (colorStateList != null) {
            if (z2) {
                ((b.e.e.a.b) menuItem).setIconTintList(colorStateList);
            } else {
                menuItem.setIconTintList(colorStateList);
            }
        }
    }
}
