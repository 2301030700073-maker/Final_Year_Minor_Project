package b.b.f.m;

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
import b.e.i.AbstractC0089c;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Objects;

/* loaded from: classes.dex */
public final class r implements b.e.e.a.b {
    public AbstractC0089c A;
    public MenuItem.OnActionExpandListener B;
    public ContextMenu.ContextMenuInfo D;

    /* renamed from: a, reason: collision with root package name */
    public final int f408a;

    /* renamed from: b, reason: collision with root package name */
    public final int f409b;

    /* renamed from: c, reason: collision with root package name */
    public final int f410c;

    /* renamed from: d, reason: collision with root package name */
    public final int f411d;
    public CharSequence e;
    public CharSequence f;
    public Intent g;
    public char h;
    public char j;
    public Drawable l;
    public o n;
    public K o;
    public MenuItem.OnMenuItemClickListener p;
    public CharSequence q;
    public CharSequence r;
    public int y;
    public View z;
    public int i = QuickStepContract.SYSUI_STATE_TRACING_ENABLED;
    public int k = QuickStepContract.SYSUI_STATE_TRACING_ENABLED;
    public int m = 0;
    public ColorStateList s = null;
    public PorterDuff.Mode t = null;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public int x = 16;
    public boolean C = false;

    public r(o oVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.y = 0;
        this.n = oVar;
        this.f408a = i2;
        this.f409b = i;
        this.f410c = i3;
        this.f411d = i4;
        this.e = charSequence;
        this.y = i5;
    }

    public static void c(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // b.e.e.a.b
    public b.e.e.a.b a(AbstractC0089c abstractC0089c) {
        AbstractC0089c abstractC0089c2 = this.A;
        if (abstractC0089c2 != null) {
            abstractC0089c2.f760a = null;
        }
        this.z = null;
        this.A = abstractC0089c;
        this.n.p(true);
        AbstractC0089c abstractC0089c3 = this.A;
        if (abstractC0089c3 != null) {
            abstractC0089c3.d(new q(this));
        }
        return this;
    }

    @Override // b.e.e.a.b
    public AbstractC0089c b() {
        return this.A;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.w && (this.u || this.v)) {
            drawable = drawable.mutate();
            if (this.u) {
                drawable.setTintList(this.s);
            }
            if (this.v) {
                drawable.setTintMode(this.t);
            }
            this.w = false;
        }
        return drawable;
    }

    public char e() {
        return this.n.n() ? this.j : this.h;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.f(this);
        }
        return false;
    }

    public boolean f() {
        AbstractC0089c abstractC0089c;
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null && (abstractC0089c = this.A) != null) {
            this.z = abstractC0089c.b(this);
        }
        return this.z != null;
    }

    public boolean g() {
        return (this.x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public View getActionView() {
        View view = this.z;
        if (view != null) {
            return view;
        }
        AbstractC0089c abstractC0089c = this.A;
        if (abstractC0089c == null) {
            return null;
        }
        View b2 = abstractC0089c.b(this);
        this.z = b2;
        return b2;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.j;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.q;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f409b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return d(drawable);
        }
        int i = this.m;
        if (i == 0) {
            return null;
        }
        Drawable a2 = b.b.a.a(this.n.f400a, i);
        this.m = 0;
        this.l = a2;
        return d(a2);
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.s;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.t;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f408a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.D;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f410c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.e;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.r;
    }

    public boolean h() {
        return (this.y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.o != null;
    }

    public b.e.e.a.b i(View view) {
        int i;
        this.z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i = this.f408a) > 0) {
            view.setId(i);
        }
        o oVar = this.n;
        oVar.k = true;
        oVar.p(true);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC0089c abstractC0089c = this.A;
        return (abstractC0089c == null || !abstractC0089c.c()) ? (this.x & 8) == 0 : (this.x & 8) == 0 && this.A.a();
    }

    public void j(boolean z) {
        int i = this.x;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.x = i2;
        if (i != i2) {
            this.n.p(false);
        }
    }

    public void k(boolean z) {
        if (z) {
            this.x |= 32;
        } else {
            this.x &= -33;
        }
    }

    public boolean l(boolean z) {
        int i = this.x;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.x = i2;
        return i != i2;
    }

    public boolean m() {
        return this.n.o() && e() != 0;
    }

    public boolean requiresActionButton() {
        return (this.y & 2) == 2;
    }

    public boolean requiresOverflow() {
        return (requiresActionButton() || h()) ? false : true;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        i(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.j == c2) {
            return this;
        }
        this.j = Character.toLowerCase(c2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.x;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.x = i2;
        if (i != i2) {
            this.n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.x & 4) != 0) {
            o oVar = this.n;
            Objects.requireNonNull(oVar);
            int groupId = getGroupId();
            int size = oVar.f.size();
            oVar.y();
            for (int i = 0; i < size; i++) {
                r rVar = (r) oVar.f.get(i);
                if (rVar.f409b == groupId) {
                    if (((rVar.x & 4) != 0) && rVar.isCheckable()) {
                        rVar.j(rVar == this);
                    }
                }
            }
            oVar.x();
        } else {
            j(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.q = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.x |= 16;
        } else {
            this.x &= -17;
        }
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.l = drawable;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.s = colorStateList;
        this.u = true;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.t = mode;
        this.v = true;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.h == c2) {
            return this;
        }
        this.h = c2;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.h = c2;
        this.j = Character.toLowerCase(c3);
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.y = i;
        o oVar = this.n;
        oVar.k = true;
        oVar.p(true);
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.e = charSequence;
        this.n.p(false);
        K k = this.o;
        if (k != null) {
            k.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.r = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (l(z)) {
            o oVar = this.n;
            oVar.h = true;
            oVar.p(true);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setActionView(int i) {
        Context context = this.n.f400a;
        i(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public b.e.e.a.b setContentDescription(CharSequence charSequence) {
        this.q = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public b.e.e.a.b setTooltipText(CharSequence charSequence) {
        this.r = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.j == c2 && this.k == i) {
            return this;
        }
        this.j = Character.toLowerCase(c2);
        this.k = KeyEvent.normalizeMetaState(i);
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        if (this.h == c2 && this.i == i) {
            return this;
        }
        this.h = c2;
        this.i = KeyEvent.normalizeMetaState(i);
        this.n.p(false);
        return this;
    }

    @Override // b.e.e.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.h = c2;
        this.i = KeyEvent.normalizeMetaState(i);
        this.j = Character.toLowerCase(c3);
        this.k = KeyEvent.normalizeMetaState(i2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.l = null;
        this.m = i;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.n.f400a.getString(i));
        return this;
    }
}
