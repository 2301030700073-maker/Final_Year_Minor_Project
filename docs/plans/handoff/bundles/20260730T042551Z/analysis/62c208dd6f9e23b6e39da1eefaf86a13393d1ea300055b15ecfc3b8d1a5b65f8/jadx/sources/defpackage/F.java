package defpackage;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import defpackage.C0426Pe;

/* loaded from: classes.dex */
public final class F implements ZF {

    /* renamed from: do, reason: not valid java name */
    public char f949do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Intent f952do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f956do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f959for;

    /* renamed from: if, reason: not valid java name */
    public char f960if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f962if;

    /* renamed from: new, reason: not valid java name */
    public CharSequence f964new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f950do = 4096;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f961if = 4096;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f953do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f954do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f957do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f963if = false;

    /* renamed from: for, reason: not valid java name */
    public int f958for = 16;

    public F(Context context, CharSequence charSequence) {
        this.f951do = context;
        this.f956do = charSequence;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // defpackage.ZF
    /* renamed from: do, reason: not valid java name */
    public final ZF mo537do(CharSequence charSequence) {
        this.f959for = charSequence;
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // defpackage.ZF
    /* renamed from: for, reason: not valid java name */
    public final H mo538for() {
        return null;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f961if;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f960if;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f959for;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f955do;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f953do;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f954do;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f952do;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f950do;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f949do;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f956do;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f962if;
        return charSequence != null ? charSequence : this.f956do;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f964new;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // defpackage.ZF
    /* renamed from: if, reason: not valid java name */
    public final ZF mo539if(CharSequence charSequence) {
        this.f964new = charSequence;
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f958for & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f958for & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f958for & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f958for & 8) == 0;
    }

    @Override // defpackage.ZF
    /* renamed from: new, reason: not valid java name */
    public final ZF mo540new(H h) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f960if = Character.toLowerCase(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f958for = (z ? 1 : 0) | (this.f958for & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f958for = (z ? 2 : 0) | (this.f958for & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f959for = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f958for = (z ? 16 : 0) | (this.f958for & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f955do = drawable;
        m541try();
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f953do = colorStateList;
        this.f957do = true;
        m541try();
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f954do = mode;
        this.f963if = true;
        m541try();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f952do = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f949do = c;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f949do = c;
        this.f960if = Character.toLowerCase(c2);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f956do = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f962if = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f964new = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        this.f958for = (this.f958for & 8) | (z ? 0 : 8);
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m541try() {
        Drawable drawable = this.f955do;
        if (drawable != null) {
            if (this.f957do || this.f963if) {
                Drawable m1779goto = C0426Pe.m1779goto(drawable);
                this.f955do = m1779goto;
                Drawable mutate = m1779goto.mutate();
                this.f955do = mutate;
                if (this.f957do) {
                    C0426Pe.Cdo.m1787goto(mutate, this.f953do);
                }
                if (this.f963if) {
                    C0426Pe.Cdo.m1790this(this.f955do, this.f954do);
                }
            }
        }
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f960if = Character.toLowerCase(c);
        this.f961if = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f949do = c;
        this.f950do = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f956do = this.f951do.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f955do = C0466Ra.getDrawable(this.f951do, i);
        m541try();
        return this;
    }

    @Override // defpackage.ZF, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f949do = c;
        this.f950do = KeyEvent.normalizeMetaState(i);
        this.f960if = Character.toLowerCase(c2);
        this.f961if = KeyEvent.normalizeMetaState(i2);
        return this;
    }
}
