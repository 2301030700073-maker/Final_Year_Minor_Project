package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.Cnew;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton.Cif;
import com.joeykrim.rootcheck.R;
import defpackage.C0156Ct;
import defpackage.C0222Ft;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2680eE;
import defpackage.C2775fs;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3679sL;
import defpackage.C3738tL;
import defpackage.D5;
import defpackage.E5;
import defpackage.F5;
import defpackage.G5;
import defpackage.InterfaceC2920iI;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.RunnableC3137j9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.Cif {

    /* renamed from: switch, reason: not valid java name */
    public static final /* synthetic */ int f10553switch = 0;

    /* renamed from: break, reason: not valid java name */
    public boolean f10554break;

    /* renamed from: case, reason: not valid java name */
    public final boolean f10555case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f10556catch;

    /* renamed from: do, reason: not valid java name */
    public Animator f10557do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0716as f10558do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Behavior f10559do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10560do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f10561do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f10562do;

    /* renamed from: else, reason: not valid java name */
    public final boolean f10563else;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f10564goto;

    /* renamed from: import, reason: not valid java name */
    public final int f10565import;

    /* renamed from: native, reason: not valid java name */
    public final int f10566native;

    /* renamed from: public, reason: not valid java name */
    public int f10567public;

    /* renamed from: return, reason: not valid java name */
    public int f10568return;

    /* renamed from: static, reason: not valid java name */
    public int f10569static;

    /* renamed from: super, reason: not valid java name */
    public int f10570super;

    /* renamed from: this, reason: not valid java name */
    public final boolean f10571this;

    /* renamed from: throw, reason: not valid java name */
    public final int f10572throw;

    /* renamed from: try, reason: not valid java name */
    public final boolean f10573try;

    /* renamed from: while, reason: not valid java name */
    public final int f10574while;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f10580do;

        /* renamed from: for, reason: not valid java name */
        public int f10581for;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Toolbar.SavedState savedState) {
            super(savedState);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f10581for);
            parcel.writeInt(this.f10580do ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10581for = parcel.readInt();
            this.f10580do = parcel.readInt() != 0;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            ActionMenuView actionMenuView;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.f10554break) {
                return;
            }
            int i = bottomAppBar.f10570super;
            boolean z = bottomAppBar.f10556catch;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (!bottomAppBar.isLaidOut()) {
                bottomAppBar.f10554break = false;
                return;
            }
            Animator animator2 = bottomAppBar.f10557do;
            if (animator2 != null) {
                animator2.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!bottomAppBar.m5675protected()) {
                i = 0;
                z = false;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= bottomAppBar.getChildCount()) {
                    actionMenuView = null;
                    break;
                }
                View childAt = bottomAppBar.getChildAt(i2);
                if (childAt instanceof ActionMenuView) {
                    actionMenuView = (ActionMenuView) childAt;
                    break;
                }
                i2++;
            }
            if (actionMenuView != null) {
                float m649for = C0222Ft.m649for(bottomAppBar.getContext(), R.attr.motionDurationLong2, 300);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                ofFloat.setDuration((long) (0.8f * m649for));
                if (Math.abs(actionMenuView.getTranslationX() - bottomAppBar.m5676strictfp(actionMenuView, i, z)) > 1.0f) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    ofFloat2.setDuration((long) (m649for * 0.2f));
                    ofFloat2.addListener(new E5(bottomAppBar, actionMenuView, i, z));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playSequentially(ofFloat2, ofFloat);
                    arrayList.add(animatorSet);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList.add(ofFloat);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            bottomAppBar.f10557do = animatorSet2;
            animatorSet2.addListener(new D5(bottomAppBar));
            bottomAppBar.f10557do.start();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$for, reason: invalid class name */
    public class Cfor implements C3738tL.Cif {
        public Cfor() {
        }

        @Override // defpackage.C3738tL.Cif
        /* renamed from: do */
        public final C3150jM mo1008do(View view, C3150jM c3150jM, C3738tL.Cfor cfor) {
            boolean z;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.f10563else) {
                bottomAppBar.f10567public = c3150jM.m7061if();
            }
            boolean z2 = false;
            if (bottomAppBar.f10564goto) {
                z = bottomAppBar.f10569static != c3150jM.m7059for();
                bottomAppBar.f10569static = c3150jM.m7059for();
            } else {
                z = false;
            }
            if (bottomAppBar.f10571this) {
                boolean z3 = bottomAppBar.f10568return != c3150jM.m7062new();
                bottomAppBar.f10568return = c3150jM.m7062new();
                z2 = z3;
            }
            if (z || z2) {
                Animator animator = bottomAppBar.f10557do;
                if (animator != null) {
                    animator.cancel();
                }
                bottomAppBar.m5672implements();
                bottomAppBar.m5677transient();
            }
            return c3150jM;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$if, reason: invalid class name */
    public class Cif implements InterfaceC2920iI<FloatingActionButton> {
        public Cif() {
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    /* renamed from: continue, reason: not valid java name */
    public final View m5671continue() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) getParent();
        List list = (List) ((C2680eE) coordinatorLayout.f6453do.f16375if).getOrDefault(this, null);
        ArrayList arrayList = coordinatorLayout.f6456for;
        arrayList.clear();
        if (list != null) {
            arrayList.addAll(list);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: default */
    public final void mo3483default(Drawable drawable) {
        if (drawable != null && this.f10562do != null) {
            drawable = C0426Pe.m1779goto(drawable.mutate());
            C0426Pe.Cdo.m1785else(drawable, this.f10562do.intValue());
        }
        super.mo3483default(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: finally */
    public final void mo3487finally(CharSequence charSequence) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Cif
    /* renamed from: for */
    public final CoordinatorLayout.Behavior mo3699for() {
        if (this.f10559do == null) {
            this.f10559do = new Behavior();
        }
        return this.f10559do;
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m5672implements() {
        float f;
        m5674interface().f1130try = m5678volatile();
        C0716as c0716as = this.f10558do;
        boolean z = this.f10556catch;
        int i = this.f10572throw;
        c0716as.m4781throw((z && m5675protected() && i == 1) ? 1.0f : 0.0f);
        View m5671continue = m5671continue();
        if (m5671continue != null) {
            if (i == 1) {
                f = -m5674interface().f1129new;
            } else {
                View m5671continue2 = m5671continue();
                f = m5671continue2 != null ? (-((getMeasuredHeight() + this.f10567public) - m5671continue2.getMeasuredHeight())) / 2 : 0;
            }
            m5671continue.setTranslationY(f);
            m5671continue.setTranslationX(m5678volatile());
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m5673instanceof(ActionMenuView actionMenuView, int i, boolean z) {
        actionMenuView.setTranslationX(m5676strictfp(actionMenuView, i, z));
    }

    /* renamed from: interface, reason: not valid java name */
    public final G5 m5674interface() {
        return (G5) this.f10558do.f8253do.f8278do.f15059do;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1613instanceof(this, this.f10558do);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            Animator animator = this.f10557do;
            if (animator != null) {
                animator.cancel();
            }
            m5672implements();
            View m5671continue = m5671continue();
            if (m5671continue != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (m5671continue.isLaidOut()) {
                    m5671continue.post(new RunnableC3137j9(m5671continue, 4));
                }
            }
        }
        m5677transient();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        this.f10570super = savedState.f10581for;
        this.f10556catch = savedState.f10580do;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState((Toolbar.SavedState) super.onSaveInstanceState());
        savedState.f10581for = this.f10570super;
        savedState.f10580do = this.f10556catch;
        return savedState;
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: package */
    public final void mo3493package(CharSequence charSequence) {
    }

    /* renamed from: protected, reason: not valid java name */
    public final boolean m5675protected() {
        View m5671continue = m5671continue();
        FloatingActionButton floatingActionButton = m5671continue instanceof FloatingActionButton ? (FloatingActionButton) m5671continue : null;
        if (floatingActionButton == null) {
            return false;
        }
        Cnew m5819case = floatingActionButton.m5819case();
        return m5819case.f11110do.getVisibility() == 0 ? m5819case.f11116for != 1 : m5819case.f11116for == 2;
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        C0716as c0716as = this.f10558do;
        c0716as.m4770final(f);
        int m4763break = c0716as.f8253do.f8281for - c0716as.m4763break();
        if (this.f10559do == null) {
            this.f10559do = new Behavior();
        }
        Behavior behavior = this.f10559do;
        behavior.f10531else = m4763break;
        if (behavior.f10527case == 1) {
            setTranslationY(behavior.f10535try + m4763break);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final int m5676strictfp(ActionMenuView actionMenuView, int i, boolean z) {
        int i2 = 0;
        if (this.f10566native != 1 && (i != 1 || !z)) {
            return 0;
        }
        boolean m8282else = C3738tL.m8282else(this);
        int measuredWidth = m8282else ? getMeasuredWidth() : 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f5168do & 8388615) == 8388611) {
                measuredWidth = m8282else ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = m8282else ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i4 = m8282else ? this.f10568return : -this.f10569static;
        if (m3482const() == null) {
            i2 = getResources().getDimensionPixelOffset(R.dimen.m3_bottomappbar_horizontal_padding);
            if (!m8282else) {
                i2 = -i2;
            }
        }
        return measuredWidth - ((right + i4) + i2);
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m5677transient() {
        ActionMenuView actionMenuView;
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                actionMenuView = null;
                break;
            }
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                actionMenuView = (ActionMenuView) childAt;
                break;
            }
            i++;
        }
        if (actionMenuView == null || this.f10557do != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (m5675protected()) {
            m5673instanceof(actionMenuView, this.f10570super, this.f10556catch);
        } else {
            m5673instanceof(actionMenuView, 0, false);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public final float m5678volatile() {
        int i = this.f10570super;
        boolean m8282else = C3738tL.m8282else(this);
        if (i != 1) {
            return 0.0f;
        }
        View m5671continue = m5671continue();
        int i2 = m8282else ? this.f10569static : this.f10568return;
        return ((getMeasuredWidth() / 2) - (((this.f10565import == -1 || m5671continue == null) ? this.f10574while : (m5671continue.getMeasuredWidth() / 2) + r5) + i2)) * (m8282else ? -1 : 1);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_BottomAppBar), attributeSet, i);
        C0716as c0716as = new C0716as();
        this.f10558do = c0716as;
        this.f10554break = false;
        this.f10556catch = true;
        this.f10560do = new Cdo();
        this.f10561do = new Cif();
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2519try, i, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList m3071if = C0659Zr.m3071if(context2, m3115new, 1);
        if (m3115new.hasValue(12)) {
            this.f10562do = Integer.valueOf(m3115new.getColor(12, -1));
            Drawable m3482const = m3482const();
            if (m3482const != null) {
                mo3483default(m3482const);
            }
        }
        int dimensionPixelSize = m3115new.getDimensionPixelSize(2, 0);
        float dimensionPixelOffset = m3115new.getDimensionPixelOffset(7, 0);
        float dimensionPixelOffset2 = m3115new.getDimensionPixelOffset(8, 0);
        float dimensionPixelOffset3 = m3115new.getDimensionPixelOffset(9, 0);
        this.f10570super = m3115new.getInt(3, 0);
        m3115new.getInt(6, 0);
        this.f10572throw = m3115new.getInt(5, 1);
        this.f10573try = m3115new.getBoolean(16, true);
        this.f10566native = m3115new.getInt(11, 0);
        this.f10555case = m3115new.getBoolean(10, false);
        this.f10563else = m3115new.getBoolean(13, false);
        this.f10564goto = m3115new.getBoolean(14, false);
        this.f10571this = m3115new.getBoolean(15, false);
        this.f10565import = m3115new.getDimensionPixelOffset(4, -1);
        boolean z = m3115new.getBoolean(0, true);
        m3115new.recycle();
        this.f10574while = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        G5 g5 = new G5(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C3554qD.Cdo cdo = new C3554qD.Cdo();
        cdo.f15071do = g5;
        c0716as.mo4768do(new C3554qD(cdo));
        if (z) {
            c0716as.m4773native(2);
        } else {
            c0716as.m4773native(1);
            if (Build.VERSION.SDK_INT >= 28) {
                setOutlineAmbientShadowColor(0);
                setOutlineSpotShadowColor(0);
            }
        }
        c0716as.m4783while(Paint.Style.FILL);
        c0716as.m4766class(context2);
        setElevation(dimensionPixelSize);
        C0426Pe.Cdo.m1787goto(c0716as, m3071if);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(c0716as);
        Cfor cfor = new Cfor();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.f2513switch, i, R.style.Widget_MaterialComponents_BottomAppBar);
        boolean z2 = obtainStyledAttributes.getBoolean(3, false);
        boolean z3 = obtainStyledAttributes.getBoolean(4, false);
        boolean z4 = obtainStyledAttributes.getBoolean(5, false);
        obtainStyledAttributes.recycle();
        C3738tL.m8285if(this, new C3679sL(z2, z3, z4, cfor));
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: do, reason: not valid java name */
        public final Rect f10575do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f10576do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakReference<BottomAppBar> f10577do;

        /* renamed from: goto, reason: not valid java name */
        public int f10578goto;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$do, reason: invalid class name */
        public class Cdo implements View.OnLayoutChangeListener {
            public Cdo() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Behavior behavior = Behavior.this;
                BottomAppBar bottomAppBar = behavior.f10577do.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    int measuredWidth = floatingActionButton.getMeasuredWidth();
                    int measuredHeight = floatingActionButton.getMeasuredHeight();
                    Rect rect = behavior.f10575do;
                    rect.set(0, 0, measuredWidth, measuredHeight);
                    floatingActionButton.m5823this(rect);
                    int height2 = rect.height();
                    float f = height2;
                    float f2 = bottomAppBar.m5674interface().f1127for;
                    C0716as c0716as = bottomAppBar.f10558do;
                    if (f != f2) {
                        bottomAppBar.m5674interface().f1127for = f;
                        c0716as.invalidateSelf();
                    }
                    C3554qD c3554qD = floatingActionButton.m5819case().f11113do;
                    c3554qD.getClass();
                    float mo1748do = c3554qD.f15058do.mo1748do(new RectF(rect));
                    if (mo1748do != bottomAppBar.m5674interface().f1125case) {
                        bottomAppBar.m5674interface().f1125case = mo1748do;
                        c0716as.invalidateSelf();
                    }
                    height = height2;
                }
                CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) view.getLayoutParams();
                if (behavior.f10578goto == 0) {
                    if (bottomAppBar.f10572throw == 1) {
                        ((ViewGroup.MarginLayoutParams) ctry).bottomMargin = bottomAppBar.f10567public + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) ctry).leftMargin = bottomAppBar.f10569static;
                    ((ViewGroup.MarginLayoutParams) ctry).rightMargin = bottomAppBar.f10568return;
                    boolean m8282else = C3738tL.m8282else(view);
                    int i9 = bottomAppBar.f10574while;
                    if (m8282else) {
                        ((ViewGroup.MarginLayoutParams) ctry).leftMargin += i9;
                    } else {
                        ((ViewGroup.MarginLayoutParams) ctry).rightMargin += i9;
                    }
                }
                int i10 = BottomAppBar.f10553switch;
                bottomAppBar.m5672implements();
            }
        }

        public Behavior() {
            this.f10576do = new Cdo();
            this.f10575do = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: class */
        public final boolean mo3684class(CoordinatorLayout coordinatorLayout, View view, int i) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.f10577do = new WeakReference<>(bottomAppBar);
            int i2 = BottomAppBar.f10553switch;
            View m5671continue = bottomAppBar.m5671continue();
            if (m5671continue != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (!m5671continue.isLaidOut()) {
                    CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) m5671continue.getLayoutParams();
                    ctry.f6478if = 17;
                    int i3 = bottomAppBar.f10572throw;
                    if (i3 == 1) {
                        ctry.f6478if = 49;
                    }
                    if (i3 == 0) {
                        ctry.f6478if |= 80;
                    }
                    this.f10578goto = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.Ctry) m5671continue.getLayoutParams())).bottomMargin;
                    if (m5671continue instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) m5671continue;
                        if (i3 == 0 && bottomAppBar.f10573try) {
                            QK.Cnew.m1932native(floatingActionButton, 0.0f);
                            Cnew m5819case = floatingActionButton.m5819case();
                            if (m5819case.f11098do != 0.0f) {
                                m5819case.f11098do = 0.0f;
                                m5819case.mo2750break(0.0f, m5819case.f11118if, m5819case.f11115for);
                            }
                        }
                        if (floatingActionButton.m5819case().f11101do == null) {
                            floatingActionButton.m5819case().f11101do = C0156Ct.m310if(floatingActionButton.getContext(), R.animator.mtrl_fab_show_motion_spec);
                        }
                        if (floatingActionButton.m5819case().f11120if == null) {
                            floatingActionButton.m5819case().f11120if = C0156Ct.m310if(floatingActionButton.getContext(), R.animator.mtrl_fab_hide_motion_spec);
                        }
                        Cnew m5819case2 = floatingActionButton.m5819case();
                        if (m5819case2.f11122if == null) {
                            m5819case2.f11122if = new ArrayList<>();
                        }
                        m5819case2.f11122if.add(bottomAppBar.f10560do);
                        F5 f5 = new F5(bottomAppBar);
                        Cnew m5819case3 = floatingActionButton.m5819case();
                        if (m5819case3.f11111do == null) {
                            m5819case3.f11111do = new ArrayList<>();
                        }
                        m5819case3.f11111do.add(f5);
                        Cnew m5819case4 = floatingActionButton.m5819case();
                        FloatingActionButton.Cif cif = floatingActionButton.new Cif(bottomAppBar.f10561do);
                        if (m5819case4.f11117for == null) {
                            m5819case4.f11117for = new ArrayList<>();
                        }
                        m5819case4.f11117for.add(cif);
                    }
                    m5671continue.addOnLayoutChangeListener(this.f10576do);
                    bottomAppBar.m5672implements();
                }
            }
            coordinatorLayout.m3670extends(bottomAppBar, i);
            super.mo3684class(coordinatorLayout, bottomAppBar, i);
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: public */
        public final boolean mo3692public(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.f10555case && super.mo3692public(coordinatorLayout, bottomAppBar, view2, view3, i, i2);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10576do = new Cdo();
            this.f10575do = new Rect();
        }
    }
}
