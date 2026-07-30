package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.widget.LinearLayoutCompat;
import defpackage.C0426Pe;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.KH;
import defpackage.Oz;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements Ccatch.Cdo {

    /* renamed from: for, reason: not valid java name */
    public static final int[] f11181for = {R.attr.state_checked};

    /* renamed from: case, reason: not valid java name */
    public boolean f11182case;

    /* renamed from: const, reason: not valid java name */
    public int f11183const;

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f11184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CheckedTextView f11185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FrameLayout f11186do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f11187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11188do;

    /* renamed from: else, reason: not valid java name */
    public boolean f11189else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Drawable f11190for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f11191goto;

    /* renamed from: try, reason: not valid java name */
    public boolean f11192try;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$do, reason: invalid class name */
    public class Cdo extends Cimplements {
        public Cdo() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCheckable(NavigationMenuItemView.this.f11182case);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5841catch(Drawable drawable) {
        if (drawable != null) {
            if (this.f11191goto) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = C0426Pe.m1779goto(drawable).mutate();
                C0426Pe.Cdo.m1787goto(drawable, this.f11184do);
            }
            int i = this.f11183const;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f11192try) {
            if (this.f11190for == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
                Drawable m1726do = Oz.Cdo.m1726do(resources, com.joeykrim.rootcheck.R.drawable.navigation_empty_icon, theme);
                this.f11190for = m1726do;
                if (m1726do != null) {
                    int i2 = this.f11183const;
                    m1726do.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f11190for;
        }
        this.f11185do.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: else */
    public final Cgoto mo3305else() {
        return this.f11187do;
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: if */
    public final void mo3307if(Cgoto cgoto) {
        StateListDrawable stateListDrawable;
        this.f11187do = cgoto;
        int i = cgoto.f5466do;
        if (i > 0) {
            setId(i);
        }
        setVisibility(cgoto.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.joeykrim.rootcheck.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f11181for, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setBackground(stateListDrawable);
        }
        boolean isCheckable = cgoto.isCheckable();
        refreshDrawableState();
        boolean z = this.f11182case;
        CheckedTextView checkedTextView = this.f11185do;
        if (z != isCheckable) {
            this.f11182case = isCheckable;
            this.f11188do.mo4577goto(checkedTextView, 2048);
        }
        boolean isChecked = cgoto.isChecked();
        refreshDrawableState();
        checkedTextView.setChecked(isChecked);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (isChecked && this.f11189else) ? 1 : 0);
        setEnabled(cgoto.isEnabled());
        checkedTextView.setText(cgoto.f5477do);
        m5841catch(cgoto.getIcon());
        View actionView = cgoto.getActionView();
        if (actionView != null) {
            if (this.f11186do == null) {
                this.f11186do = (FrameLayout) ((ViewStub) findViewById(com.joeykrim.rootcheck.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (actionView.getParent() != null) {
                ((ViewGroup) actionView.getParent()).removeView(actionView);
            }
            this.f11186do.removeAllViews();
            this.f11186do.addView(actionView);
        }
        setContentDescription(cgoto.f5481for);
        KH.m1131do(this, cgoto.f5489new);
        Cgoto cgoto2 = this.f11187do;
        if (cgoto2.f5477do == null && cgoto2.getIcon() == null && this.f11187do.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f11186do;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.f11186do.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f11186do;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.f11186do.setLayoutParams(layoutParams2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        Cgoto cgoto = this.f11187do;
        if (cgoto != null && cgoto.isCheckable() && this.f11187do.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f11181for);
        }
        return onCreateDrawableState;
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11189else = true;
        Cdo cdo = new Cdo();
        this.f11188do = cdo;
        if (super.f5777try != 0) {
            super.f5777try = 0;
            requestLayout();
        }
        LayoutInflater.from(context).inflate(com.joeykrim.rootcheck.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f11183const = context.getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.joeykrim.rootcheck.R.id.design_menu_item_text);
        this.f11185do = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        QK.m1858native(checkedTextView, cdo);
    }
}
