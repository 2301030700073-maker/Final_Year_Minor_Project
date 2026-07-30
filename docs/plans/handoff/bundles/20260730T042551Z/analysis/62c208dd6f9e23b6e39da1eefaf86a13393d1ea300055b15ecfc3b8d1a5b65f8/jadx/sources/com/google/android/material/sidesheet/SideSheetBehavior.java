package com.google.android.material.sidesheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0176Dr;
import defpackage.B;
import defpackage.B4;
import defpackage.C0315Kc;
import defpackage.C0591Wp;
import defpackage.C0659Zr;
import defpackage.C0716as;
import defpackage.C2657ds;
import defpackage.C3315mA;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3893w;
import defpackage.Creturn;
import defpackage.InterfaceC0198Er;
import defpackage.O2;
import defpackage.QD;
import defpackage.QK;
import defpackage.RD;
import defpackage.V1;
import defpackage.VK;
import defpackage.Y1;
import defpackage.YD;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements InterfaceC0198Er {

    /* renamed from: case, reason: not valid java name */
    public int f11337case;

    /* renamed from: do, reason: not valid java name */
    public final float f11338do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RD f11339do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VK f11340do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f11341do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f11342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f11343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11344do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SideSheetBehavior<V>.Cfor f11345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2657ds f11346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<V> f11347do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f11348do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3554qD f11349do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11350do;

    /* renamed from: else, reason: not valid java name */
    public int f11351else;

    /* renamed from: for, reason: not valid java name */
    public int f11352for;

    /* renamed from: goto, reason: not valid java name */
    public int f11353goto;

    /* renamed from: if, reason: not valid java name */
    public final float f11354if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public WeakReference<View> f11355if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11356if;

    /* renamed from: new, reason: not valid java name */
    public int f11357new;

    /* renamed from: this, reason: not valid java name */
    public int f11358this;

    /* renamed from: try, reason: not valid java name */
    public int f11359try;

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$do, reason: invalid class name */
    public class Cdo extends VK.Cfor {
        public Cdo() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        
            if ((java.lang.Math.abs(r5) > java.lang.Math.abs(r6)) == false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        
            if (java.lang.Math.abs(r5 - r0.f11339do.mo2028new()) < java.lang.Math.abs(r5 - r0.f11339do.mo2032try())) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        
            if (r0.f11339do.mo2020class(r4) == false) goto L21;
         */
        @Override // defpackage.VK.Cfor
        /* renamed from: break */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo2618break(android.view.View r4, float r5, float r6) {
            /*
                r3 = this;
                com.google.android.material.sidesheet.SideSheetBehavior r0 = com.google.android.material.sidesheet.SideSheetBehavior.this
                RD r1 = r0.f11339do
                boolean r1 = r1.mo2019catch(r5)
                r2 = 1
                if (r1 == 0) goto Lc
                goto L58
            Lc:
                RD r1 = r0.f11339do
                boolean r1 = r1.mo2024final(r4, r5)
                if (r1 == 0) goto L25
                RD r1 = r0.f11339do
                boolean r5 = r1.mo2021const(r5, r6)
                if (r5 != 0) goto L5a
                RD r5 = r0.f11339do
                boolean r5 = r5.mo2020class(r4)
                if (r5 == 0) goto L58
                goto L5a
            L25:
                r1 = 0
                int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
                if (r1 == 0) goto L3b
                float r5 = java.lang.Math.abs(r5)
                float r6 = java.lang.Math.abs(r6)
                int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                if (r5 <= 0) goto L38
                r5 = 1
                goto L39
            L38:
                r5 = 0
            L39:
                if (r5 != 0) goto L5a
            L3b:
                int r5 = r4.getLeft()
                RD r6 = r0.f11339do
                int r6 = r6.mo2028new()
                int r6 = r5 - r6
                int r6 = java.lang.Math.abs(r6)
                RD r1 = r0.f11339do
                int r1 = r1.mo2032try()
                int r5 = r5 - r1
                int r5 = java.lang.Math.abs(r5)
                if (r6 >= r5) goto L5a
            L58:
                r5 = 3
                goto L5b
            L5a:
                r5 = 5
            L5b:
                r0.m5879extends(r4, r2, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.Cdo.mo2618break(android.view.View, float, float):void");
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: catch */
        public final boolean mo2620catch(View view, int i) {
            WeakReference<V> weakReference;
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            return (sideSheetBehavior.f11352for == 1 || (weakReference = sideSheetBehavior.f11347do) == null || weakReference.get() != view) ? false : true;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: do */
        public final int mo2621do(View view, int i) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            return C0315Kc.m1182throw(i, sideSheetBehavior.f11339do.mo2023else(), sideSheetBehavior.f11339do.mo2018case());
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: for */
        public final int mo2623for(View view) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            return sideSheetBehavior.f11357new + sideSheetBehavior.f11351else;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: goto */
        public final void mo2624goto(int i) {
            if (i == 1) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                if (sideSheetBehavior.f11350do) {
                    sideSheetBehavior.m5878default(1);
                }
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: if */
        public final int mo2625if(View view, int i) {
            return view.getTop();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: this */
        public final void mo2627this(View view, int i, int i2) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            WeakReference<View> weakReference = sideSheetBehavior.f11355if;
            View view2 = weakReference != null ? weakReference.get() : null;
            if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                sideSheetBehavior.f11339do.mo2031throw(marginLayoutParams, view.getLeft(), view.getRight());
                view2.setLayoutParams(marginLayoutParams);
            }
            LinkedHashSet linkedHashSet = sideSheetBehavior.f11348do;
            if (linkedHashSet.isEmpty()) {
                return;
            }
            sideSheetBehavior.f11339do.mo2027if(i);
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                ((QD) it.next()).m1836if();
            }
        }
    }

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f11362do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Y1 f11363do = new Y1(this, 6);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11365do;

        public Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5883do(int i) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            WeakReference<V> weakReference = sideSheetBehavior.f11347do;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f11362do = i;
            if (this.f11365do) {
                return;
            }
            V v = sideSheetBehavior.f11347do.get();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            v.postOnAnimation(this.f11363do);
            this.f11365do = true;
        }
    }

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.m5878default(5);
            WeakReference<V> weakReference = sideSheetBehavior.f11347do;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            sideSheetBehavior.f11347do.get().requestLayout();
        }
    }

    public SideSheetBehavior() {
        this.f11345do = new Cfor();
        this.f11350do = true;
        this.f11352for = 5;
        this.f11354if = 0.1f;
        this.f11353goto = -1;
        this.f11348do = new LinkedHashSet();
        this.f11344do = new Cdo();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: break */
    public final void mo3681break() {
        this.f11347do = null;
        this.f11340do = null;
        this.f11346do = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: catch */
    public final boolean mo3683catch(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        VK vk;
        VelocityTracker velocityTracker;
        if (!((v.isShown() || QK.m1866try(v) != null) && this.f11350do)) {
            this.f11356if = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f11342do) != null) {
            velocityTracker.recycle();
            this.f11342do = null;
        }
        if (this.f11342do == null) {
            this.f11342do = VelocityTracker.obtain();
        }
        this.f11342do.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f11358this = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f11356if) {
            this.f11356if = false;
            return false;
        }
        return (this.f11356if || (vk = this.f11340do) == null || !vk.m2611public(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public final boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
        int i2;
        View findViewById;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (coordinatorLayout.getFitsSystemWindows() && !v.getFitsSystemWindows()) {
            v.setFitsSystemWindows(true);
        }
        int i3 = 0;
        if (this.f11347do == null) {
            this.f11347do = new WeakReference<>(v);
            this.f11346do = new C2657ds(v);
            C0716as c0716as = this.f11343do;
            if (c0716as != null) {
                v.setBackground(c0716as);
                C0716as c0716as2 = this.f11343do;
                float f = this.f11338do;
                if (f == -1.0f) {
                    f = QK.Cnew.m1939this(v);
                }
                c0716as2.m4770final(f);
            } else {
                ColorStateList colorStateList = this.f11341do;
                if (colorStateList != null) {
                    QK.m1861return(v, colorStateList);
                }
            }
            int i4 = this.f11352for == 5 ? 4 : 0;
            if (v.getVisibility() != i4) {
                v.setVisibility(i4);
            }
            m5880finally();
            if (v.getImportantForAccessibility() == 0) {
                v.setImportantForAccessibility(1);
            }
            if (QK.m1866try(v) == null) {
                QK.m1860public(v, v.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i5 = Gravity.getAbsoluteGravity(((CoordinatorLayout.Ctry) v.getLayoutParams()).f6469do, i) == 3 ? 1 : 0;
        RD rd = this.f11339do;
        if (rd == null || rd.mo2017break() != i5) {
            C3554qD c3554qD = this.f11349do;
            if (i5 == 0) {
                this.f11339do = new C3315mA(this);
                if (c3554qD != null) {
                    CoordinatorLayout.Ctry m5881switch = m5881switch();
                    if (!(m5881switch != null && ((ViewGroup.MarginLayoutParams) m5881switch).rightMargin > 0)) {
                        C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
                        cdo.m7866case(0.0f);
                        cdo.m7869new(0.0f);
                        C3554qD c3554qD2 = new C3554qD(cdo);
                        C0716as c0716as3 = this.f11343do;
                        if (c0716as3 != null) {
                            c0716as3.mo4768do(c3554qD2);
                        }
                    }
                }
            } else {
                if (i5 != 1) {
                    throw new IllegalArgumentException(Creturn.m7981if("Invalid sheet edge position value: ", i5, ". Must be 0 or 1."));
                }
                this.f11339do = new C0591Wp(this);
                if (c3554qD != null) {
                    CoordinatorLayout.Ctry m5881switch2 = m5881switch();
                    if (!(m5881switch2 != null && ((ViewGroup.MarginLayoutParams) m5881switch2).leftMargin > 0)) {
                        C3554qD.Cdo cdo2 = new C3554qD.Cdo(c3554qD);
                        cdo2.m7870try(0.0f);
                        cdo2.m7867for(0.0f);
                        C3554qD c3554qD3 = new C3554qD(cdo2);
                        C0716as c0716as4 = this.f11343do;
                        if (c0716as4 != null) {
                            c0716as4.mo4768do(c3554qD3);
                        }
                    }
                }
            }
        }
        if (this.f11340do == null) {
            this.f11340do = new VK(coordinatorLayout.getContext(), coordinatorLayout, this.f11344do);
        }
        int mo2026goto = this.f11339do.mo2026goto(v);
        coordinatorLayout.m3670extends(v, i);
        this.f11359try = coordinatorLayout.getWidth();
        this.f11337case = this.f11339do.mo2030this(coordinatorLayout);
        this.f11357new = v.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        this.f11351else = marginLayoutParams != null ? this.f11339do.mo2022do(marginLayoutParams) : 0;
        int i6 = this.f11352for;
        if (i6 == 1 || i6 == 2) {
            i3 = mo2026goto - this.f11339do.mo2026goto(v);
        } else if (i6 != 3) {
            if (i6 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f11352for);
            }
            i3 = this.f11339do.mo2032try();
        }
        QK.m1849class(v, i3);
        if (this.f11355if == null && (i2 = this.f11353goto) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.f11355if = new WeakReference<>(findViewById);
        }
        for (QD qd : this.f11348do) {
            if (qd instanceof YD) {
                ((YD) qd).getClass();
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: const */
    public final boolean mo3685const(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height));
        return true;
    }

    /* renamed from: default, reason: not valid java name */
    public final void m5878default(int i) {
        V v;
        if (this.f11352for == i) {
            return;
        }
        this.f11352for = i;
        WeakReference<V> weakReference = this.f11347do;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        int i2 = this.f11352for == 5 ? 4 : 0;
        if (v.getVisibility() != i2) {
            v.setVisibility(i2);
        }
        Iterator it = this.f11348do.iterator();
        while (it.hasNext()) {
            ((QD) it.next()).m1835do();
        }
        m5880finally();
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: do */
    public final void mo504do(B4 b4) {
        C2657ds c2657ds = this.f11346do;
        if (c2657ds == null) {
            return;
        }
        ((AbstractC0176Dr) c2657ds).f689do = b4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: else */
    public final void mo3686else(CoordinatorLayout.Ctry ctry) {
        this.f11347do = null;
        this.f11340do = null;
        this.f11346do = null;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m5879extends(View view, boolean z, int i) {
        int mo2028new;
        if (i == 3) {
            mo2028new = this.f11339do.mo2028new();
        } else {
            if (i != 5) {
                throw new IllegalArgumentException(V1.m2494case("Invalid state to get outer edge offset: ", i));
            }
            mo2028new = this.f11339do.mo2032try();
        }
        VK vk = this.f11340do;
        if (!(vk != null && (!z ? !vk.m2612return(view, mo2028new, view.getTop()) : !vk.m2609native(mo2028new, view.getTop())))) {
            m5878default(i);
        } else {
            m5878default(2);
            this.f11345do.m5883do(i);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m5880finally() {
        V v;
        WeakReference<V> weakReference = this.f11347do;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        QK.m1865throw(v, 262144);
        QK.m1848catch(v, 0);
        QK.m1865throw(v, 1048576);
        QK.m1848catch(v, 0);
        final int i = 5;
        if (this.f11352for != 5) {
            QK.m1867while(v, C3893w.Cdo.f16170goto, null, new B() { // from class: XD
                @Override // defpackage.B
                /* renamed from: case */
                public final boolean mo136case(View view) {
                    SideSheetBehavior.this.m5882throws(i);
                    return true;
                }
            });
        }
        final int i2 = 3;
        if (this.f11352for != 3) {
            QK.m1867while(v, C3893w.Cdo.f16165case, null, new B() { // from class: XD
                @Override // defpackage.B
                /* renamed from: case */
                public final boolean mo136case(View view) {
                    SideSheetBehavior.this.m5882throws(i2);
                    return true;
                }
            });
        }
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: if */
    public final void mo505if() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        C2657ds c2657ds = this.f11346do;
        if (c2657ds == null) {
            return;
        }
        B4 b4 = ((AbstractC0176Dr) c2657ds).f689do;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        ((AbstractC0176Dr) c2657ds).f689do = null;
        int i = 5;
        if (b4 == null || Build.VERSION.SDK_INT < 34) {
            m5882throws(5);
            return;
        }
        RD rd = this.f11339do;
        if (rd != null && rd.mo2017break() != 0) {
            i = 3;
        }
        Cif cif = new Cif();
        WeakReference<View> weakReference = this.f11355if;
        final View view = weakReference != null ? weakReference.get() : null;
        if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
            final int mo2025for = this.f11339do.mo2025for(marginLayoutParams);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: WD
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SideSheetBehavior.this.f11339do.mo2029super(marginLayoutParams, C2785g1.m6710if(valueAnimator.getAnimatedFraction(), mo2025for, 0));
                    view.requestLayout();
                }
            };
        }
        c2657ds.m6468if(b4, i, cif, animatorUpdateListener);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: import */
    public final void mo3690import(View view, Parcelable parcelable) {
        int i = ((SavedState) parcelable).f11360for;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.f11352for = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: native */
    public final Parcelable mo3691native(View view) {
        return new SavedState(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: new */
    public final void mo506new() {
        C2657ds c2657ds = this.f11346do;
        if (c2657ds == null) {
            return;
        }
        c2657ds.m6466do();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: static */
    public final boolean mo3694static(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        boolean z = false;
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.f11352for;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        VK vk = this.f11340do;
        if (vk != null && (this.f11350do || i == 1)) {
            vk.m2601const(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f11342do) != null) {
            velocityTracker.recycle();
            this.f11342do = null;
        }
        if (this.f11342do == null) {
            this.f11342do = VelocityTracker.obtain();
        }
        this.f11342do.addMovement(motionEvent);
        VK vk2 = this.f11340do;
        if ((vk2 != null && (this.f11350do || this.f11352for == 1)) && actionMasked == 2 && !this.f11356if) {
            if ((vk2 != null && (this.f11350do || this.f11352for == 1)) && Math.abs(this.f11358this - motionEvent.getX()) > this.f11340do.f4101if) {
                z = true;
            }
            if (z) {
                this.f11340do.m2605for(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f11356if;
    }

    /* renamed from: switch, reason: not valid java name */
    public final CoordinatorLayout.Ctry m5881switch() {
        V v;
        WeakReference<V> weakReference = this.f11347do;
        if (weakReference == null || (v = weakReference.get()) == null || !(v.getLayoutParams() instanceof CoordinatorLayout.Ctry)) {
            return null;
        }
        return (CoordinatorLayout.Ctry) v.getLayoutParams();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
    
        if (r1.isAttachedToWindow() != false) goto L20;
     */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5882throws(int r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 == r0) goto L43
            r1 = 2
            if (r5 != r1) goto L7
            goto L43
        L7:
            java.lang.ref.WeakReference<V extends android.view.View> r1 = r4.f11347do
            if (r1 == 0) goto L3f
            java.lang.Object r1 = r1.get()
            if (r1 != 0) goto L12
            goto L3f
        L12:
            java.lang.ref.WeakReference<V extends android.view.View> r1 = r4.f11347do
            java.lang.Object r1 = r1.get()
            android.view.View r1 = (android.view.View) r1
            Qz r2 = new Qz
            r2.<init>(r5, r0, r4)
            android.view.ViewParent r5 = r1.getParent()
            if (r5 == 0) goto L34
            boolean r5 = r5.isLayoutRequested()
            if (r5 == 0) goto L34
            java.util.WeakHashMap<android.view.View, nL> r5 = defpackage.QK.f2909do
            boolean r5 = r1.isAttachedToWindow()
            if (r5 == 0) goto L34
            goto L35
        L34:
            r0 = 0
        L35:
            if (r0 == 0) goto L3b
            r1.post(r2)
            goto L42
        L3b:
            r2.run()
            goto L42
        L3f:
            r4.m5878default(r5)
        L42:
            return
        L43:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "STATE_"
            r2.<init>(r3)
            if (r5 != r0) goto L51
            java.lang.String r5 = "DRAGGING"
            goto L53
        L51:
            java.lang.String r5 = "SETTLING"
        L53:
            java.lang.String r0 = " should not be set externally."
            java.lang.String r5 = defpackage.Creturn.m7984try(r2, r5, r0)
            r1.<init>(r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.m5882throws(int):void");
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: try */
    public final void mo507try(B4 b4) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        C2657ds c2657ds = this.f11346do;
        if (c2657ds == null) {
            return;
        }
        RD rd = this.f11339do;
        int i = (rd == null || rd.mo2017break() == 0) ? 5 : 3;
        B4 b42 = ((AbstractC0176Dr) c2657ds).f689do;
        ((AbstractC0176Dr) c2657ds).f689do = b4;
        if (b42 != null) {
            c2657ds.m6467for(b4.f200for, i, b4.f199do == 0);
        }
        WeakReference<V> weakReference = this.f11347do;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        V v = this.f11347do.get();
        WeakReference<View> weakReference2 = this.f11355if;
        View view = weakReference2 != null ? weakReference2.get() : null;
        if (view == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        this.f11339do.mo2029super(marginLayoutParams, (int) ((v.getScaleX() * this.f11357new) + this.f11351else));
        view.requestLayout();
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: for, reason: not valid java name */
        public final int f11360for;

        /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$SavedState$do, reason: invalid class name */
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
                return new SavedState(parcel, (ClassLoader) null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11360for = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f6568do, i);
            parcel.writeInt(this.f11360for);
        }

        public SavedState(android.view.AbsSavedState absSavedState, SideSheetBehavior sideSheetBehavior) {
            super(absSavedState);
            this.f11360for = sideSheetBehavior.f11352for;
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11345do = new Cfor();
        this.f11350do = true;
        this.f11352for = 5;
        this.f11354if = 0.1f;
        this.f11353goto = -1;
        this.f11348do = new LinkedHashSet();
        this.f11344do = new Cdo();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.l);
        if (obtainStyledAttributes.hasValue(3)) {
            this.f11341do = C0659Zr.m3071if(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.f11349do = new C3554qD(C3554qD.m7859for(context, attributeSet, 0, R.style.Widget_Material3_SideSheet));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.f11353goto = resourceId;
            WeakReference<View> weakReference = this.f11355if;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f11355if = null;
            WeakReference<V> weakReference2 = this.f11347do;
            if (weakReference2 != null) {
                V v = weakReference2.get();
                if (resourceId != -1) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    if (v.isLaidOut()) {
                        v.requestLayout();
                    }
                }
            }
        }
        C3554qD c3554qD = this.f11349do;
        if (c3554qD != null) {
            C0716as c0716as = new C0716as(c3554qD);
            this.f11343do = c0716as;
            c0716as.m4766class(context);
            ColorStateList colorStateList = this.f11341do;
            if (colorStateList != null) {
                this.f11343do.m4778super(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f11343do.setTint(typedValue.data);
            }
        }
        this.f11338do = obtainStyledAttributes.getDimension(2, -1.0f);
        this.f11350do = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
