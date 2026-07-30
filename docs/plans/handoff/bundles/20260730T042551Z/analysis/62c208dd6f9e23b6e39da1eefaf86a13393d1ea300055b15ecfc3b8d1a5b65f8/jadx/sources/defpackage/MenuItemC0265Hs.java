package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;
import defpackage.H;
import java.lang.reflect.Method;

/* renamed from: Hs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class MenuItemC0265Hs extends S4 implements MenuItem {

    /* renamed from: do, reason: not valid java name */
    public final ZF f1397do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Method f1398do;

    /* renamed from: Hs$do, reason: invalid class name */
    public class Cdo extends H {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ActionProvider f1400do;

        public Cdo(Context context, ActionProvider actionProvider) {
            super(context);
            this.f1400do = actionProvider;
        }

        @Override // defpackage.H
        public final boolean hasSubMenu() {
            return this.f1400do.hasSubMenu();
        }

        @Override // defpackage.H
        public final View onCreateActionView() {
            return this.f1400do.onCreateActionView();
        }

        @Override // defpackage.H
        public final boolean onPerformDefaultAction() {
            return this.f1400do.onPerformDefaultAction();
        }

        @Override // defpackage.H
        public final void onPrepareSubMenu(SubMenu subMenu) {
            this.f1400do.onPrepareSubMenu(MenuItemC0265Hs.this.m2111case(subMenu));
        }
    }

    /* renamed from: Hs$for, reason: invalid class name */
    public static class Cfor extends FrameLayout implements InterfaceC3843v8 {

        /* renamed from: do, reason: not valid java name */
        public final CollapsibleActionView f1401do;

        /* JADX WARN: Multi-variable type inference failed */
        public Cfor(View view) {
            super(view.getContext());
            this.f1401do = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // defpackage.InterfaceC3843v8
        public final void onActionViewCollapsed() {
            this.f1401do.onActionViewCollapsed();
        }

        @Override // defpackage.InterfaceC3843v8
        public final void onActionViewExpanded() {
            this.f1401do.onActionViewExpanded();
        }
    }

    /* renamed from: Hs$if, reason: invalid class name */
    public class Cif extends Cdo implements ActionProvider.VisibilityListener {

        /* renamed from: do, reason: not valid java name */
        public H.Cif f1402do;

        public Cif(MenuItemC0265Hs menuItemC0265Hs, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // defpackage.H
        public final boolean isVisible() {
            return ((Cdo) this).f1400do.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z) {
            H.Cif cif = this.f1402do;
            if (cif != null) {
                Ccase ccase = Cgoto.this.f5475do;
                ccase.f5415for = true;
                ccase.mo3345throw(true);
            }
        }

        @Override // defpackage.H
        public final View onCreateActionView(MenuItem menuItem) {
            return ((Cdo) this).f1400do.onCreateActionView(menuItem);
        }

        @Override // defpackage.H
        public final boolean overridesItemVisibility() {
            return ((Cdo) this).f1400do.overridesItemVisibility();
        }

        @Override // defpackage.H
        public final void refreshVisibility() {
            ((Cdo) this).f1400do.refreshVisibility();
        }

        @Override // defpackage.H
        public final void setVisibilityListener(H.Cif cif) {
            this.f1402do = cif;
            ((Cdo) this).f1400do.setVisibilityListener(cif != null ? this : null);
        }
    }

    /* renamed from: Hs$new, reason: invalid class name */
    public class Cnew implements MenuItem.OnActionExpandListener {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final MenuItem.OnActionExpandListener f1404do;

        public Cnew(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1404do = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1404do.onMenuItemActionCollapse(MenuItemC0265Hs.this.m2112try(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1404do.onMenuItemActionExpand(MenuItemC0265Hs.this.m2112try(menuItem));
        }
    }

    /* renamed from: Hs$try, reason: invalid class name */
    public class Ctry implements MenuItem.OnMenuItemClickListener {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final MenuItem.OnMenuItemClickListener f1406do;

        public Ctry(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1406do = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1406do.onMenuItemClick(MenuItemC0265Hs.this.m2112try(menuItem));
        }
    }

    public MenuItemC0265Hs(Context context, ZF zf) {
        super(context);
        if (zf == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1397do = zf;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f1397do.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f1397do.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        H mo538for = this.f1397do.mo538for();
        if (mo538for instanceof Cdo) {
            return ((Cdo) mo538for).f1400do;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f1397do.getActionView();
        return actionView instanceof Cfor ? (View) ((Cfor) actionView).f1401do : actionView;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1397do.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1397do.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1397do.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f1397do.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f1397do.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1397do.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1397do.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1397do.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f1397do.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1397do.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1397do.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1397do.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1397do.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return m2111case(this.f1397do.getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1397do.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f1397do.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1397do.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f1397do.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f1397do.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f1397do.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f1397do.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f1397do.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f1397do.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        Cif cif = new Cif(this, ((S4) this).f3443do, actionProvider);
        if (actionProvider == null) {
            cif = null;
        }
        this.f1397do.mo540new(cif);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new Cfor(view);
        }
        this.f1397do.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f1397do.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f1397do.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f1397do.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f1397do.mo537do(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f1397do.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1397do.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1397do.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1397do.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1397do.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f1397do.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1397do.setOnActionExpandListener(onActionExpandListener != null ? new Cnew(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1397do.setOnMenuItemClickListener(onMenuItemClickListener != null ? new Ctry(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f1397do.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        this.f1397do.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        this.f1397do.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1397do.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1397do.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f1397do.mo539if(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        return this.f1397do.setVisible(z);
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f1397do.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f1397do.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f1397do.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1397do.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f1397do.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        ZF zf = this.f1397do;
        zf.setActionView(i);
        View actionView = zf.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            zf.setActionView(new Cfor(actionView));
        }
        return this;
    }
}
