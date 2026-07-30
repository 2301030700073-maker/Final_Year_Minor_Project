package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.appbar.AppBarLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0154Cr;
import defpackage.C0222Ft;
import defpackage.C0315Kc;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0492Se;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C2805gL;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.CL;
import defpackage.Cimplements;
import defpackage.InterfaceC0136Bv;
import defpackage.InterfaceC3593qu;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.Cif {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ int f10370this = 0;

    /* renamed from: case, reason: not valid java name */
    public int f10371case;

    /* renamed from: do, reason: not valid java name */
    public final float f10372do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f10373do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f10374do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator.AnimatorUpdateListener f10375do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f10376do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10377do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Behavior f10378do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3150jM f10379do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f10380do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<View> f10381do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f10382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10383do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f10384do;

    /* renamed from: else, reason: not valid java name */
    public int f10385else;

    /* renamed from: for, reason: not valid java name */
    public int f10386for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10387for;

    /* renamed from: goto, reason: not valid java name */
    public final int f10388goto;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList f10389if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10390if;

    /* renamed from: new, reason: not valid java name */
    public int f10391new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f10392new;

    /* renamed from: try, reason: not valid java name */
    public int f10393try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f10394try;

    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: do, reason: not valid java name */
        public ValueAnimator f10395do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SavedState f10396do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakReference<View> f10397do;

        /* renamed from: else, reason: not valid java name */
        public int f10398else;

        /* renamed from: goto, reason: not valid java name */
        public int f10399goto;

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$do, reason: invalid class name */
        public class Cdo extends Cimplements {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CoordinatorLayout f10405do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ BaseBehavior f10406do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ AppBarLayout f10407do;

            public Cdo(CoordinatorLayout coordinatorLayout, BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
                this.f10406do = baseBehavior;
                this.f10407do = appBarLayout;
                this.f10405do = coordinatorLayout;
            }

            @Override // defpackage.Cimplements
            /* renamed from: else */
            public final boolean mo3759else(View view, int i, Bundle bundle) {
                AppBarLayout appBarLayout = this.f10407do;
                if (i == 4096) {
                    appBarLayout.getClass();
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    appBarLayout.m5618break(false, appBarLayout.isLaidOut(), true);
                    return true;
                }
                if (i != 8192) {
                    return super.mo3759else(view, i, bundle);
                }
                BaseBehavior baseBehavior = this.f10406do;
                if (baseBehavior.mo5640package() != 0) {
                    View m5631strictfp = BaseBehavior.m5631strictfp(baseBehavior, this.f10405do);
                    if (!m5631strictfp.canScrollVertically(-1)) {
                        appBarLayout.getClass();
                        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                        appBarLayout.m5618break(true, appBarLayout.isLaidOut(), true);
                        return true;
                    }
                    int i2 = -appBarLayout.m5626if();
                    if (i2 != 0) {
                        this.f10406do.m5642transient(this.f10405do, this.f10407do, m5631strictfp, i2, new int[]{0, 0});
                        return true;
                    }
                }
                return false;
            }

            @Override // defpackage.Cimplements
            /* renamed from: new */
            public final void mo1356new(View view, C3893w c3893w) {
                BaseBehavior baseBehavior;
                View m5631strictfp;
                ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
                c3893w.m8495break(ScrollView.class.getName());
                AppBarLayout appBarLayout = this.f10407do;
                if (appBarLayout.m5623else() == 0 || (m5631strictfp = BaseBehavior.m5631strictfp((baseBehavior = this.f10406do), this.f10405do)) == null) {
                    return;
                }
                int childCount = appBarLayout.getChildCount();
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    if (((LayoutParams) appBarLayout.getChildAt(i).getLayoutParams()).f10408do != 0) {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (z) {
                    if (baseBehavior.mo5640package() != (-appBarLayout.m5623else())) {
                        c3893w.m8505if(C3893w.Cdo.f16172new);
                        c3893w.m8502final(true);
                    }
                    if (baseBehavior.mo5640package() != 0) {
                        if (!m5631strictfp.canScrollVertically(-1)) {
                            c3893w.m8505if(C3893w.Cdo.f16174try);
                            c3893w.m8502final(true);
                        } else if ((-appBarLayout.m5626if()) != 0) {
                            c3893w.m8505if(C3893w.Cdo.f16174try);
                            c3893w.m8502final(true);
                        }
                    }
                }
            }
        }

        public BaseBehavior() {
        }

        /* renamed from: protected, reason: not valid java name */
        public static View m5630protected(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof InterfaceC3593qu) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: strictfp, reason: not valid java name */
        public static View m5631strictfp(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            baseBehavior.getClass();
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (((CoordinatorLayout.Ctry) childAt.getLayoutParams()).f6472do instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
        /* renamed from: synchronized, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m5632synchronized(androidx.coordinatorlayout.widget.CoordinatorLayout r7, com.google.android.material.appbar.AppBarLayout r8, int r9, int r10, boolean r11) {
            /*
                int r0 = java.lang.Math.abs(r9)
                int r1 = r8.getChildCount()
                r2 = 0
                r3 = 0
            La:
                r4 = 0
                if (r3 >= r1) goto L21
                android.view.View r5 = r8.getChildAt(r3)
                int r6 = r5.getTop()
                if (r0 < r6) goto L1e
                int r6 = r5.getBottom()
                if (r0 > r6) goto L1e
                goto L22
            L1e:
                int r3 = r3 + 1
                goto La
            L21:
                r5 = r4
            L22:
                r0 = 1
                if (r5 == 0) goto L5e
                android.view.ViewGroup$LayoutParams r1 = r5.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r1 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r1
                int r1 = r1.f10408do
                r3 = r1 & 1
                if (r3 == 0) goto L5e
                java.util.WeakHashMap<android.view.View, nL> r3 = defpackage.QK.f2909do
                int r3 = r5.getMinimumHeight()
                if (r10 <= 0) goto L4b
                r10 = r1 & 12
                if (r10 == 0) goto L4b
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r3
                int r1 = r8.m5619case()
                int r10 = r10 - r1
                if (r9 < r10) goto L5e
                goto L5c
            L4b:
                r10 = r1 & 2
                if (r10 == 0) goto L5e
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r3
                int r1 = r8.m5619case()
                int r10 = r10 - r1
                if (r9 < r10) goto L5e
            L5c:
                r9 = 1
                goto L5f
            L5e:
                r9 = 0
            L5f:
                boolean r10 = r8.f10392new
                if (r10 == 0) goto L6b
                android.view.View r9 = m5630protected(r7)
                boolean r9 = r8.m5621class(r9)
            L6b:
                boolean r9 = r8.m5620catch(r9)
                if (r11 != 0) goto Laf
                if (r9 == 0) goto Ldc
                we r9 = r7.f6453do
                java.lang.Object r9 = r9.f16375if
                eE r9 = (defpackage.C2680eE) r9
                java.lang.Object r9 = r9.getOrDefault(r8, r4)
                java.util.List r9 = (java.util.List) r9
                java.util.ArrayList r7 = r7.f6456for
                r7.clear()
                if (r9 == 0) goto L89
                r7.addAll(r9)
            L89:
                int r9 = r7.size()
                r10 = 0
            L8e:
                if (r10 >= r9) goto Lad
                java.lang.Object r11 = r7.get(r10)
                android.view.View r11 = (android.view.View) r11
                android.view.ViewGroup$LayoutParams r11 = r11.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$try r11 = (androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry) r11
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r11 = r11.f6472do
                boolean r1 = r11 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r1 == 0) goto Laa
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r11 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r11
                int r7 = r11.f10461try
                if (r7 == 0) goto Lad
                r2 = 1
                goto Lad
            Laa:
                int r10 = r10 + 1
                goto L8e
            Lad:
                if (r2 == 0) goto Ldc
            Laf:
                android.graphics.drawable.Drawable r7 = r8.getBackground()
                if (r7 == 0) goto Lbc
                android.graphics.drawable.Drawable r7 = r8.getBackground()
                r7.jumpToCurrentState()
            Lbc:
                int r7 = android.os.Build.VERSION.SDK_INT
                r9 = 23
                if (r7 < r9) goto Lcf
                android.graphics.drawable.Drawable r7 = r8.getForeground()
                if (r7 == 0) goto Lcf
                android.graphics.drawable.Drawable r7 = r8.getForeground()
                r7.jumpToCurrentState()
            Lcf:
                android.animation.StateListAnimator r7 = r8.getStateListAnimator()
                if (r7 == 0) goto Ldc
                android.animation.StateListAnimator r7 = r8.getStateListAnimator()
                r7.jumpToCurrentState()
            Ldc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m5632synchronized(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: abstract, reason: not valid java name */
        public final int mo5633abstract(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            int i4;
            boolean z;
            int i5;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int mo5640package = mo5640package();
            int i6 = 0;
            if (i2 == 0 || mo5640package < i2 || mo5640package > i3) {
                this.f10398else = 0;
            } else {
                int m1182throw = C0315Kc.m1182throw(i, i2, i3);
                if (mo5640package != m1182throw) {
                    if (appBarLayout.f10383do) {
                        int abs = Math.abs(m1182throw);
                        int childCount = appBarLayout.getChildCount();
                        int i7 = 0;
                        while (true) {
                            if (i7 >= childCount) {
                                break;
                            }
                            View childAt = appBarLayout.getChildAt(i7);
                            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                            Interpolator interpolator = layoutParams.f10409do;
                            if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                                i7++;
                            } else if (interpolator != null) {
                                int i8 = layoutParams.f10408do;
                                if ((i8 & 1) != 0) {
                                    i5 = childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + 0;
                                    if ((i8 & 2) != 0) {
                                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                                        i5 -= childAt.getMinimumHeight();
                                    }
                                } else {
                                    i5 = 0;
                                }
                                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                                if (childAt.getFitsSystemWindows()) {
                                    i5 -= appBarLayout.m5619case();
                                }
                                if (i5 > 0) {
                                    float f = i5;
                                    i4 = (childAt.getTop() + Math.round(interpolator.getInterpolation((abs - childAt.getTop()) / f) * f)) * Integer.signum(m1182throw);
                                }
                            }
                        }
                    }
                    i4 = m1182throw;
                    C2805gL c2805gL = ((ViewOffsetBehavior) this).f10468do;
                    if (c2805gL != null) {
                        z = c2805gL.m6725if(i4);
                    } else {
                        this.f10469for = i4;
                        z = false;
                    }
                    int i9 = mo5640package - m1182throw;
                    this.f10398else = m1182throw - i4;
                    int i10 = 1;
                    if (z) {
                        int i11 = 0;
                        while (i11 < appBarLayout.getChildCount()) {
                            LayoutParams layoutParams2 = (LayoutParams) appBarLayout.getChildAt(i11).getLayoutParams();
                            Cnew cnew = layoutParams2.f10410do;
                            if (cnew != null && (layoutParams2.f10408do & i10) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i11);
                                float m5659switch = m5659switch();
                                Rect rect = cnew.f10412do;
                                childAt2.getDrawingRect(rect);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect);
                                rect.offset(0, -appBarLayout.m5619case());
                                float abs2 = rect.top - Math.abs(m5659switch);
                                if (abs2 <= 0.0f) {
                                    float m1179super = 1.0f - C0315Kc.m1179super(Math.abs(abs2 / rect.height()), 0.0f, 1.0f);
                                    float height = (-abs2) - ((rect.height() * 0.3f) * (1.0f - (m1179super * m1179super)));
                                    childAt2.setTranslationY(height);
                                    Rect rect2 = cnew.f10413if;
                                    childAt2.getDrawingRect(rect2);
                                    rect2.offset(0, (int) (-height));
                                    if (height >= rect2.height()) {
                                        childAt2.setVisibility(4);
                                    } else {
                                        childAt2.setVisibility(0);
                                    }
                                    WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
                                    childAt2.setClipBounds(rect2);
                                } else {
                                    WeakHashMap<View, C3385nL> weakHashMap4 = QK.f2909do;
                                    childAt2.setClipBounds(null);
                                    childAt2.setTranslationY(0.0f);
                                    childAt2.setVisibility(0);
                                }
                            }
                            i11++;
                            i10 = 1;
                        }
                    }
                    if (!z && appBarLayout.f10383do) {
                        coordinatorLayout.m3672import(appBarLayout);
                    }
                    appBarLayout.m5628this(m5659switch());
                    m5632synchronized(coordinatorLayout, appBarLayout, m1182throw, m1182throw < mo5640package ? -1 : 1, false);
                    i6 = i9;
                }
            }
            m5643volatile(coordinatorLayout, appBarLayout);
            return i6;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: class */
        public final boolean mo3684class(CoordinatorLayout coordinatorLayout, View view, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.mo3684class(coordinatorLayout, appBarLayout, i);
            int i2 = appBarLayout.f10385else;
            SavedState savedState = this.f10396do;
            if (savedState == null || (i2 & 8) != 0) {
                if (i2 != 0) {
                    boolean z = (i2 & 4) != 0;
                    if ((i2 & 2) != 0) {
                        int i3 = -appBarLayout.m5623else();
                        if (z) {
                            m5639interface(coordinatorLayout, appBarLayout, i3);
                        } else {
                            m5656continue(coordinatorLayout, appBarLayout, i3);
                        }
                    } else if ((i2 & 1) != 0) {
                        if (z) {
                            m5639interface(coordinatorLayout, appBarLayout, 0);
                        } else {
                            m5656continue(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (savedState.f10401do) {
                m5656continue(coordinatorLayout, appBarLayout, -appBarLayout.m5623else());
            } else if (savedState.f10404if) {
                m5656continue(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(savedState.f10402for);
                int i4 = -childAt.getBottom();
                m5656continue(coordinatorLayout, appBarLayout, this.f10396do.f10403for ? appBarLayout.m5619case() + childAt.getMinimumHeight() + i4 : Math.round(childAt.getHeight() * this.f10396do.f10400do) + i4);
            }
            appBarLayout.f10385else = 0;
            this.f10396do = null;
            int m1182throw = C0315Kc.m1182throw(m5659switch(), -appBarLayout.m5623else(), 0);
            C2805gL c2805gL = ((ViewOffsetBehavior) this).f10468do;
            if (c2805gL != null) {
                c2805gL.m6725if(m1182throw);
            } else {
                this.f10469for = m1182throw;
            }
            m5632synchronized(coordinatorLayout, appBarLayout, m5659switch(), 0, true);
            appBarLayout.m5628this(m5659switch());
            m5643volatile(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: const */
        public final boolean mo3685const(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.Ctry) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.m3671finally(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0));
            return true;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: default, reason: not valid java name */
        public final boolean mo5634default(View view) {
            View view2;
            WeakReference<View> weakReference = this.f10397do;
            return weakReference == null || !((view2 = weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1));
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: extends, reason: not valid java name */
        public final int mo5635extends(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            return appBarLayout.m5619case() + (-appBarLayout.m5627new());
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: finally, reason: not valid java name */
        public final int mo5636finally(View view) {
            return ((AppBarLayout) view).m5623else();
        }

        /* renamed from: implements, reason: not valid java name */
        public final SavedState m5637implements(Parcelable parcelable, T t) {
            int m5659switch = m5659switch();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + m5659switch;
                if (childAt.getTop() + m5659switch <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.f6567do;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z = m5659switch == 0;
                    savedState.f10404if = z;
                    savedState.f10401do = !z && (-m5659switch) >= t.m5623else();
                    savedState.f10402for = i;
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    savedState.f10403for = bottom == t.m5619case() + childAt.getMinimumHeight();
                    savedState.f10400do = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: import */
        public final void mo3690import(View view, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                this.f10396do = null;
            } else {
                SavedState savedState = this.f10396do;
                this.f10396do = (SavedState) parcelable;
            }
        }

        /* renamed from: instanceof, reason: not valid java name */
        public final void m5638instanceof(CoordinatorLayout coordinatorLayout, T t) {
            int paddingTop = t.getPaddingTop() + t.m5619case();
            int mo5640package = mo5640package() - paddingTop;
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                View childAt = t.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if ((layoutParams.f10408do & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i2 = -mo5640package;
                if (top <= i2 && bottom >= i2) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                View childAt2 = t.getChildAt(i);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int i3 = layoutParams2.f10408do;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int i5 = -childAt2.getBottom();
                    if (i == 0) {
                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                        if (t.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                            i4 -= t.m5619case();
                        }
                    }
                    if ((i3 & 2) == 2) {
                        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                        i5 += childAt2.getMinimumHeight();
                    } else {
                        if ((i3 & 5) == 5) {
                            WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
                            int minimumHeight = childAt2.getMinimumHeight() + i5;
                            if (mo5640package < minimumHeight) {
                                i4 = minimumHeight;
                            } else {
                                i5 = minimumHeight;
                            }
                        }
                    }
                    if ((i3 & 32) == 32) {
                        i4 += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        i5 -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (mo5640package < (i5 + i4) / 2) {
                        i4 = i5;
                    }
                    m5639interface(coordinatorLayout, t, C0315Kc.m1182throw(i4 + paddingTop, -t.m5623else(), 0));
                }
            }
        }

        /* renamed from: interface, reason: not valid java name */
        public final void m5639interface(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(mo5640package() - i);
            float abs2 = Math.abs(0.0f);
            int round = abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int mo5640package = mo5640package();
            if (mo5640package == i) {
                ValueAnimator valueAnimator = this.f10395do;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f10395do.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f10395do;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f10395do = valueAnimator3;
                valueAnimator3.setInterpolator(C2785g1.f13027do);
                this.f10395do.addUpdateListener(new com.google.android.material.appbar.Cdo(coordinatorLayout, this, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f10395do.setDuration(Math.min(round, 600));
            this.f10395do.setIntValues(mo5640package, i);
            this.f10395do.start();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: native */
        public final Parcelable mo3691native(View view) {
            android.view.AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            SavedState m5637implements = m5637implements(absSavedState, (AppBarLayout) view);
            return m5637implements == null ? absSavedState : m5637implements;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: package, reason: not valid java name */
        public final int mo5640package() {
            return m5659switch() + this.f10398else;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: private, reason: not valid java name */
        public final void mo5641private(View view, CoordinatorLayout coordinatorLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            m5638instanceof(coordinatorLayout, appBarLayout);
            if (appBarLayout.f10392new) {
                appBarLayout.m5620catch(appBarLayout.m5621class(m5630protected(coordinatorLayout)));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        
            if (((r3.m5623else() != 0) && r2.getHeight() - r4.getHeight() <= r3.getHeight()) != false) goto L16;
         */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: public */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo3692public(androidx.coordinatorlayout.widget.CoordinatorLayout r2, android.view.View r3, android.view.View r4, android.view.View r5, int r6, int r7) {
            /*
                r1 = this;
                com.google.android.material.appbar.AppBarLayout r3 = (com.google.android.material.appbar.AppBarLayout) r3
                r5 = r6 & 2
                r6 = 0
                if (r5 == 0) goto L2c
                boolean r5 = r3.f10392new
                r0 = 1
                if (r5 != 0) goto L2b
                int r5 = r3.m5623else()
                if (r5 == 0) goto L14
                r5 = 1
                goto L15
            L14:
                r5 = 0
            L15:
                if (r5 == 0) goto L28
                int r2 = r2.getHeight()
                int r4 = r4.getHeight()
                int r2 = r2 - r4
                int r3 = r3.getHeight()
                if (r2 > r3) goto L28
                r2 = 1
                goto L29
            L28:
                r2 = 0
            L29:
                if (r2 == 0) goto L2c
            L2b:
                r6 = 1
            L2c:
                if (r6 == 0) goto L35
                android.animation.ValueAnimator r2 = r1.f10395do
                if (r2 == 0) goto L35
                r2.cancel()
            L35:
                r2 = 0
                r1.f10397do = r2
                r1.f10399goto = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.mo3692public(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, android.view.View, int, int):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: return */
        public final void mo3693return(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f10399goto == 0 || i == 1) {
                m5638instanceof(coordinatorLayout, appBarLayout);
                if (appBarLayout.f10392new) {
                    appBarLayout.m5620catch(appBarLayout.m5621class(view2));
                }
            }
            this.f10397do = new WeakReference<>(view2);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: super */
        public final /* bridge */ /* synthetic */ void mo3695super(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            m5642transient(coordinatorLayout, (AppBarLayout) view, view2, i2, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: throw */
        public final void mo3697throw(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i3 < 0) {
                iArr[1] = mo5633abstract(coordinatorLayout, appBarLayout, mo5640package() - i3, -appBarLayout.m5627new(), 0);
            }
            if (i3 == 0) {
                m5643volatile(coordinatorLayout, appBarLayout);
            }
        }

        /* renamed from: transient, reason: not valid java name */
        public final void m5642transient(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int[] iArr) {
            int i2;
            int i3;
            if (i != 0) {
                if (i < 0) {
                    int i4 = -appBarLayout.m5623else();
                    i2 = i4;
                    i3 = appBarLayout.m5626if() + i4;
                } else {
                    i2 = -appBarLayout.m5623else();
                    i3 = 0;
                }
                if (i2 != i3) {
                    iArr[1] = mo5633abstract(coordinatorLayout, appBarLayout, mo5640package() - i, i2, i3);
                }
            }
            if (appBarLayout.f10392new) {
                appBarLayout.m5620catch(appBarLayout.m5621class(view));
            }
        }

        /* renamed from: volatile, reason: not valid java name */
        public final void m5643volatile(CoordinatorLayout coordinatorLayout, T t) {
            if (QK.m1859new(coordinatorLayout) != null) {
                return;
            }
            QK.m1858native(coordinatorLayout, new Cdo(coordinatorLayout, this, t));
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

            /* renamed from: do, reason: not valid java name */
            public float f10400do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f10401do;

            /* renamed from: for, reason: not valid java name */
            public int f10402for;

            /* renamed from: for, reason: not valid java name and collision with other field name */
            public boolean f10403for;

            /* renamed from: if, reason: not valid java name */
            public boolean f10404if;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$do, reason: invalid class name */
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

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f10401do = parcel.readByte() != 0;
                this.f10404if = parcel.readByte() != 0;
                this.f10402for = parcel.readInt();
                this.f10400do = parcel.readFloat();
                this.f10403for = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeParcelable(((AbsSavedState) this).f6568do, i);
                parcel.writeByte(this.f10401do ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.f10404if ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.f10402for);
                parcel.writeFloat(this.f10400do);
                parcel.writeByte(this.f10403for ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: case */
        public final boolean mo3682case(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: default, reason: not valid java name */
        public final AppBarLayout mo5644default(ArrayList arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: extends, reason: not valid java name */
        public final float mo5645extends(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int m5623else = appBarLayout.m5623else();
                int m5626if = appBarLayout.m5626if();
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.Ctry) appBarLayout.getLayoutParams()).f6472do;
                int mo5640package = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).mo5640package() : 0;
                if ((m5626if == 0 || m5623else + mo5640package > m5626if) && (i = m5623else - m5626if) != 0) {
                    return (mo5640package / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: finally, reason: not valid java name */
        public final int mo5646finally(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).m5623else() : view.getMeasuredHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: goto */
        public boolean mo3689goto(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int m1182throw;
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.Ctry) view2.getLayoutParams()).f6472do;
            if (behavior instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f10398else + this.f10460new;
                if (this.f10461try == 0) {
                    m1182throw = 0;
                } else {
                    float mo5645extends = mo5645extends(view2);
                    int i = this.f10461try;
                    m1182throw = C0315Kc.m1182throw((int) (mo5645extends * i), 0, i);
                }
                QK.m1850const(view, bottom - m1182throw);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.f10392new) {
                    appBarLayout.m5620catch(appBarLayout.m5621class(view));
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: this */
        public final void mo3696this(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                QK.m1858native(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: while */
        public final boolean mo3698while(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayout;
            ArrayList m3676public = coordinatorLayout.m3676public(view);
            int size = m3676public.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    appBarLayout = null;
                    break;
                }
                View view2 = (View) m3676public.get(i);
                if (view2 instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view2;
                    break;
                }
                i++;
            }
            if (appBarLayout != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = ((HeaderScrollingViewBehavior) this).f10458do;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    appBarLayout.m5618break(false, !z, true);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.g);
            this.f10461try = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$do, reason: invalid class name */
    public class Cdo implements InterfaceC0136Bv {
        public Cdo() {
        }

        @Override // defpackage.InterfaceC0136Bv
        /* renamed from: for */
        public final C3150jM mo137for(View view, C3150jM c3150jM) {
            AppBarLayout appBarLayout = AppBarLayout.this;
            appBarLayout.getClass();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            C3150jM c3150jM2 = appBarLayout.getFitsSystemWindows() ? c3150jM : null;
            if (!Objects.equals(appBarLayout.f10379do, c3150jM2)) {
                appBarLayout.f10379do = c3150jM2;
                appBarLayout.setWillNotDraw(!(appBarLayout.f10377do != null && appBarLayout.m5619case() > 0));
                appBarLayout.requestLayout();
            }
            return c3150jM;
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$for, reason: invalid class name */
    public static abstract class Cfor {
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$if, reason: invalid class name */
    public interface Cif<T extends AppBarLayout> {
        /* renamed from: do, reason: not valid java name */
        void mo5647do(int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$new, reason: invalid class name */
    public static class Cnew extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Rect f10412do = new Rect();

        /* renamed from: if, reason: not valid java name */
        public final Rect f10413if = new Rect();
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do, reason: not valid java name */
        void m5648do();
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    /* renamed from: do, reason: not valid java name */
    public static LayoutParams m5617do(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new LayoutParams((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5618break(boolean z, boolean z2, boolean z3) {
        this.f10385else = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    /* renamed from: case, reason: not valid java name */
    public final int m5619case() {
        C3150jM c3150jM = this.f10379do;
        if (c3150jM != null) {
            return c3150jM.m7063try();
        }
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m5620catch(boolean z) {
        if (this.f10387for == z) {
            return false;
        }
        this.f10387for = z;
        refreshDrawableState();
        if (getBackground() instanceof C0716as) {
            if (this.f10394try) {
                m5624final(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
            } else if (this.f10392new) {
                float f = this.f10372do;
                m5624final(z ? 0.0f : f, z ? f : 0.0f);
            }
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m5621class(View view) {
        int i;
        if (this.f10381do == null && (i = this.f10388goto) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(i);
            }
            if (findViewById != null) {
                this.f10381do = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.f10381do;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m5622const() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8) {
            return false;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return !childAt.getFitsSystemWindows();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f10377do != null && m5619case() > 0) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f10386for);
            this.f10377do.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f10377do;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final int m5623else() {
        int i = this.f10391new;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f10408do;
                if ((i4 & 1) == 0) {
                    break;
                }
                int i5 = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i3;
                if (i2 == 0) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    if (childAt.getFitsSystemWindows()) {
                        i5 -= m5619case();
                    }
                }
                i3 = i5;
                if ((i4 & 2) != 0) {
                    WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                    i3 -= childAt.getMinimumHeight();
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f10391new = max;
        return max;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5624final(float f, float f2) {
        ValueAnimator valueAnimator = this.f10376do;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.f10376do = ofFloat;
        ofFloat.setDuration(this.f10373do);
        this.f10376do.setInterpolator(this.f10374do);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f10375do;
        if (animatorUpdateListener != null) {
            this.f10376do.addUpdateListener(animatorUpdateListener);
        }
        this.f10376do.start();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Cif
    /* renamed from: for */
    public final CoordinatorLayout.Behavior<AppBarLayout> mo3699for() {
        Behavior behavior = new Behavior();
        this.f10378do = behavior;
        return behavior;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m5617do(layoutParams);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5625goto() {
        Behavior behavior = this.f10378do;
        BaseBehavior.SavedState m5637implements = (behavior == null || this.f10391new == -1 || this.f10385else != 0) ? null : behavior.m5637implements(AbsSavedState.f6567do, this);
        this.f10391new = -1;
        this.f10393try = -1;
        this.f10371case = -1;
        if (m5637implements != null) {
            Behavior behavior2 = this.f10378do;
            if (((BaseBehavior) behavior2).f10396do != null) {
                return;
            }
            ((BaseBehavior) behavior2).f10396do = m5637implements;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5626if() {
        /*
            r9 = this;
            int r0 = r9.f10393try
            r1 = -1
            if (r0 == r1) goto L6
            return r0
        L6:
            int r0 = r9.getChildCount()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = 0
        Le:
            if (r0 < 0) goto L69
            android.view.View r3 = r9.getChildAt(r0)
            int r4 = r3.getVisibility()
            r5 = 8
            if (r4 != r5) goto L1d
            goto L66
        L1d:
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r4 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r4
            int r5 = r3.getMeasuredHeight()
            int r6 = r4.f10408do
            r7 = r6 & 5
            r8 = 5
            if (r7 != r8) goto L63
            int r7 = r4.topMargin
            int r4 = r4.bottomMargin
            int r7 = r7 + r4
            r4 = r6 & 8
            if (r4 == 0) goto L3f
            java.util.WeakHashMap<android.view.View, nL> r4 = defpackage.QK.f2909do
            int r4 = r3.getMinimumHeight()
        L3d:
            int r4 = r4 + r7
            goto L4e
        L3f:
            r4 = r6 & 2
            if (r4 == 0) goto L4c
            java.util.WeakHashMap<android.view.View, nL> r4 = defpackage.QK.f2909do
            int r4 = r3.getMinimumHeight()
            int r4 = r5 - r4
            goto L3d
        L4c:
            int r4 = r7 + r5
        L4e:
            if (r0 != 0) goto L61
            java.util.WeakHashMap<android.view.View, nL> r6 = defpackage.QK.f2909do
            boolean r3 = r3.getFitsSystemWindows()
            if (r3 == 0) goto L61
            int r3 = r9.m5619case()
            int r5 = r5 - r3
            int r4 = java.lang.Math.min(r4, r5)
        L61:
            int r2 = r2 + r4
            goto L66
        L63:
            if (r2 <= 0) goto L66
            goto L69
        L66:
            int r0 = r0 + (-1)
            goto Le
        L69:
            int r0 = java.lang.Math.max(r1, r2)
            r9.f10393try = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.m5626if():int");
    }

    /* renamed from: new, reason: not valid java name */
    public final int m5627new() {
        int i = this.f10371case;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
                int i4 = layoutParams.f10408do;
                if ((i4 & 1) == 0) {
                    break;
                }
                i3 += measuredHeight;
                if ((i4 & 2) != 0) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    i3 -= childAt.getMinimumHeight();
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f10371case = max;
        return max;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.f10384do == null) {
            this.f10384do = new int[4];
        }
        int[] iArr = this.f10384do;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f10390if;
        iArr[0] = z ? R.attr.state_liftable : -2130904027;
        iArr[1] = (z && this.f10387for) ? R.attr.state_lifted : -2130904028;
        iArr[2] = z ? R.attr.state_collapsible : -2130904023;
        iArr[3] = (z && this.f10387for) ? R.attr.state_collapsed : -2130904022;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference<View> weakReference = this.f10381do;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f10381do = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z3 = true;
        if (getFitsSystemWindows() && m5622const()) {
            int m5619case = m5619case();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                QK.m1850const(getChildAt(childCount), m5619case);
            }
        }
        m5625goto();
        this.f10383do = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).f10409do != null) {
                this.f10383do = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.f10377do;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), m5619case());
        }
        if (!this.f10392new) {
            int childCount3 = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount3) {
                    z2 = false;
                    break;
                }
                int i7 = ((LayoutParams) getChildAt(i6).getLayoutParams()).f10408do;
                if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                    z2 = true;
                    break;
                }
                i6++;
            }
            if (!z2) {
                z3 = false;
            }
        }
        if (this.f10390if != z3) {
            this.f10390if = z3;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (getFitsSystemWindows() && m5622const()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = C0315Kc.m1182throw(m5619case() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                } else if (mode == 0) {
                    measuredHeight += m5619case();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        m5625goto();
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        O4.m1619protected(this, f);
    }

    @Override // android.widget.LinearLayout
    public final void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f10377do;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5628this(int i) {
        this.f10386for = i;
        if (!willNotDraw()) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
        ArrayList arrayList = this.f10382do;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Cif cif = (Cif) this.f10382do.get(i2);
                if (cif != null) {
                    cif.mo5647do(i);
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final int m5629try() {
        int m5619case = m5619case();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + m5619case;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f10377do;
    }

    public AppBarLayout(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Design_AppBarLayout), attributeSet, i);
        final Integer num;
        this.f10391new = -1;
        this.f10393try = -1;
        this.f10371case = -1;
        boolean z = false;
        this.f10385else = 0;
        this.f10389if = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i2 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context3, attributeSet, CL.f361do, i, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (m3115new.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, m3115new.getResourceId(0, 0)));
            }
            m3115new.recycle();
            TypedArray m3115new2 = C0682aH.m3115new(context2, attributeSet, O2.f2482do, i, R.style.Widget_Design_AppBarLayout, new int[0]);
            Drawable drawable = m3115new2.getDrawable(0);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setBackground(drawable);
            final ColorStateList m3071if = C0659Zr.m3071if(context2, m3115new2, 6);
            this.f10394try = m3071if != null;
            final ColorStateList m2176new = C0492Se.m2176new(getBackground());
            Integer num2 = null;
            if (m2176new != null) {
                final C0716as c0716as = new C0716as();
                c0716as.m4778super(m2176new);
                if (m3071if != null) {
                    Context context4 = getContext();
                    TypedValue m304do = C0154Cr.m304do(context4, R.attr.colorSurface);
                    if (m304do != null) {
                        int i3 = m304do.resourceId;
                        num = Integer.valueOf(i3 != 0 ? C0466Ra.getColor(context4, i3) : m304do.data);
                    } else {
                        num = null;
                    }
                    this.f10375do = new ValueAnimator.AnimatorUpdateListener() { // from class: r1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            Integer num3;
                            int i4 = AppBarLayout.f10370this;
                            AppBarLayout appBarLayout = AppBarLayout.this;
                            appBarLayout.getClass();
                            int m1581catch = O2.m1581catch(((Float) valueAnimator.getAnimatedValue()).floatValue(), m2176new.getDefaultColor(), m3071if.getDefaultColor());
                            ColorStateList valueOf = ColorStateList.valueOf(m1581catch);
                            C0716as c0716as2 = c0716as;
                            c0716as2.m4778super(valueOf);
                            if (appBarLayout.f10377do != null && (num3 = appBarLayout.f10380do) != null && num3.equals(num)) {
                                C0426Pe.Cdo.m1785else(appBarLayout.f10377do, m1581catch);
                            }
                            ArrayList arrayList = appBarLayout.f10389if;
                            if (arrayList.isEmpty()) {
                                return;
                            }
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                AppBarLayout.Ctry ctry = (AppBarLayout.Ctry) it.next();
                                if (c0716as2.f8253do.f8274do != null) {
                                    ctry.m5648do();
                                }
                            }
                        }
                    };
                    setBackground(c0716as);
                } else {
                    c0716as.m4766class(context2);
                    this.f10375do = new ValueAnimator.AnimatorUpdateListener() { // from class: s1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            int i4 = AppBarLayout.f10370this;
                            AppBarLayout appBarLayout = AppBarLayout.this;
                            appBarLayout.getClass();
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            c0716as.m4770final(floatValue);
                            Drawable drawable2 = appBarLayout.f10377do;
                            if (drawable2 instanceof C0716as) {
                                ((C0716as) drawable2).m4770final(floatValue);
                            }
                            Iterator it = appBarLayout.f10389if.iterator();
                            while (it.hasNext()) {
                                ((AppBarLayout.Ctry) it.next()).m5648do();
                            }
                        }
                    };
                    setBackground(c0716as);
                }
            }
            this.f10373do = C0222Ft.m649for(context2, R.attr.motionDurationMedium2, getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
            this.f10374do = C0222Ft.m651new(context2, R.attr.motionEasingStandardInterpolator, C2785g1.f13028do);
            if (m3115new2.hasValue(4)) {
                m5618break(m3115new2.getBoolean(4, false), false, false);
            }
            if (m3115new2.hasValue(3)) {
                CL.m262do(this, m3115new2.getDimensionPixelSize(3, 0));
            }
            if (i2 >= 26) {
                if (m3115new2.hasValue(2)) {
                    setKeyboardNavigationCluster(m3115new2.getBoolean(2, false));
                }
                if (m3115new2.hasValue(1)) {
                    setTouchscreenBlocksFocus(m3115new2.getBoolean(1, false));
                }
            }
            this.f10372do = getResources().getDimension(R.dimen.design_appbar_elevation);
            this.f10392new = m3115new2.getBoolean(5, false);
            this.f10388goto = m3115new2.getResourceId(7, -1);
            Drawable drawable2 = m3115new2.getDrawable(8);
            Drawable drawable3 = this.f10377do;
            if (drawable3 != drawable2) {
                if (drawable3 != null) {
                    drawable3.setCallback(null);
                }
                Drawable mutate = drawable2 != null ? drawable2.mutate() : null;
                this.f10377do = mutate;
                if (mutate instanceof C0716as) {
                    num2 = Integer.valueOf(((C0716as) mutate).f8260for);
                } else {
                    ColorStateList m2176new2 = C0492Se.m2176new(mutate);
                    if (m2176new2 != null) {
                        num2 = Integer.valueOf(m2176new2.getDefaultColor());
                    }
                }
                this.f10380do = num2;
                Drawable drawable4 = this.f10377do;
                if (drawable4 != null) {
                    if (drawable4.isStateful()) {
                        this.f10377do.setState(getDrawableState());
                    }
                    C0426Pe.m1778for(this.f10377do, getLayoutDirection());
                    this.f10377do.setVisible(getVisibility() == 0, false);
                    this.f10377do.setCallback(this);
                }
                if (this.f10377do != null && m5619case() > 0) {
                    z = true;
                }
                setWillNotDraw(!z);
                postInvalidateOnAnimation();
            }
            m3115new2.recycle();
            QK.Cnew.m1935return(this, new Cdo());
        } catch (Throwable th) {
            m3115new.recycle();
            throw th;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m5617do(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        public int f10408do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Interpolator f10409do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnew f10410do;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10408do = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2495if);
            this.f10408do = obtainStyledAttributes.getInt(1, 0);
            this.f10410do = obtainStyledAttributes.getInt(0, 0) != 1 ? null : new Cnew();
            if (obtainStyledAttributes.hasValue(2)) {
                this.f10409do = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(2, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams() {
            super(-1, -2);
            this.f10408do = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10408do = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f10408do = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10408do = 1;
        }
    }
}
