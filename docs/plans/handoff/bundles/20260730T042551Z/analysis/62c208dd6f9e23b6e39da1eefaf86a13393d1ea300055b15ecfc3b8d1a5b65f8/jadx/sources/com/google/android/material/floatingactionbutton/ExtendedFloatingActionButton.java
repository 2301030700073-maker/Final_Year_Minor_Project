package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.joeykrim.rootcheck.R;
import defpackage.C0156Ct;
import defpackage.C0682aH;
import defpackage.C0762be;
import defpackage.C0806cM;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.O2;
import defpackage.QK;
import defpackage.T4;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.Cif {

    /* renamed from: break, reason: not valid java name */
    public int f11040break;

    /* renamed from: catch, reason: not valid java name */
    public int f11041catch;

    /* renamed from: class, reason: not valid java name */
    public int f11042class;

    /* renamed from: const, reason: not valid java name */
    public int f11043const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExtendedFloatingActionButtonBehavior f11044do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f11045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f11046do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f11047do;

    /* renamed from: for, reason: not valid java name */
    public boolean f11048for;

    /* renamed from: goto, reason: not valid java name */
    public int f11049goto;

    /* renamed from: if, reason: not valid java name */
    public ColorStateList f11050if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Ccase f11051if;

    /* renamed from: new, reason: not valid java name */
    public boolean f11052new;

    /* renamed from: this, reason: not valid java name */
    public final int f11053this;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f11037do = new Cif();

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f11036do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f11038do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f11039do = new Ctry();

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$case, reason: invalid class name */
    public class Ccase extends T4 {

        /* renamed from: do, reason: not valid java name */
        public final Cthis f11057do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f11058do;

        public Ccase(C0806cM c0806cM, Cthis cthis, boolean z) {
            super(ExtendedFloatingActionButton.this, c0806cM);
            this.f11057do = cthis;
            this.f11058do = z;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: case */
        public final void mo408case() {
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: do */
        public final void mo409do() {
            ((T4) this).f3592do.f8526do = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.f11052new = false;
            extendedFloatingActionButton.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            Cthis cthis = this.f11057do;
            layoutParams.width = cthis.getLayoutParams().width;
            layoutParams.height = cthis.getLayoutParams().height;
        }

        @Override // defpackage.T4, defpackage.InterfaceC0178Dt
        /* renamed from: else */
        public final AnimatorSet mo410else() {
            C0156Ct c0156Ct = super.f3595if;
            if (c0156Ct == null) {
                if (((T4) this).f3590do == null) {
                    ((T4) this).f3590do = C0156Ct.m310if(((T4) this).f3591do, mo411for());
                }
                c0156Ct = ((T4) this).f3590do;
                c0156Ct.getClass();
            }
            boolean m312else = c0156Ct.m312else(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
            Cthis cthis = this.f11057do;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (m312else) {
                PropertyValuesHolder[] m315try = c0156Ct.m315try(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
                m315try[0].setFloatValues(extendedFloatingActionButton.getWidth(), cthis.getWidth());
                c0156Ct.m313goto(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, m315try);
            }
            if (c0156Ct.m312else(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY)) {
                PropertyValuesHolder[] m315try2 = c0156Ct.m315try(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
                m315try2[0].setFloatValues(extendedFloatingActionButton.getHeight(), cthis.getHeight());
                c0156Ct.m313goto(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, m315try2);
            }
            if (c0156Ct.m312else("paddingStart")) {
                PropertyValuesHolder[] m315try3 = c0156Ct.m315try("paddingStart");
                PropertyValuesHolder propertyValuesHolder = m315try3[0];
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                propertyValuesHolder.setFloatValues(extendedFloatingActionButton.getPaddingStart(), cthis.mo5816if());
                c0156Ct.m313goto("paddingStart", m315try3);
            }
            if (c0156Ct.m312else("paddingEnd")) {
                PropertyValuesHolder[] m315try4 = c0156Ct.m315try("paddingEnd");
                PropertyValuesHolder propertyValuesHolder2 = m315try4[0];
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                propertyValuesHolder2.setFloatValues(extendedFloatingActionButton.getPaddingEnd(), cthis.mo5815do());
                c0156Ct.m313goto("paddingEnd", m315try4);
            }
            if (c0156Ct.m312else("labelOpacity")) {
                PropertyValuesHolder[] m315try5 = c0156Ct.m315try("labelOpacity");
                boolean z = this.f11058do;
                m315try5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                c0156Ct.m313goto("labelOpacity", m315try5);
            }
            return m2214goto(c0156Ct);
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: for */
        public final int mo411for() {
            return this.f11058do ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: new */
        public final boolean mo413new() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return this.f11058do == extendedFloatingActionButton.f11048for || ((MaterialButton) extendedFloatingActionButton).f10677do == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
        }

        @Override // defpackage.InterfaceC0178Dt
        public final void onAnimationStart(Animator animator) {
            C0806cM c0806cM = ((T4) this).f3592do;
            Animator animator2 = (Animator) c0806cM.f8526do;
            if (animator2 != null) {
                animator2.cancel();
            }
            c0806cM.f8526do = animator;
            boolean z = this.f11058do;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.f11048for = z;
            extendedFloatingActionButton.f11052new = true;
            extendedFloatingActionButton.setHorizontallyScrolling(true);
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: try */
        public final void mo414try() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            boolean z = this.f11058do;
            extendedFloatingActionButton.f11048for = z;
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!z) {
                extendedFloatingActionButton.f11042class = layoutParams.width;
                extendedFloatingActionButton.f11043const = layoutParams.height;
            }
            Cthis cthis = this.f11057do;
            layoutParams.width = cthis.getLayoutParams().width;
            layoutParams.height = cthis.getLayoutParams().height;
            int mo5816if = cthis.mo5816if();
            int paddingTop = extendedFloatingActionButton.getPaddingTop();
            int mo5815do = cthis.mo5815do();
            int paddingBottom = extendedFloatingActionButton.getPaddingBottom();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            extendedFloatingActionButton.setPaddingRelative(mo5816if, paddingTop, mo5815do, paddingBottom);
            extendedFloatingActionButton.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$do, reason: invalid class name */
    public class Cdo implements Cthis {
        public Cdo() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
        /* renamed from: do, reason: not valid java name */
        public final int mo5815do() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return (extendedFloatingActionButton.m5811const() - ((MaterialButton) extendedFloatingActionButton).f10682for) / 2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
        public final int getHeight() {
            return ExtendedFloatingActionButton.this.m5811const();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
        public final ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
        public final int getWidth() {
            return ExtendedFloatingActionButton.this.m5811const();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
        /* renamed from: if, reason: not valid java name */
        public final int mo5816if() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return (extendedFloatingActionButton.m5811const() - ((MaterialButton) extendedFloatingActionButton).f10682for) / 2;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$else, reason: invalid class name */
    public class Celse extends T4 {

        /* renamed from: do, reason: not valid java name */
        public boolean f11061do;

        public Celse(C0806cM c0806cM) {
            super(ExtendedFloatingActionButton.this, c0806cM);
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: case */
        public final void mo408case() {
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: do */
        public final void mo409do() {
            ((T4) this).f3592do.f8526do = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.f11049goto = 0;
            if (this.f11061do) {
                return;
            }
            extendedFloatingActionButton.setVisibility(8);
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: for */
        public final int mo411for() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // defpackage.T4, defpackage.InterfaceC0178Dt
        /* renamed from: if */
        public final void mo412if() {
            super.mo412if();
            this.f11061do = true;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: new */
        public final boolean mo413new() {
            Cif cif = ExtendedFloatingActionButton.f11037do;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (extendedFloatingActionButton.getVisibility() == 0) {
                if (extendedFloatingActionButton.f11049goto == 1) {
                    return true;
                }
            } else if (extendedFloatingActionButton.f11049goto != 2) {
                return true;
            }
            return false;
        }

        @Override // defpackage.InterfaceC0178Dt
        public final void onAnimationStart(Animator animator) {
            C0806cM c0806cM = ((T4) this).f3592do;
            Animator animator2 = (Animator) c0806cM.f8526do;
            if (animator2 != null) {
                animator2.cancel();
            }
            c0806cM.f8526do = animator;
            this.f11061do = false;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.f11049goto = 1;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: try */
        public final void mo414try() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$for, reason: invalid class name */
    public class Cfor extends Property<View, Float> {
        public Cfor() {
            super(Float.class, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$goto, reason: invalid class name */
    public class Cgoto extends T4 {
        public Cgoto(C0806cM c0806cM) {
            super(ExtendedFloatingActionButton.this, c0806cM);
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: case */
        public final void mo408case() {
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: do */
        public final void mo409do() {
            ((T4) this).f3592do.f8526do = null;
            ExtendedFloatingActionButton.this.f11049goto = 0;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: for */
        public final int mo411for() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: new */
        public final boolean mo413new() {
            Cif cif = ExtendedFloatingActionButton.f11037do;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (extendedFloatingActionButton.getVisibility() != 0) {
                if (extendedFloatingActionButton.f11049goto == 2) {
                    return true;
                }
            } else if (extendedFloatingActionButton.f11049goto != 1) {
                return true;
            }
            return false;
        }

        @Override // defpackage.InterfaceC0178Dt
        public final void onAnimationStart(Animator animator) {
            C0806cM c0806cM = ((T4) this).f3592do;
            Animator animator2 = (Animator) c0806cM.f8526do;
            if (animator2 != null) {
                animator2.cancel();
            }
            c0806cM.f8526do = animator;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.f11049goto = 2;
        }

        @Override // defpackage.InterfaceC0178Dt
        /* renamed from: try */
        public final void mo414try() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.setAlpha(1.0f);
            extendedFloatingActionButton.setScaleY(1.0f);
            extendedFloatingActionButton.setScaleX(1.0f);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$if, reason: invalid class name */
    public class Cif extends Property<View, Float> {
        public Cif() {
            super(Float.class, ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$new, reason: invalid class name */
    public class Cnew extends Property<View, Float> {
        public Cnew() {
            super(Float.class, "paddingStart");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            return Float.valueOf(view.getPaddingStart());
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            int intValue = f.intValue();
            int paddingTop = view2.getPaddingTop();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            view2.setPaddingRelative(intValue, paddingTop, view2.getPaddingEnd(), view2.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$this, reason: invalid class name */
    public interface Cthis {
        /* renamed from: do */
        int mo5815do();

        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getWidth();

        /* renamed from: if */
        int mo5816if();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$try, reason: invalid class name */
    public class Ctry extends Property<View, Float> {
        public Ctry() {
            super(Float.class, "paddingEnd");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            return Float.valueOf(view.getPaddingEnd());
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            view2.setPaddingRelative(view2.getPaddingStart(), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x003a, code lost:
    
        if (r5.isInEditMode() == false) goto L24;
     */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5810class(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton r5, int r6) {
        /*
            r0 = 2
            r1 = 1
            if (r6 == 0) goto L20
            if (r6 == r1) goto L1d
            if (r6 == r0) goto L1a
            r2 = 3
            if (r6 != r2) goto Le
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$case r2 = r5.f11051if
            goto L22
        Le:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Unknown strategy type: "
            java.lang.String r6 = defpackage.V1.m2494case(r0, r6)
            r5.<init>(r6)
            throw r5
        L1a:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$case r2 = r5.f11045do
            goto L22
        L1d:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$else r2 = r5.f11046do
            goto L22
        L20:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$goto r2 = r5.f11047do
        L22:
            boolean r3 = r2.mo413new()
            if (r3 == 0) goto L29
            goto L8c
        L29:
            java.util.WeakHashMap<android.view.View, nL> r3 = defpackage.QK.f2909do
            boolean r3 = r5.isLaidOut()
            r4 = 0
            if (r3 != 0) goto L36
            r5.getVisibility()
            goto L3d
        L36:
            boolean r3 = r5.isInEditMode()
            if (r3 != 0) goto L3d
            goto L3e
        L3d:
            r1 = 0
        L3e:
            if (r1 != 0) goto L47
            r2.mo414try()
            r2.mo408case()
            goto L8c
        L47:
            if (r6 != r0) goto L64
            android.view.ViewGroup$LayoutParams r6 = r5.getLayoutParams()
            if (r6 == 0) goto L58
            int r0 = r6.width
            r5.f11042class = r0
            int r6 = r6.height
            r5.f11043const = r6
            goto L64
        L58:
            int r6 = r5.getWidth()
            r5.f11042class = r6
            int r6 = r5.getHeight()
            r5.f11043const = r6
        L64:
            r5.measure(r4, r4)
            android.animation.AnimatorSet r5 = r2.mo410else()
            Yg r6 = new Yg
            r6.<init>(r2)
            r5.addListener(r6)
            java.util.ArrayList<android.animation.Animator$AnimatorListener> r6 = r2.f3594do
            java.util.Iterator r6 = r6.iterator()
        L79:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L89
            java.lang.Object r0 = r6.next()
            android.animation.Animator$AnimatorListener r0 = (android.animation.Animator.AnimatorListener) r0
            r5.addListener(r0)
            goto L79
        L89:
            r5.start()
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.m5810class(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton, int):void");
    }

    /* renamed from: const, reason: not valid java name */
    public final int m5811const() {
        int i = this.f11053this;
        if (i >= 0) {
            return i;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return (Math.min(getPaddingStart(), getPaddingEnd()) * 2) + super.f10682for;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5812final(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Cif
    /* renamed from: for */
    public final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> mo3699for() {
        return this.f11044do;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11048for && TextUtils.isEmpty(getText()) && ((MaterialButton) this).f10677do != null) {
            this.f11048for = false;
            this.f11045do.mo414try();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f11048for || this.f11052new) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        this.f11040break = getPaddingStart();
        this.f11041catch = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.f11048for || this.f11052new) {
            return;
        }
        this.f11040break = i;
        this.f11041catch = i3;
    }

    @Override // android.widget.TextView
    public final void setTextColor(int i) {
        super.setTextColor(i);
        this.f11050if = getTextColors();
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon), attributeSet, i);
        this.f11049goto = 0;
        C0806cM c0806cM = new C0806cM();
        Cgoto cgoto = new Cgoto(c0806cM);
        this.f11047do = cgoto;
        Celse celse = new Celse(c0806cM);
        this.f11046do = celse;
        this.f11048for = true;
        this.f11052new = false;
        Context context2 = getContext();
        this.f11044do = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2521while, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, new int[0]);
        C0156Ct m308do = C0156Ct.m308do(context2, m3115new, 5);
        C0156Ct m308do2 = C0156Ct.m308do(context2, m3115new, 4);
        C0156Ct m308do3 = C0156Ct.m308do(context2, m3115new, 2);
        C0156Ct m308do4 = C0156Ct.m308do(context2, m3115new, 6);
        this.f11053this = m3115new.getDimensionPixelSize(0, -1);
        int i2 = m3115new.getInt(3, 1);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        this.f11040break = getPaddingStart();
        this.f11041catch = getPaddingEnd();
        C0806cM c0806cM2 = new C0806cM();
        com.google.android.material.floatingactionbutton.Cdo cdo = new com.google.android.material.floatingactionbutton.Cdo(this);
        com.google.android.material.floatingactionbutton.Cif cif = new com.google.android.material.floatingactionbutton.Cif(this, cdo);
        Ccase ccase = new Ccase(c0806cM2, i2 != 1 ? i2 != 2 ? new com.google.android.material.floatingactionbutton.Cfor(this, cif, cdo) : cif : cdo, true);
        this.f11051if = ccase;
        Ccase ccase2 = new Ccase(c0806cM2, new Cdo(), false);
        this.f11045do = ccase2;
        ((T4) cgoto).f3595if = m308do;
        ((T4) celse).f3595if = m308do2;
        ((T4) ccase).f3595if = m308do3;
        ((T4) ccase2).f3595if = m308do4;
        m3115new.recycle();
        mo4768do(new C3554qD(C3554qD.m7861new(context2, attributeSet, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, C3554qD.f15056do)));
        this.f11050if = getTextColors();
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: do, reason: not valid java name */
        public Rect f11054do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f11055do;

        /* renamed from: if, reason: not valid java name */
        public final boolean f11056if;

        public ExtendedFloatingActionButtonBehavior() {
            this.f11055do = false;
            this.f11056if = true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: class */
        public final boolean mo3684class(CoordinatorLayout coordinatorLayout, View view, int i) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList m3676public = coordinatorLayout.m3676public(extendedFloatingActionButton);
            int size = m3676public.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = (View) m3676public.get(i2);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.Ctry ? ((CoordinatorLayout.Ctry) layoutParams).f6472do instanceof BottomSheetBehavior : false) && m5814throws(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (m5813switch(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m3670extends(extendedFloatingActionButton, i);
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
        public final /* bridge */ /* synthetic */ boolean mo3688for(View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: goto */
        public final boolean mo3689goto(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m5813switch(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.Ctry ? ((CoordinatorLayout.Ctry) layoutParams).f6472do instanceof BottomSheetBehavior : false) {
                    m5814throws(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        /* renamed from: switch, reason: not valid java name */
        public final boolean m5813switch(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f11055do;
            boolean z2 = this.f11056if;
            if (!((z || z2) && ctry.f6481new == appBarLayout.getId())) {
                return false;
            }
            if (this.f11054do == null) {
                this.f11054do = new Rect();
            }
            Rect rect = this.f11054do;
            C0762be.m4845do(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.m5629try()) {
                ExtendedFloatingActionButton.m5810class(extendedFloatingActionButton, z2 ? 2 : 1);
            } else {
                ExtendedFloatingActionButton.m5810class(extendedFloatingActionButton, z2 ? 3 : 0);
            }
            return true;
        }

        /* renamed from: throws, reason: not valid java name */
        public final boolean m5814throws(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f11055do;
            boolean z2 = this.f11056if;
            if (!((z || z2) && ctry.f6481new == view.getId())) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.Ctry) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                ExtendedFloatingActionButton.m5810class(extendedFloatingActionButton, z2 ? 2 : 1);
            } else {
                ExtendedFloatingActionButton.m5810class(extendedFloatingActionButton, z2 ? 3 : 0);
            }
            return true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2499import);
            this.f11055do = obtainStyledAttributes.getBoolean(0, false);
            this.f11056if = obtainStyledAttributes.getBoolean(1, true);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public final void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.f11050if = getTextColors();
    }
}
