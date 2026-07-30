package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import defpackage.C0426Pe;
import defpackage.C3645ro;
import defpackage.H;
import defpackage.ZF;
import java.util.ArrayList;

/* renamed from: androidx.appcompat.view.menu.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto implements ZF {

    /* renamed from: do, reason: not valid java name */
    public char f5465do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f5466do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public H f5467do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Intent f5468do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5471do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MenuItem.OnActionExpandListener f5472do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MenuItem.OnMenuItemClickListener f5473do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5474do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5475do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cconst f5476do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5477do;

    /* renamed from: for, reason: not valid java name */
    public final int f5480for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f5481for;

    /* renamed from: if, reason: not valid java name */
    public char f5484if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f5485if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f5486if;

    /* renamed from: new, reason: not valid java name */
    public final int f5488new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public CharSequence f5489new;

    /* renamed from: this, reason: not valid java name */
    public int f5491this;

    /* renamed from: try, reason: not valid java name */
    public int f5492try = 4096;

    /* renamed from: case, reason: not valid java name */
    public int f5464case = 4096;

    /* renamed from: else, reason: not valid java name */
    public int f5479else = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f5469do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f5470do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5478do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5487if = false;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5482for = false;

    /* renamed from: goto, reason: not valid java name */
    public int f5483goto = 16;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5490new = false;

    /* renamed from: androidx.appcompat.view.menu.goto$do, reason: invalid class name */
    public class Cdo implements H.Cif {
        public Cdo() {
        }
    }

    public Cgoto(Ccase ccase, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f5475do = ccase;
        this.f5466do = i2;
        this.f5485if = i;
        this.f5480for = i3;
        this.f5488new = i4;
        this.f5477do = charSequence;
        this.f5491this = i5;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3349try(int i, int i2, String str, StringBuilder sb) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final Drawable m3350case(Drawable drawable) {
        if (drawable != null && this.f5482for && (this.f5478do || this.f5487if)) {
            drawable = C0426Pe.m1779goto(drawable).mutate();
            if (this.f5478do) {
                C0426Pe.Cdo.m1787goto(drawable, this.f5469do);
            }
            if (this.f5487if) {
                C0426Pe.Cdo.m1790this(drawable, this.f5470do);
            }
            this.f5482for = false;
        }
        return drawable;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f5491this & 8) == 0) {
            return false;
        }
        if (this.f5474do == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f5472do;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f5475do.mo3338new(this);
        }
        return false;
    }

    @Override // defpackage.ZF
    /* renamed from: do */
    public final ZF mo537do(CharSequence charSequence) {
        this.f5481for = charSequence;
        this.f5475do.mo3345throw(false);
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m3351else() {
        H h;
        if ((this.f5491this & 8) == 0) {
            return false;
        }
        if (this.f5474do == null && (h = this.f5467do) != null) {
            this.f5474do = h.onCreateActionView(this);
        }
        return this.f5474do != null;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean expandActionView() {
        if (!m3351else()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f5472do;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f5475do.mo3324case(this);
        }
        return false;
    }

    @Override // defpackage.ZF
    /* renamed from: for */
    public final H mo538for() {
        return this.f5467do;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final View getActionView() {
        View view = this.f5474do;
        if (view != null) {
            return view;
        }
        H h = this.f5467do;
        if (h == null) {
            return null;
        }
        View onCreateActionView = h.onCreateActionView(this);
        this.f5474do = onCreateActionView;
        return onCreateActionView;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f5464case;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f5484if;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f5481for;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f5485if;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f5471do;
        if (drawable != null) {
            return m3350case(drawable);
        }
        int i = this.f5479else;
        if (i == 0) {
            return null;
        }
        Drawable m7997extends = C3645ro.m7997extends(this.f5475do.f5403do, i);
        this.f5479else = 0;
        this.f5471do = m7997extends;
        return m3350case(m7997extends);
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f5469do;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f5470do;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f5468do;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f5466do;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f5492try;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f5465do;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f5480for;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f5476do;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f5477do;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f5486if;
        return charSequence != null ? charSequence : this.f5477do;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f5489new;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3352goto(boolean z) {
        this.f5483goto = (z ? 4 : 0) | (this.f5483goto & (-5));
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f5476do != null;
    }

    @Override // defpackage.ZF
    /* renamed from: if */
    public final ZF mo539if(CharSequence charSequence) {
        this.f5489new = charSequence;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f5490new;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f5483goto & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f5483goto & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f5483goto & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        H h = this.f5467do;
        return (h == null || !h.overridesItemVisibility()) ? (this.f5483goto & 8) == 0 : (this.f5483goto & 8) == 0 && this.f5467do.isVisible();
    }

    @Override // defpackage.ZF
    /* renamed from: new */
    public final ZF mo540new(H h) {
        H h2 = this.f5467do;
        if (h2 != null) {
            h2.reset();
        }
        this.f5474do = null;
        this.f5467do = h;
        this.f5475do.mo3345throw(true);
        H h3 = this.f5467do;
        if (h3 != null) {
            h3.setVisibilityListener(new Cdo());
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i;
        this.f5474do = view;
        this.f5467do = null;
        if (view != null && view.getId() == -1 && (i = this.f5466do) > 0) {
            view.setId(i);
        }
        Ccase ccase = this.f5475do;
        ccase.f5420new = true;
        ccase.mo3345throw(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.f5484if == c) {
            return this;
        }
        this.f5484if = Character.toLowerCase(c);
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.f5483goto;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f5483goto = i2;
        if (i != i2) {
            this.f5475do.mo3345throw(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i = this.f5483goto;
        int i2 = i & 4;
        Ccase ccase = this.f5475do;
        if (i2 != 0) {
            ccase.getClass();
            ArrayList<Cgoto> arrayList = ccase.f5410do;
            int size = arrayList.size();
            ccase.m3331extends();
            for (int i3 = 0; i3 < size; i3++) {
                Cgoto cgoto = arrayList.get(i3);
                if (cgoto.f5485if == this.f5485if) {
                    if (((cgoto.f5483goto & 4) != 0) && cgoto.isCheckable()) {
                        boolean z2 = cgoto == this;
                        int i4 = cgoto.f5483goto;
                        int i5 = (z2 ? 2 : 0) | (i4 & (-3));
                        cgoto.f5483goto = i5;
                        if (i4 != i5) {
                            cgoto.f5475do.mo3345throw(false);
                        }
                    }
                }
            }
            ccase.m3328default();
        } else {
            int i6 = (z ? 2 : 0) | (i & (-3));
            this.f5483goto = i6;
            if (i != i6) {
                ccase.mo3345throw(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        mo537do(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.f5483goto |= 16;
        } else {
            this.f5483goto &= -17;
        }
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f5479else = 0;
        this.f5471do = drawable;
        this.f5482for = true;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f5469do = colorStateList;
        this.f5478do = true;
        this.f5482for = true;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f5470do = mode;
        this.f5487if = true;
        this.f5482for = true;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f5468do = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.f5465do == c) {
            return this;
        }
        this.f5465do = c;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f5472do = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f5473do = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f5465do = c;
        this.f5484if = Character.toLowerCase(c2);
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f5491this = i;
        Ccase ccase = this.f5475do;
        ccase.f5420new = true;
        ccase.mo3345throw(true);
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f5477do = charSequence;
        this.f5475do.mo3345throw(false);
        Cconst cconst = this.f5476do;
        if (cconst != null) {
            cconst.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f5486if = charSequence;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        mo539if(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.f5483goto;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f5483goto = i2;
        if (i != i2) {
            Ccase ccase = this.f5475do;
            ccase.f5415for = true;
            ccase.mo3345throw(true);
        }
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3353this(boolean z) {
        if (z) {
            this.f5483goto |= 32;
        } else {
            this.f5483goto &= -33;
        }
    }

    public final String toString() {
        CharSequence charSequence = this.f5477do;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f5484if == c && this.f5464case == i) {
            return this;
        }
        this.f5484if = Character.toLowerCase(c);
        this.f5464case = KeyEvent.normalizeMetaState(i);
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.f5465do == c && this.f5492try == i) {
            return this;
        }
        this.f5465do = c;
        this.f5492try = KeyEvent.normalizeMetaState(i);
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f5465do = c;
        this.f5492try = KeyEvent.normalizeMetaState(i);
        this.f5484if = Character.toLowerCase(c2);
        this.f5464case = KeyEvent.normalizeMetaState(i2);
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f5471do = null;
        this.f5479else = i;
        this.f5482for = true;
        this.f5475do.mo3345throw(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        setTitle(this.f5475do.f5403do.getString(i));
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setActionView(int i) {
        int i2;
        Ccase ccase = this.f5475do;
        Context context = ccase.f5403do;
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false);
        this.f5474do = inflate;
        this.f5467do = null;
        if (inflate != null && inflate.getId() == -1 && (i2 = this.f5466do) > 0) {
            inflate.setId(i2);
        }
        ccase.f5420new = true;
        ccase.mo3345throw(true);
        return this;
    }
}
