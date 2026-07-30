package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.Cnew;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.stateful.ExtendableSavedState;
import com.joeykrim.rootcheck.R;
import defpackage.C0156Ct;
import defpackage.C0426Pe;
import defpackage.C0496Si;
import defpackage.C0518Ti;
import defpackage.C0560Vg;
import defpackage.C0584Wi;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C0762be;
import defpackage.C2680eE;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C5;
import defpackage.G5;
import defpackage.InterfaceC0538Ug;
import defpackage.InterfaceC2920iI;
import defpackage.InterfaceC3495pD;
import defpackage.InterfaceC3789uD;
import defpackage.N1;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.ViewTreeObserverOnPreDrawListenerC0562Vi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements InterfaceC0538Ug, InterfaceC3789uD, CoordinatorLayout.Cif {

    /* renamed from: case, reason: not valid java name */
    public int f11064case;

    /* renamed from: do, reason: not valid java name */
    public final N1 f11065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0560Vg f11066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0584Wi f11067do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f11068do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f11069do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f11071do;

    /* renamed from: else, reason: not valid java name */
    public int f11072else;

    /* renamed from: if, reason: not valid java name */
    public final Rect f11073if;

    /* renamed from: new, reason: not valid java name */
    public final int f11074new;

    /* renamed from: try, reason: not valid java name */
    public final int f11075try;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$do, reason: invalid class name */
    public class Cdo implements InterfaceC3495pD {
        public Cdo() {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$if, reason: invalid class name */
    public class Cif<T extends FloatingActionButton> implements Cnew.Ccase {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC2920iI<T> f11080do;

        public Cif(BottomAppBar.Cif cif) {
            this.f11080do = cif;
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Ccase
        /* renamed from: do, reason: not valid java name */
        public final void mo5826do() {
            BottomAppBar.Cif cif = (BottomAppBar.Cif) this.f11080do;
            cif.getClass();
            BottomAppBar bottomAppBar = BottomAppBar.this;
            C0716as c0716as = bottomAppBar.f10558do;
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            c0716as.m4781throw((floatingActionButton.getVisibility() == 0 && bottomAppBar.f10572throw == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Cif) && ((Cif) obj).f11080do.equals(this.f11080do);
        }

        public final int hashCode() {
            return this.f11080do.hashCode();
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Ccase
        /* renamed from: if, reason: not valid java name */
        public final void mo5827if() {
            BottomAppBar.Cif cif = (BottomAppBar.Cif) this.f11080do;
            cif.getClass();
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.f10572throw != 1) {
                return;
            }
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            float translationX = floatingActionButton.getTranslationX();
            float f = bottomAppBar.m5674interface().f1130try;
            C0716as c0716as = bottomAppBar.f10558do;
            if (f != translationX) {
                bottomAppBar.m5674interface().f1130try = translationX;
                c0716as.invalidateSelf();
            }
            float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (bottomAppBar.m5674interface().f1129new != max) {
                G5 m5674interface = bottomAppBar.m5674interface();
                if (max < 0.0f) {
                    m5674interface.getClass();
                    throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
                }
                m5674interface.f1129new = max;
                c0716as.invalidateSelf();
            }
            c0716as.m4781throw(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5818break() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        C0426Pe.m1776do(drawable);
    }

    /* renamed from: case, reason: not valid java name */
    public final Cnew m5819case() {
        if (this.f11067do == null) {
            this.f11067do = new C0584Wi(this, new Cdo());
        }
        return this.f11067do;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5820catch() {
        Cnew m5819case = m5819case();
        if (m5819case.f11110do.getVisibility() == 0 ? m5819case.f11116for != 1 : m5819case.f11116for == 2) {
            return;
        }
        Animator animator = m5819case.f11103do;
        if (animator != null) {
            animator.cancel();
        }
        boolean z = m5819case.f11101do == null;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        FloatingActionButton floatingActionButton = m5819case.f11110do;
        boolean z2 = floatingActionButton.isLaidOut() && !floatingActionButton.isInEditMode();
        Matrix matrix = m5819case.f11104do;
        if (!z2) {
            floatingActionButton.m5843new(0, false);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            m5819case.f11124try = 1.0f;
            m5819case.m5831do(1.0f, matrix);
            floatingActionButton.setImageMatrix(matrix);
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            floatingActionButton.setAlpha(0.0f);
            floatingActionButton.setScaleY(z ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z ? 0.4f : 0.0f);
            float f = z ? 0.4f : 0.0f;
            m5819case.f11124try = f;
            m5819case.m5831do(f, matrix);
            floatingActionButton.setImageMatrix(matrix);
        }
        C0156Ct c0156Ct = m5819case.f11101do;
        AnimatorSet m5833if = c0156Ct != null ? m5819case.m5833if(c0156Ct, 1.0f, 1.0f, 1.0f) : m5819case.m5832for(1.0f, 1.0f, 1.0f, Cnew.f11094new, Cnew.f11096try);
        m5833if.addListener(new C0518Ti(m5819case));
        ArrayList<Animator.AnimatorListener> arrayList = m5819case.f11111do;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                m5833if.addListener(it.next());
            }
        }
        m5833if.start();
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        m5819case().m5830class(c3554qD);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        m5819case().mo2756this(getDrawableState());
    }

    /* renamed from: else, reason: not valid java name */
    public final int m5821else(int i) {
        int i2 = this.f11075try;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        return i != -1 ? i != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m5821else(1) : m5821else(0);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Cif
    /* renamed from: for */
    public final CoordinatorLayout.Behavior<FloatingActionButton> mo3699for() {
        return new Behavior();
    }

    @Override // android.view.View
    public final ColorStateList getBackgroundTintList() {
        return this.f11068do;
    }

    @Override // android.view.View
    public final PorterDuff.Mode getBackgroundTintMode() {
        return this.f11069do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5822goto() {
        Cnew m5819case = m5819case();
        FloatingActionButton floatingActionButton = m5819case.f11110do;
        if (floatingActionButton.getVisibility() != 0 ? m5819case.f11116for != 2 : m5819case.f11116for == 1) {
            return;
        }
        Animator animator = m5819case.f11103do;
        if (animator != null) {
            animator.cancel();
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        FloatingActionButton floatingActionButton2 = m5819case.f11110do;
        if (!(floatingActionButton2.isLaidOut() && !floatingActionButton2.isInEditMode())) {
            floatingActionButton.m5843new(4, false);
            return;
        }
        C0156Ct c0156Ct = m5819case.f11120if;
        AnimatorSet m5833if = c0156Ct != null ? m5819case.m5833if(c0156Ct, 0.0f, 0.0f, 0.0f) : m5819case.m5832for(0.0f, 0.4f, 0.4f, Cnew.f11087case, Cnew.f11091else);
        m5833if.addListener(new C0496Si(m5819case));
        ArrayList<Animator.AnimatorListener> arrayList = m5819case.f11122if;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                m5833if.addListener(it.next());
            }
        }
        m5833if.start();
    }

    @Override // defpackage.InterfaceC0538Ug
    /* renamed from: if */
    public final boolean mo2458if() {
        return this.f11066do.f4175do;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        m5819case().mo2755goto();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Cnew m5819case = m5819case();
        C0716as c0716as = m5819case.f11109do;
        FloatingActionButton floatingActionButton = m5819case.f11110do;
        if (c0716as != null) {
            O4.m1613instanceof(floatingActionButton, c0716as);
        }
        if (!(m5819case instanceof C0584Wi)) {
            ViewTreeObserver viewTreeObserver = floatingActionButton.getViewTreeObserver();
            if (m5819case.f11102do == null) {
                m5819case.f11102do = new ViewTreeObserverOnPreDrawListenerC0562Vi(m5819case);
            }
            viewTreeObserver.addOnPreDrawListener(m5819case.f11102do);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cnew m5819case = m5819case();
        ViewTreeObserver viewTreeObserver = m5819case.f11110do.getViewTreeObserver();
        ViewTreeObserverOnPreDrawListenerC0562Vi viewTreeObserverOnPreDrawListenerC0562Vi = m5819case.f11102do;
        if (viewTreeObserverOnPreDrawListenerC0562Vi != null) {
            viewTreeObserver.removeOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0562Vi);
            m5819case.f11102do = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        int m5821else = m5821else(this.f11074new);
        this.f11064case = (m5821else - this.f11072else) / 2;
        m5819case().m5834super();
        int min = Math.min(View.resolveSize(m5821else, i), View.resolveSize(m5821else, i2));
        Rect rect = this.f11070do;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) extendableSavedState).f6568do);
        Bundle orDefault = extendableSavedState.f11516do.getOrDefault("expandableWidgetHelper", null);
        orDefault.getClass();
        C0560Vg c0560Vg = this.f11066do;
        c0560Vg.getClass();
        c0560Vg.f4175do = orDefault.getBoolean("expanded", false);
        c0560Vg.f4173do = orDefault.getInt("expandedComponentIdHint", 0);
        if (c0560Vg.f4175do) {
            View view = c0560Vg.f4174do;
            ViewParent parent = view.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).m3672import(view);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(onSaveInstanceState);
        C2680eE<String, Bundle> c2680eE = extendableSavedState.f11516do;
        C0560Vg c0560Vg = this.f11066do;
        c0560Vg.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", c0560Vg.f4175do);
        bundle.putInt("expandedComponentIdHint", c0560Vg.f4173do);
        c2680eE.put("expandableWidgetHelper", bundle);
        return extendableSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (motionEvent.getAction() == 0) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            Rect rect = this.f11073if;
            rect.set(0, 0, measuredWidth, measuredHeight);
            m5823this(rect);
            C0584Wi c0584Wi = this.f11067do;
            if (((Cnew) c0584Wi).f11114do) {
                int i2 = ((Cnew) c0584Wi).f11099do;
                FloatingActionButton floatingActionButton = ((Cnew) c0584Wi).f11110do;
                i = Math.max((i2 - floatingActionButton.m5821else(floatingActionButton.f11074new)) / 2, 0);
            } else {
                i = 0;
            }
            int i3 = -i;
            rect.inset(i3, i3);
            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f11068do != colorStateList) {
            this.f11068do = colorStateList;
            Cnew m5819case = m5819case();
            C0716as c0716as = m5819case.f11109do;
            if (c0716as != null) {
                c0716as.setTintList(colorStateList);
            }
            C5 c5 = m5819case.f11100do;
            if (c5 != null) {
                if (colorStateList != null) {
                    c5.f330try = colorStateList.getColorForState(c5.getState(), c5.f330try);
                }
                c5.f318do = colorStateList;
                c5.f325do = true;
                c5.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f11069do != mode) {
            this.f11069do = mode;
            C0716as c0716as = m5819case().f11109do;
            if (c0716as != null) {
                c0716as.setTintMode(mode);
            }
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        C0716as c0716as = m5819case().f11109do;
        if (c0716as != null) {
            c0716as.m4770final(f);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            Cnew m5819case = m5819case();
            float f = m5819case.f11124try;
            m5819case.f11124try = f;
            Matrix matrix = m5819case.f11104do;
            m5819case.m5831do(f, matrix);
            m5819case.f11110do.setImageMatrix(matrix);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i) {
        this.f11065do.m1484for(i);
        m5818break();
    }

    @Override // android.view.View
    public final void setScaleX(float f) {
        super.setScaleX(f);
        ArrayList<Cnew.Ccase> arrayList = m5819case().f11117for;
        if (arrayList != null) {
            Iterator<Cnew.Ccase> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo5826do();
            }
        }
    }

    @Override // android.view.View
    public final void setScaleY(float f) {
        super.setScaleY(f);
        ArrayList<Cnew.Ccase> arrayList = m5819case().f11117for;
        if (arrayList != null) {
            Iterator<Cnew.Ccase> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo5826do();
            }
        }
    }

    @Override // android.view.View
    public final void setTranslationX(float f) {
        super.setTranslationX(f);
        m5819case().m5829catch();
    }

    @Override // android.view.View
    public final void setTranslationY(float f) {
        super.setTranslationY(f);
        m5819case().m5829catch();
    }

    @Override // android.view.View
    public final void setTranslationZ(float f) {
        super.setTranslationZ(f);
        m5819case().m5829catch();
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public final void setVisibility(int i) {
        m5843new(i, true);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5823this(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f11070do;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: do, reason: not valid java name */
        public Rect f11076do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f11077do;

        public BaseBehavior() {
            this.f11077do = true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: class */
        public final boolean mo3684class(CoordinatorLayout coordinatorLayout, View view, int i) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            ArrayList m3676public = coordinatorLayout.m3676public(floatingActionButton);
            int size = m3676public.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                View view2 = (View) m3676public.get(i3);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.Ctry ? ((CoordinatorLayout.Ctry) layoutParams).f6472do instanceof BottomSheetBehavior : false) && m5825throws(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (m5824switch(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m3670extends(floatingActionButton, i);
            Rect rect = floatingActionButton.f11070do;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) ctry).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) ctry).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) ctry).bottomMargin) {
                i2 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) ctry).topMargin) {
                i2 = -rect.top;
            }
            if (i2 != 0) {
                QK.m1850const(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            QK.m1849class(floatingActionButton, i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: else */
        public final void mo3686else(CoordinatorLayout.Ctry ctry) {
            if (ctry.f6468case == 0) {
                ctry.f6468case = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: for */
        public final boolean mo3688for(View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            int left = floatingActionButton.getLeft();
            Rect rect2 = floatingActionButton.f11070do;
            rect.set(left + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: goto */
        public final boolean mo3689goto(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m5824switch(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.Ctry ? ((CoordinatorLayout.Ctry) layoutParams).f6472do instanceof BottomSheetBehavior : false) {
                    m5825throws(view2, floatingActionButton);
                }
            }
            return false;
        }

        /* renamed from: switch, reason: not valid java name */
        public final boolean m5824switch(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!(this.f11077do && ((CoordinatorLayout.Ctry) floatingActionButton.getLayoutParams()).f6481new == appBarLayout.getId() && floatingActionButton.f11203for == 0)) {
                return false;
            }
            if (this.f11076do == null) {
                this.f11076do = new Rect();
            }
            Rect rect = this.f11076do;
            C0762be.m4845do(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.m5629try()) {
                floatingActionButton.m5822goto();
            } else {
                floatingActionButton.m5820catch();
            }
            return true;
        }

        /* renamed from: throws, reason: not valid java name */
        public final boolean m5825throws(View view, FloatingActionButton floatingActionButton) {
            if (!(this.f11077do && ((CoordinatorLayout.Ctry) floatingActionButton.getLayoutParams()).f6481new == view.getId() && floatingActionButton.f11203for == 0)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.Ctry) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m5822goto();
            } else {
                floatingActionButton.m5820catch();
            }
            return true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2508public);
            this.f11077do = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Design_FloatingActionButton), attributeSet, i);
        this.f11070do = new Rect();
        this.f11073if = new Rect();
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2502native, i, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.f11068do = C0659Zr.m3071if(context2, m3115new, 1);
        this.f11069do = C3738tL.m8284goto(m3115new.getInt(2, -1), null);
        ColorStateList m3071if = C0659Zr.m3071if(context2, m3115new, 12);
        this.f11074new = m3115new.getInt(7, -1);
        this.f11075try = m3115new.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = m3115new.getDimensionPixelSize(3, 0);
        float dimension = m3115new.getDimension(4, 0.0f);
        float dimension2 = m3115new.getDimension(9, 0.0f);
        float dimension3 = m3115new.getDimension(11, 0.0f);
        this.f11071do = m3115new.getBoolean(16, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        int dimensionPixelSize3 = m3115new.getDimensionPixelSize(10, 0);
        this.f11072else = dimensionPixelSize3;
        Cnew m5819case = m5819case();
        if (m5819case.f11119if != dimensionPixelSize3) {
            m5819case.f11119if = dimensionPixelSize3;
            float f = m5819case.f11124try;
            m5819case.f11124try = f;
            Matrix matrix = m5819case.f11104do;
            m5819case.m5831do(f, matrix);
            m5819case.f11110do.setImageMatrix(matrix);
        }
        C0156Ct m308do = C0156Ct.m308do(context2, m3115new, 15);
        C0156Ct m308do2 = C0156Ct.m308do(context2, m3115new, 8);
        C3554qD c3554qD = new C3554qD(C3554qD.m7861new(context2, attributeSet, i, R.style.Widget_Design_FloatingActionButton, C3554qD.f15056do));
        boolean z = m3115new.getBoolean(5, false);
        setEnabled(m3115new.getBoolean(0, true));
        m3115new.recycle();
        N1 n1 = new N1(this);
        this.f11065do = n1;
        n1.m1485if(attributeSet, i);
        this.f11066do = new C0560Vg(this);
        m5819case().m5830class(c3554qD);
        m5819case().mo2753else(this.f11068do, this.f11069do, m3071if, dimensionPixelSize);
        m5819case().f11099do = dimensionPixelSize2;
        Cnew m5819case2 = m5819case();
        if (m5819case2.f11098do != dimension) {
            m5819case2.f11098do = dimension;
            m5819case2.mo2750break(dimension, m5819case2.f11118if, m5819case2.f11115for);
        }
        Cnew m5819case3 = m5819case();
        if (m5819case3.f11118if != dimension2) {
            m5819case3.f11118if = dimension2;
            m5819case3.mo2750break(m5819case3.f11098do, dimension2, m5819case3.f11115for);
        }
        Cnew m5819case4 = m5819case();
        if (m5819case4.f11115for != dimension3) {
            m5819case4.f11115for = dimension3;
            m5819case4.mo2750break(m5819case4.f11098do, m5819case4.f11118if, dimension3);
        }
        m5819case().f11101do = m308do;
        m5819case().f11120if = m308do2;
        m5819case().f11114do = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
