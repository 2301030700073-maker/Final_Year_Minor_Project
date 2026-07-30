package com.google.android.material.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0176Dr;
import defpackage.B4;
import defpackage.C0166Dh;
import defpackage.C0264Hr;
import defpackage.C0286Ir;
import defpackage.C0315Kc;
import defpackage.C0655Zn;
import defpackage.C0659Zr;
import defpackage.C0716as;
import defpackage.C2785g1;
import defpackage.C2924iM;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.InterfaceC0198Er;
import defpackage.M5;
import defpackage.N5;
import defpackage.O2;
import defpackage.O5;
import defpackage.QK;
import defpackage.V1;
import defpackage.VK;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements InterfaceC0198Er {

    /* renamed from: break, reason: not valid java name */
    public int f10585break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public final boolean f10586break;

    /* renamed from: case, reason: not valid java name */
    public int f10587case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final boolean f10588case;

    /* renamed from: catch, reason: not valid java name */
    public int f10589catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public final boolean f10590catch;

    /* renamed from: class, reason: not valid java name */
    public int f10591class;

    /* renamed from: class, reason: not valid java name and collision with other field name */
    public boolean f10592class;

    /* renamed from: const, reason: not valid java name */
    public int f10593const;

    /* renamed from: const, reason: not valid java name and collision with other field name */
    public boolean f10594const;

    /* renamed from: do, reason: not valid java name */
    public final float f10595do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0286Ir f10596do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VK f10597do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f10598do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f10599do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseIntArray f10600do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f10601do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f10602do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f10603do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BottomSheetBehavior<V>.Ctry f10604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<V> f10605do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cnew> f10606do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashMap f10607do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3554qD f10608do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10609do;

    /* renamed from: else, reason: not valid java name */
    public final int f10610else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public final boolean f10611else;

    /* renamed from: final, reason: not valid java name */
    public int f10612final;

    /* renamed from: final, reason: not valid java name and collision with other field name */
    public boolean f10613final;

    /* renamed from: for, reason: not valid java name */
    public final float f10614for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f10615for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public WeakReference<View> f10616for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10617for;

    /* renamed from: goto, reason: not valid java name */
    public int f10618goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public final boolean f10619goto;

    /* renamed from: if, reason: not valid java name */
    public float f10620if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public WeakReference<View> f10621if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10622if;

    /* renamed from: import, reason: not valid java name */
    public int f10623import;

    /* renamed from: import, reason: not valid java name and collision with other field name */
    public boolean f10624import;

    /* renamed from: native, reason: not valid java name */
    public int f10625native;

    /* renamed from: new, reason: not valid java name */
    public final float f10626new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f10627new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f10628new;

    /* renamed from: public, reason: not valid java name */
    public int f10629public;

    /* renamed from: return, reason: not valid java name */
    public int f10630return;

    /* renamed from: static, reason: not valid java name */
    public int f10631static;

    /* renamed from: super, reason: not valid java name */
    public int f10632super;

    /* renamed from: super, reason: not valid java name and collision with other field name */
    public boolean f10633super;

    /* renamed from: switch, reason: not valid java name */
    public int f10634switch;

    /* renamed from: this, reason: not valid java name */
    public int f10635this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public final boolean f10636this;

    /* renamed from: throw, reason: not valid java name */
    public int f10637throw;

    /* renamed from: throw, reason: not valid java name and collision with other field name */
    public boolean f10638throw;

    /* renamed from: try, reason: not valid java name */
    public int f10639try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f10640try;

    /* renamed from: while, reason: not valid java name */
    public int f10641while;

    /* renamed from: while, reason: not valid java name and collision with other field name */
    public boolean f10642while;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f10648do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f10650for;

        public Cdo(View view, int i) {
            this.f10648do = view;
            this.f10650for = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BottomSheetBehavior.this.m5688instanceof(this.f10648do, false, this.f10650for);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$for, reason: invalid class name */
    public class Cfor extends VK.Cfor {
        public Cfor() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
        
            if (java.lang.Math.abs(r5.getTop() - r1.m5682abstract()) < java.lang.Math.abs(r5.getTop() - r1.f10632super)) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0099, code lost:
        
            if (java.lang.Math.abs(r6 - r1.f10632super) < java.lang.Math.abs(r6 - r1.f10637throw)) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
        
            if (java.lang.Math.abs(r6 - r1.f10612final) < java.lang.Math.abs(r6 - r1.f10637throw)) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00c2, code lost:
        
            if (r6 < java.lang.Math.abs(r6 - r1.f10637throw)) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00d3, code lost:
        
            if (java.lang.Math.abs(r6 - r7) < java.lang.Math.abs(r6 - r1.f10637throw)) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        
            if (r6 > r1.f10632super) goto L53;
         */
        @Override // defpackage.VK.Cfor
        /* renamed from: break */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo2618break(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = 1
                com.google.android.material.bottomsheet.BottomSheetBehavior r1 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r2 = 0
                int r3 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
                if (r3 >= 0) goto L1b
                boolean r6 = r1.f10609do
                if (r6 == 0) goto Le
                goto Lc4
            Le:
                int r6 = r5.getTop()
                java.lang.System.currentTimeMillis()
                int r7 = r1.f10632super
                if (r6 <= r7) goto Lc4
                goto Ld5
            L1b:
                boolean r3 = r1.f10594const
                if (r3 == 0) goto L70
                boolean r3 = r1.m5687implements(r5, r7)
                if (r3 == 0) goto L70
                float r6 = java.lang.Math.abs(r6)
                float r2 = java.lang.Math.abs(r7)
                int r6 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
                if (r6 >= 0) goto L38
                int r6 = r1.f10627new
                float r6 = (float) r6
                int r6 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
                if (r6 > 0) goto L4c
            L38:
                int r6 = r5.getTop()
                int r7 = r1.f10630return
                int r2 = r1.m5682abstract()
                int r2 = r2 + r7
                int r2 = r2 / 2
                if (r6 <= r2) goto L49
                r6 = 1
                goto L4a
            L49:
                r6 = 0
            L4a:
                if (r6 == 0) goto L4f
            L4c:
                r6 = 5
                goto Ld8
            L4f:
                boolean r6 = r1.f10609do
                if (r6 == 0) goto L55
                goto Lc4
            L55:
                int r6 = r5.getTop()
                int r7 = r1.m5682abstract()
                int r6 = r6 - r7
                int r6 = java.lang.Math.abs(r6)
                int r7 = r5.getTop()
                int r2 = r1.f10632super
                int r7 = r7 - r2
                int r7 = java.lang.Math.abs(r7)
                if (r6 >= r7) goto Ld5
                goto Lc4
            L70:
                int r2 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
                if (r2 == 0) goto L9c
                float r6 = java.lang.Math.abs(r6)
                float r7 = java.lang.Math.abs(r7)
                int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
                if (r6 <= 0) goto L81
                goto L9c
            L81:
                boolean r6 = r1.f10609do
                if (r6 == 0) goto L86
                goto Ld7
            L86:
                int r6 = r5.getTop()
                int r7 = r1.f10632super
                int r7 = r6 - r7
                int r7 = java.lang.Math.abs(r7)
                int r2 = r1.f10637throw
                int r6 = r6 - r2
                int r6 = java.lang.Math.abs(r6)
                if (r7 >= r6) goto Ld7
                goto Ld5
            L9c:
                int r6 = r5.getTop()
                boolean r7 = r1.f10609do
                if (r7 == 0) goto Lb6
                int r7 = r1.f10612final
                int r7 = r6 - r7
                int r7 = java.lang.Math.abs(r7)
                int r2 = r1.f10637throw
                int r6 = r6 - r2
                int r6 = java.lang.Math.abs(r6)
                if (r7 >= r6) goto Ld7
                goto Lc4
            Lb6:
                int r7 = r1.f10632super
                if (r6 >= r7) goto Lc6
                int r7 = r1.f10637throw
                int r7 = r6 - r7
                int r7 = java.lang.Math.abs(r7)
                if (r6 >= r7) goto Ld5
            Lc4:
                r6 = 3
                goto Ld8
            Lc6:
                int r7 = r6 - r7
                int r7 = java.lang.Math.abs(r7)
                int r2 = r1.f10637throw
                int r6 = r6 - r2
                int r6 = java.lang.Math.abs(r6)
                if (r7 >= r6) goto Ld7
            Ld5:
                r6 = 6
                goto Ld8
            Ld7:
                r6 = 4
            Ld8:
                r1.getClass()
                r1.m5688instanceof(r5, r0, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.Cfor.mo2618break(android.view.View, float, float):void");
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: catch */
        public final boolean mo2620catch(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f10641while;
            if (i2 == 1 || bottomSheetBehavior.f10624import) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.f10631static == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.f10616for;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            System.currentTimeMillis();
            WeakReference<V> weakReference2 = bottomSheetBehavior.f10605do;
            return weakReference2 != null && weakReference2.get() == view;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: do */
        public final int mo2621do(View view, int i) {
            return view.getLeft();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: goto */
        public final void mo2624goto(int i) {
            if (i == 1) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.f10633super) {
                    bottomSheetBehavior.m5696transient(1);
                }
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: if */
        public final int mo2625if(View view, int i) {
            return C0315Kc.m1182throw(i, BottomSheetBehavior.this.m5682abstract(), mo2626new());
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: new */
        public final int mo2626new() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f10594const ? bottomSheetBehavior.f10630return : bottomSheetBehavior.f10637throw;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: this */
        public final void mo2627this(View view, int i, int i2) {
            BottomSheetBehavior.this.m5686finally(i2);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            bottomSheetBehavior.m5696transient(5);
            WeakReference<V> weakReference = bottomSheetBehavior.f10605do;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            bottomSheetBehavior.f10605do.get().requestLayout();
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$new, reason: invalid class name */
    public static abstract class Cnew {
        /* renamed from: do, reason: not valid java name */
        public abstract void mo5698do();

        /* renamed from: if, reason: not valid java name */
        public abstract void mo5699if(int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$try, reason: invalid class name */
    public class Ctry {

        /* renamed from: do, reason: not valid java name */
        public int f10653do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f10654do = new Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f10656do;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$try$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                Ctry ctry = Ctry.this;
                ctry.f10656do = false;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                VK vk = bottomSheetBehavior.f10597do;
                if (vk != null && vk.m2606goto()) {
                    ctry.m5700do(ctry.f10653do);
                } else if (bottomSheetBehavior.f10641while == 2) {
                    bottomSheetBehavior.m5696transient(ctry.f10653do);
                }
            }
        }

        public Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5700do(int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            WeakReference<V> weakReference = bottomSheetBehavior.f10605do;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f10653do = i;
            if (this.f10656do) {
                return;
            }
            V v = bottomSheetBehavior.f10605do.get();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            v.postOnAnimation(this.f10654do);
            this.f10656do = true;
        }
    }

    public BottomSheetBehavior() {
        this.f10615for = 0;
        this.f10609do = true;
        this.f10618goto = -1;
        this.f10635this = -1;
        this.f10604do = new Ctry();
        this.f10620if = 0.5f;
        this.f10614for = -1.0f;
        this.f10633super = true;
        this.f10641while = 4;
        this.f10626new = 0.1f;
        this.f10606do = new ArrayList<>();
        this.f10634switch = -1;
        this.f10600do = new SparseIntArray();
        this.f10603do = new Cfor();
    }

    /* renamed from: package, reason: not valid java name */
    public static View m5681package(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (QK.Cnew.m1940throw(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View m5681package = m5681package(viewGroup.getChildAt(i));
                if (m5681package != null) {
                    return m5681package;
                }
            }
        }
        return null;
    }

    public final void a() {
        WeakReference<V> weakReference = this.f10605do;
        if (weakReference != null) {
            m5694synchronized(weakReference.get(), 0);
        }
        WeakReference<View> weakReference2 = this.f10621if;
        if (weakReference2 != null) {
            m5694synchronized(weakReference2.get(), 1);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public final int m5682abstract() {
        if (this.f10609do) {
            return this.f10612final;
        }
        return Math.max(this.f10593const, this.f10611else ? 0 : this.f10591class);
    }

    public final void b(int i, boolean z) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z2 = this.f10641while == 3 && (this.f10590catch || m5692strictfp());
        if (this.f10592class == z2 || this.f10602do == null) {
            return;
        }
        this.f10592class = z2;
        if (!z || (valueAnimator = this.f10598do) == null) {
            ValueAnimator valueAnimator2 = this.f10598do;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f10598do.cancel();
            }
            this.f10602do.m4781throw(this.f10592class ? m5695throws() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.f10598do.reverse();
        } else {
            this.f10598do.setFloatValues(this.f10602do.f8253do.f8283if, z2 ? m5695throws() : 1.0f);
            this.f10598do.start();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: break */
    public final void mo3681break() {
        this.f10605do = null;
        this.f10597do = null;
        this.f10596do = null;
    }

    public final void c(boolean z) {
        WeakReference<V> weakReference = this.f10605do;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f10607do != null) {
                    return;
                } else {
                    this.f10607do = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.f10605do.get() && z) {
                    this.f10607do.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.f10607do = null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: catch */
    public final boolean mo3683catch(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int i;
        VK vk;
        if (!v.isShown() || !this.f10633super) {
            this.f10638throw = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f10631static = -1;
            this.f10634switch = -1;
            VelocityTracker velocityTracker = this.f10601do;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f10601do = null;
            }
        }
        if (this.f10601do == null) {
            this.f10601do = VelocityTracker.obtain();
        }
        this.f10601do.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f10634switch = (int) motionEvent.getY();
            if (this.f10641while != 2) {
                WeakReference<View> weakReference = this.f10616for;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m3680throws(view, x, this.f10634switch)) {
                    this.f10631static = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f10624import = true;
                }
            }
            this.f10638throw = this.f10631static == -1 && !coordinatorLayout.m3680throws(v, x, this.f10634switch);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f10624import = false;
            this.f10631static = -1;
            if (this.f10638throw) {
                this.f10638throw = false;
                return false;
            }
        }
        if (!this.f10638throw && (vk = this.f10597do) != null && vk.m2611public(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f10616for;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.f10638throw || this.f10641while == 1 || coordinatorLayout.m3680throws(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f10597do == null || (i = this.f10634switch) == -1 || Math.abs(((float) i) - motionEvent.getY()) <= ((float) this.f10597do.f4101if)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public final boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (coordinatorLayout.getFitsSystemWindows() && !v.getFitsSystemWindows()) {
            v.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.f10605do == null) {
            this.f10587case = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            int i3 = Build.VERSION.SDK_INT;
            boolean z = (i3 < 29 || this.f10617for || this.f10622if) ? false : true;
            if (this.f10628new || this.f10640try || this.f10588case || this.f10619goto || this.f10636this || this.f10586break || z) {
                C3738tL.m8285if(v, new N5(this, z));
            }
            C0655Zn c0655Zn = new C0655Zn(v);
            if (i3 >= 30) {
                v.setWindowInsetsAnimationCallback(new C2924iM.Cnew.Cdo(c0655Zn));
            } else {
                PathInterpolator pathInterpolator = C2924iM.Cfor.f13471do;
                Object tag = v.getTag(R.id.tag_on_apply_window_listener);
                View.OnApplyWindowInsetsListener cdo = new C2924iM.Cfor.Cdo(v, c0655Zn);
                v.setTag(R.id.tag_window_insets_animation_callback, cdo);
                if (tag == null) {
                    v.setOnApplyWindowInsetsListener(cdo);
                }
            }
            this.f10605do = new WeakReference<>(v);
            this.f10596do = new C0286Ir(v);
            Drawable drawable = this.f10602do;
            if (drawable != null) {
                v.setBackground(drawable);
                C0716as c0716as = this.f10602do;
                float f = this.f10614for;
                if (f == -1.0f) {
                    f = QK.Cnew.m1939this(v);
                }
                c0716as.m4770final(f);
            } else {
                ColorStateList colorStateList = this.f10599do;
                if (colorStateList != null) {
                    QK.m1861return(v, colorStateList);
                }
            }
            a();
            if (v.getImportantForAccessibility() == 0) {
                v.setImportantForAccessibility(1);
            }
        }
        if (this.f10597do == null) {
            this.f10597do = new VK(coordinatorLayout.getContext(), coordinatorLayout, this.f10603do);
        }
        int top = v.getTop();
        coordinatorLayout.m3670extends(v, i);
        this.f10629public = coordinatorLayout.getWidth();
        this.f10630return = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f10625native = height;
        int i4 = this.f10630return;
        int i5 = i4 - height;
        int i6 = this.f10591class;
        if (i5 < i6) {
            if (this.f10611else) {
                int i7 = this.f10635this;
                if (i7 != -1) {
                    i4 = Math.min(i4, i7);
                }
                this.f10625native = i4;
            } else {
                int i8 = i4 - i6;
                int i9 = this.f10635this;
                if (i9 != -1) {
                    i8 = Math.min(i8, i9);
                }
                this.f10625native = i8;
            }
        }
        this.f10612final = Math.max(0, this.f10630return - this.f10625native);
        this.f10632super = (int) ((1.0f - this.f10620if) * this.f10630return);
        m5693switch();
        int i10 = this.f10641while;
        if (i10 == 3) {
            QK.m1850const(v, m5682abstract());
        } else if (i10 == 6) {
            QK.m1850const(v, this.f10632super);
        } else if (this.f10594const && i10 == 5) {
            QK.m1850const(v, this.f10630return);
        } else if (i10 == 4) {
            QK.m1850const(v, this.f10637throw);
        } else if (i10 == 1 || i10 == 2) {
            QK.m1850const(v, top - v.getTop());
        }
        b(this.f10641while, false);
        this.f10616for = new WeakReference<>(m5681package(v));
        while (true) {
            ArrayList<Cnew> arrayList = this.f10606do;
            if (i2 >= arrayList.size()) {
                return true;
            }
            arrayList.get(i2).getClass();
            i2++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: const */
    public final boolean mo3685const(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(m5690private(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.f10618goto, marginLayoutParams.width), m5690private(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, this.f10635this, marginLayoutParams.height));
        return true;
    }

    /* renamed from: continue, reason: not valid java name */
    public final int m5683continue(int i) {
        if (i == 3) {
            return m5682abstract();
        }
        if (i == 4) {
            return this.f10637throw;
        }
        if (i == 5) {
            return this.f10630return;
        }
        if (i == 6) {
            return this.f10632super;
        }
        throw new IllegalArgumentException(V1.m2494case("Invalid state to get top offset: ", i));
    }

    public final void d() {
        V v;
        if (this.f10605do != null) {
            m5693switch();
            if (this.f10641while != 4 || (v = this.f10605do.get()) == null) {
                return;
            }
            v.requestLayout();
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final int m5684default() {
        int i;
        return this.f10622if ? Math.min(Math.max(this.f10587case, this.f10630return - ((this.f10629public * 9) / 16)), this.f10625native) + this.f10589catch : (this.f10617for || this.f10628new || (i = this.f10585break) <= 0) ? this.f10639try + this.f10589catch : Math.max(this.f10639try, i + this.f10610else);
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: do */
    public final void mo504do(B4 b4) {
        C0286Ir c0286Ir = this.f10596do;
        if (c0286Ir == null) {
            return;
        }
        ((AbstractC0176Dr) c0286Ir).f689do = b4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: else */
    public final void mo3686else(CoordinatorLayout.Ctry ctry) {
        this.f10605do = null;
        this.f10597do = null;
        this.f10596do = null;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m5685extends(View view, int i) {
        if (view == null) {
            return;
        }
        QK.m1865throw(view, 524288);
        QK.m1848catch(view, 0);
        QK.m1865throw(view, 262144);
        QK.m1848catch(view, 0);
        QK.m1865throw(view, 1048576);
        QK.m1848catch(view, 0);
        SparseIntArray sparseIntArray = this.f10600do;
        int i2 = sparseIntArray.get(i, -1);
        if (i2 != -1) {
            QK.m1865throw(view, i2);
            QK.m1848catch(view, 0);
            sparseIntArray.delete(i);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: final */
    public final boolean mo3687final(View view) {
        WeakReference<View> weakReference = this.f10616for;
        return (weakReference == null || view != weakReference.get() || this.f10641while == 3) ? false : true;
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m5686finally(int i) {
        if (this.f10605do.get() != null) {
            ArrayList<Cnew> arrayList = this.f10606do;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.f10637throw;
            if (i <= i2 && i2 != m5682abstract()) {
                m5682abstract();
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                arrayList.get(i3).mo5698do();
            }
        }
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: if */
    public final void mo505if() {
        C0286Ir c0286Ir = this.f10596do;
        if (c0286Ir == null) {
            return;
        }
        B4 b4 = ((AbstractC0176Dr) c0286Ir).f689do;
        ((AbstractC0176Dr) c0286Ir).f689do = null;
        if (b4 == null || Build.VERSION.SDK_INT < 34) {
            m5691protected(this.f10594const ? 5 : 4);
            return;
        }
        boolean z = this.f10594const;
        int i = ((AbstractC0176Dr) c0286Ir).f693if;
        int i2 = ((AbstractC0176Dr) c0286Ir).f688do;
        float f = b4.f200for;
        if (!z) {
            AnimatorSet m974do = c0286Ir.m974do();
            m974do.setDuration(C2785g1.m6710if(f, i2, i));
            m974do.start();
            m5691protected(4);
            return;
        }
        Cif cif = new Cif();
        V v = ((AbstractC0176Dr) c0286Ir).f691do;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(v, (Property<V, Float>) View.TRANSLATION_Y, v.getScaleY() * v.getHeight());
        ofFloat.setInterpolator(new C0166Dh());
        ofFloat.setDuration(C2785g1.m6710if(f, i2, i));
        ofFloat.addListener(new C0264Hr(c0286Ir));
        ofFloat.addListener(cif);
        ofFloat.start();
    }

    /* renamed from: implements, reason: not valid java name */
    public final boolean m5687implements(View view, float f) {
        if (this.f10613final) {
            return true;
        }
        if (view.getTop() < this.f10637throw) {
            return false;
        }
        return Math.abs(((f * this.f10626new) + ((float) view.getTop())) - ((float) this.f10637throw)) / ((float) m5684default()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: import */
    public final void mo3690import(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.f10615for;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f10639try = savedState.f10647new;
            }
            if (i == -1 || (i & 2) == 2) {
                this.f10609do = savedState.f10643do;
            }
            if (i == -1 || (i & 4) == 4) {
                this.f10594const = savedState.f10646if;
            }
            if (i == -1 || (i & 8) == 8) {
                this.f10613final = savedState.f10645for;
            }
        }
        int i2 = savedState.f10644for;
        if (i2 == 1 || i2 == 2) {
            this.f10641while = 4;
        } else {
            this.f10641while = i2;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m5688instanceof(View view, boolean z, int i) {
        int m5683continue = m5683continue(i);
        VK vk = this.f10597do;
        if (!(vk != null && (!z ? !vk.m2612return(view, view.getLeft(), m5683continue) : !vk.m2609native(view.getLeft(), m5683continue)))) {
            m5696transient(i);
            return;
        }
        m5696transient(2);
        b(i, true);
        this.f10604do.m5700do(i);
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m5689interface(int i) {
        boolean z = false;
        if (i == -1) {
            if (!this.f10622if) {
                this.f10622if = true;
                z = true;
            }
        } else if (this.f10622if || this.f10639try != i) {
            this.f10622if = false;
            this.f10639try = Math.max(0, i);
            z = true;
        }
        if (z) {
            d();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: native */
    public final Parcelable mo3691native(View view) {
        return new SavedState(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: new */
    public final void mo506new() {
        C0286Ir c0286Ir = this.f10596do;
        if (c0286Ir == null) {
            return;
        }
        B4 b4 = ((AbstractC0176Dr) c0286Ir).f689do;
        ((AbstractC0176Dr) c0286Ir).f689do = null;
        if (b4 == null) {
            return;
        }
        AnimatorSet m974do = c0286Ir.m974do();
        m974do.setDuration(c0286Ir.f692for);
        m974do.start();
    }

    /* renamed from: private, reason: not valid java name */
    public final int m5690private(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004b, code lost:
    
        if (r5.isAttachedToWindow() != false) goto L33;
     */
    /* renamed from: protected, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5691protected(int r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 == r0) goto L5d
            r1 = 2
            if (r5 != r1) goto L7
            goto L5d
        L7:
            boolean r1 = r4.f10594const
            if (r1 != 0) goto Lf
            r1 = 5
            if (r5 != r1) goto Lf
            return
        Lf:
            r1 = 6
            if (r5 != r1) goto L20
            boolean r1 = r4.f10609do
            if (r1 == 0) goto L20
            int r1 = r4.m5683continue(r5)
            int r2 = r4.f10612final
            if (r1 > r2) goto L20
            r1 = 3
            goto L21
        L20:
            r1 = r5
        L21:
            java.lang.ref.WeakReference<V extends android.view.View> r2 = r4.f10605do
            if (r2 == 0) goto L59
            java.lang.Object r2 = r2.get()
            if (r2 != 0) goto L2c
            goto L59
        L2c:
            java.lang.ref.WeakReference<V extends android.view.View> r5 = r4.f10605do
            java.lang.Object r5 = r5.get()
            android.view.View r5 = (android.view.View) r5
            com.google.android.material.bottomsheet.BottomSheetBehavior$do r2 = new com.google.android.material.bottomsheet.BottomSheetBehavior$do
            r2.<init>(r5, r1)
            android.view.ViewParent r1 = r5.getParent()
            if (r1 == 0) goto L4e
            boolean r1 = r1.isLayoutRequested()
            if (r1 == 0) goto L4e
            java.util.WeakHashMap<android.view.View, nL> r1 = defpackage.QK.f2909do
            boolean r1 = r5.isAttachedToWindow()
            if (r1 == 0) goto L4e
            goto L4f
        L4e:
            r0 = 0
        L4f:
            if (r0 == 0) goto L55
            r5.post(r2)
            goto L5c
        L55:
            r2.run()
            goto L5c
        L59:
            r4.m5696transient(r5)
        L5c:
            return
        L5d:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "STATE_"
            r2.<init>(r3)
            if (r5 != r0) goto L6b
            java.lang.String r5 = "DRAGGING"
            goto L6d
        L6b:
            java.lang.String r5 = "SETTLING"
        L6d:
            java.lang.String r0 = " should not be set externally."
            java.lang.String r5 = defpackage.Creturn.m7984try(r2, r5, r0)
            r1.<init>(r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.m5691protected(int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: public */
    public final boolean mo3692public(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.f10623import = 0;
        this.f10642while = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r3.getTop() <= r1.f10632super) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        if (java.lang.Math.abs(r2 - r1.f10612final) < java.lang.Math.abs(r2 - r1.f10637throw)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        if (r2 < java.lang.Math.abs(r2 - r1.f10637throw)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008e, code lost:
    
        if (java.lang.Math.abs(r2 - r4) < java.lang.Math.abs(r2 - r1.f10637throw)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a9, code lost:
    
        if (java.lang.Math.abs(r2 - r1.f10632super) < java.lang.Math.abs(r2 - r1.f10637throw)) goto L50;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: return */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3693return(androidx.coordinatorlayout.widget.CoordinatorLayout r2, V r3, android.view.View r4, int r5) {
        /*
            r1 = this;
            int r2 = r3.getTop()
            int r5 = r1.m5682abstract()
            r0 = 3
            if (r2 != r5) goto Lf
            r1.m5696transient(r0)
            return
        Lf:
            java.lang.ref.WeakReference<android.view.View> r2 = r1.f10616for
            if (r2 == 0) goto Lb4
            java.lang.Object r2 = r2.get()
            if (r4 != r2) goto Lb4
            boolean r2 = r1.f10642while
            if (r2 != 0) goto L1f
            goto Lb4
        L1f:
            int r2 = r1.f10623import
            if (r2 <= 0) goto L33
            boolean r2 = r1.f10609do
            if (r2 == 0) goto L29
            goto Lae
        L29:
            int r2 = r3.getTop()
            int r4 = r1.f10632super
            if (r2 <= r4) goto Lae
            goto Lab
        L33:
            boolean r2 = r1.f10594const
            if (r2 == 0) goto L54
            android.view.VelocityTracker r2 = r1.f10601do
            if (r2 != 0) goto L3d
            r2 = 0
            goto L4c
        L3d:
            r4 = 1000(0x3e8, float:1.401E-42)
            float r5 = r1.f10595do
            r2.computeCurrentVelocity(r4, r5)
            android.view.VelocityTracker r2 = r1.f10601do
            int r4 = r1.f10631static
            float r2 = r2.getYVelocity(r4)
        L4c:
            boolean r2 = r1.m5687implements(r3, r2)
            if (r2 == 0) goto L54
            r0 = 5
            goto Lae
        L54:
            int r2 = r1.f10623import
            if (r2 != 0) goto L91
            int r2 = r3.getTop()
            boolean r4 = r1.f10609do
            if (r4 == 0) goto L72
            int r4 = r1.f10612final
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f10637throw
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lae
        L72:
            int r4 = r1.f10632super
            if (r2 >= r4) goto L81
            int r4 = r1.f10637throw
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            if (r2 >= r4) goto Lab
            goto Lae
        L81:
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f10637throw
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lab
        L91:
            boolean r2 = r1.f10609do
            if (r2 == 0) goto L96
            goto Lad
        L96:
            int r2 = r3.getTop()
            int r4 = r1.f10632super
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f10637throw
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
        Lab:
            r0 = 6
            goto Lae
        Lad:
            r0 = 4
        Lae:
            r2 = 0
            r1.m5688instanceof(r3, r2, r0)
            r1.f10642while = r2
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo3693return(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: static */
    public final boolean mo3694static(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = false;
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.f10641while;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        VK vk = this.f10597do;
        if (vk != null && (this.f10633super || i == 1)) {
            vk.m2601const(motionEvent);
        }
        if (actionMasked == 0) {
            this.f10631static = -1;
            this.f10634switch = -1;
            VelocityTracker velocityTracker = this.f10601do;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f10601do = null;
            }
        }
        if (this.f10601do == null) {
            this.f10601do = VelocityTracker.obtain();
        }
        this.f10601do.addMovement(motionEvent);
        if (this.f10597do != null && (this.f10633super || this.f10641while == 1)) {
            z = true;
        }
        if (z && actionMasked == 2 && !this.f10638throw) {
            float abs = Math.abs(this.f10634switch - motionEvent.getY());
            VK vk2 = this.f10597do;
            if (abs > vk2.f4101if) {
                vk2.m2605for(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f10638throw;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final boolean m5692strictfp() {
        WeakReference<V> weakReference = this.f10605do;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        this.f10605do.get().getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: super */
    public final void mo3695super(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f10616for;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m5682abstract()) {
                int m5682abstract = top - m5682abstract();
                iArr[1] = m5682abstract;
                QK.m1850const(v, -m5682abstract);
                m5696transient(3);
            } else {
                if (!this.f10633super) {
                    return;
                }
                iArr[1] = i2;
                QK.m1850const(v, -i2);
                m5696transient(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f10637throw;
            if (i4 > i5 && !this.f10594const) {
                int i6 = top - i5;
                iArr[1] = i6;
                QK.m1850const(v, -i6);
                m5696transient(4);
            } else {
                if (!this.f10633super) {
                    return;
                }
                iArr[1] = i2;
                QK.m1850const(v, -i2);
                m5696transient(1);
            }
        }
        m5686finally(v.getTop());
        this.f10623import = i2;
        this.f10642while = true;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m5693switch() {
        int m5684default = m5684default();
        if (this.f10609do) {
            this.f10637throw = Math.max(this.f10630return - m5684default, this.f10612final);
        } else {
            this.f10637throw = this.f10630return - m5684default;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m5694synchronized(View view, int i) {
        int i2;
        if (view == null) {
            return;
        }
        m5685extends(view, i);
        if (!this.f10609do && this.f10641while != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            O5 o5 = new O5(this, 6);
            ArrayList m1847case = QK.m1847case(view);
            int i3 = 0;
            while (true) {
                if (i3 >= m1847case.size()) {
                    int i4 = -1;
                    for (int i5 = 0; i5 < 32 && i4 == -1; i5++) {
                        int i6 = QK.f2911do[i5];
                        boolean z = true;
                        for (int i7 = 0; i7 < m1847case.size(); i7++) {
                            z &= ((C3893w.Cdo) m1847case.get(i7)).m8510do() != i6;
                        }
                        if (z) {
                            i4 = i6;
                        }
                    }
                    i2 = i4;
                } else {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((C3893w.Cdo) m1847case.get(i3)).f16178do).getLabel())) {
                        i2 = ((C3893w.Cdo) m1847case.get(i3)).m8510do();
                        break;
                    }
                    i3++;
                }
            }
            if (i2 != -1) {
                C3893w.Cdo cdo = new C3893w.Cdo(null, i2, string, o5, null);
                View.AccessibilityDelegate m1859new = QK.m1859new(view);
                Cimplements cimplements = m1859new == null ? null : m1859new instanceof Cimplements.Cdo ? ((Cimplements.Cdo) m1859new).f13564do : new Cimplements(m1859new);
                if (cimplements == null) {
                    cimplements = new Cimplements();
                }
                QK.m1858native(view, cimplements);
                QK.m1865throw(view, cdo.m8510do());
                QK.m1847case(view).add(cdo);
                QK.m1848catch(view, 0);
            }
            this.f10600do.put(i, i2);
        }
        if (this.f10594const && this.f10641while != 5) {
            QK.m1867while(view, C3893w.Cdo.f16170goto, null, new O5(this, 5));
        }
        int i8 = this.f10641while;
        if (i8 == 3) {
            QK.m1867while(view, C3893w.Cdo.f16168else, null, new O5(this, this.f10609do ? 4 : 6));
            return;
        }
        if (i8 == 4) {
            QK.m1867while(view, C3893w.Cdo.f16165case, null, new O5(this, this.f10609do ? 3 : 6));
        } else {
            if (i8 != 6) {
                return;
            }
            QK.m1867while(view, C3893w.Cdo.f16168else, null, new O5(this, 4));
            QK.m1867while(view, C3893w.Cdo.f16165case, null, new O5(this, 3));
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: throw */
    public final void mo3697throw(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        r0 = r0.getRootWindowInsets();
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m5695throws() {
        /*
            r5 = this;
            as r0 = r5.f10602do
            r1 = 0
            if (r0 == 0) goto L6f
            java.lang.ref.WeakReference<V extends android.view.View> r0 = r5.f10605do
            if (r0 == 0) goto L6f
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L6f
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L6f
            java.lang.ref.WeakReference<V extends android.view.View> r0 = r5.f10605do
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r5.m5692strictfp()
            if (r2 == 0) goto L6f
            android.view.WindowInsets r0 = defpackage.C3245l.m7302catch(r0)
            if (r0 == 0) goto L6f
            as r2 = r5.f10602do
            float r2 = r2.m4765catch()
            android.view.RoundedCorner r3 = defpackage.K5.m1123try(r0)
            if (r3 == 0) goto L44
            int r3 = defpackage.L5.m1274for(r3)
            float r3 = (float) r3
            int r4 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r4 <= 0) goto L44
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L44
            float r3 = r3 / r2
            goto L45
        L44:
            r3 = 0
        L45:
            as r2 = r5.f10602do
            as$if r4 = r2.f8253do
            qD r4 = r4.f8278do
            gb r4 = r4.f15064if
            android.graphics.RectF r2 = r2.m4780this()
            float r2 = r4.mo1748do(r2)
            android.view.RoundedCorner r0 = defpackage.L.m1233case(r0)
            if (r0 == 0) goto L6a
            int r0 = defpackage.L5.m1274for(r0)
            float r0 = (float) r0
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 <= 0) goto L6a
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L6a
            float r1 = r0 / r2
        L6a:
            float r0 = java.lang.Math.max(r3, r1)
            return r0
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.m5695throws():float");
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m5696transient(int i) {
        if (this.f10641while == i) {
            return;
        }
        this.f10641while = i;
        WeakReference<V> weakReference = this.f10605do;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        int i2 = 0;
        if (i == 3) {
            c(true);
        } else if (i == 6 || i == 5 || i == 4) {
            c(false);
        }
        b(i, true);
        while (true) {
            ArrayList<Cnew> arrayList = this.f10606do;
            if (i2 >= arrayList.size()) {
                a();
                return;
            } else {
                arrayList.get(i2).mo5699if(i);
                i2++;
            }
        }
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: try */
    public final void mo507try(B4 b4) {
        C0286Ir c0286Ir = this.f10596do;
        if (c0286Ir == null) {
            return;
        }
        B4 b42 = ((AbstractC0176Dr) c0286Ir).f689do;
        ((AbstractC0176Dr) c0286Ir).f689do = b4;
        if (b42 == null) {
            return;
        }
        c0286Ir.m975if(b4.f200for);
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m5697volatile(View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.f10621if) == null) {
            this.f10621if = new WeakReference<>(view);
            m5694synchronized(view, 1);
        } else {
            m5685extends(weakReference.get(), 1);
            this.f10621if = null;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final boolean f10643do;

        /* renamed from: for, reason: not valid java name */
        public final int f10644for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final boolean f10645for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f10646if;

        /* renamed from: new, reason: not valid java name */
        public final int f10647new;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$do, reason: invalid class name */
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
            this.f10644for = parcel.readInt();
            this.f10647new = parcel.readInt();
            this.f10643do = parcel.readInt() == 1;
            this.f10646if = parcel.readInt() == 1;
            this.f10645for = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f10644for);
            parcel.writeInt(this.f10647new);
            parcel.writeInt(this.f10643do ? 1 : 0);
            parcel.writeInt(this.f10646if ? 1 : 0);
            parcel.writeInt(this.f10645for ? 1 : 0);
        }

        public SavedState(android.view.AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
            super(absSavedState);
            this.f10644for = bottomSheetBehavior.f10641while;
            this.f10647new = bottomSheetBehavior.f10639try;
            this.f10643do = bottomSheetBehavior.f10609do;
            this.f10646if = bottomSheetBehavior.f10594const;
            this.f10645for = bottomSheetBehavior.f10613final;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f10615for = 0;
        this.f10609do = true;
        this.f10618goto = -1;
        this.f10635this = -1;
        this.f10604do = new Ctry();
        this.f10620if = 0.5f;
        this.f10614for = -1.0f;
        this.f10633super = true;
        this.f10641while = 4;
        this.f10626new = 0.1f;
        this.f10606do = new ArrayList<>();
        this.f10634switch = -1;
        this.f10600do = new SparseIntArray();
        this.f10603do = new Cfor();
        this.f10610else = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2485else);
        if (obtainStyledAttributes.hasValue(3)) {
            this.f10599do = C0659Zr.m3071if(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(21)) {
            this.f10608do = new C3554qD(C3554qD.m7859for(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal));
        }
        C3554qD c3554qD = this.f10608do;
        if (c3554qD != null) {
            C0716as c0716as = new C0716as(c3554qD);
            this.f10602do = c0716as;
            c0716as.m4766class(context);
            ColorStateList colorStateList = this.f10599do;
            if (colorStateList != null) {
                this.f10602do.m4778super(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f10602do.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m5695throws(), 1.0f);
        this.f10598do = ofFloat;
        ofFloat.setDuration(500L);
        this.f10598do.addUpdateListener(new M5(this));
        this.f10614for = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.f10618goto = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.f10635this = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i = peekValue.data) == -1) {
            m5689interface(i);
        } else {
            m5689interface(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z = obtainStyledAttributes.getBoolean(8, false);
        if (this.f10594const != z) {
            this.f10594const = z;
            if (!z && this.f10641while == 5) {
                m5691protected(4);
            }
            a();
        }
        this.f10617for = obtainStyledAttributes.getBoolean(13, false);
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        if (this.f10609do != z2) {
            this.f10609do = z2;
            if (this.f10605do != null) {
                m5693switch();
            }
            m5696transient((this.f10609do && this.f10641while == 6) ? 3 : this.f10641while);
            b(this.f10641while, true);
            a();
        }
        this.f10613final = obtainStyledAttributes.getBoolean(12, false);
        this.f10633super = obtainStyledAttributes.getBoolean(4, true);
        this.f10615for = obtainStyledAttributes.getInt(10, 0);
        float f = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.f10620if = f;
            if (this.f10605do != null) {
                this.f10632super = (int) ((1.0f - f) * this.f10630return);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i2 = peekValue2.data;
                if (i2 >= 0) {
                    this.f10593const = i2;
                    b(this.f10641while, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f10593const = dimensionPixelOffset;
                    b(this.f10641while, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f10627new = obtainStyledAttributes.getInt(11, 500);
            this.f10628new = obtainStyledAttributes.getBoolean(17, false);
            this.f10640try = obtainStyledAttributes.getBoolean(18, false);
            this.f10588case = obtainStyledAttributes.getBoolean(19, false);
            this.f10611else = obtainStyledAttributes.getBoolean(20, true);
            this.f10619goto = obtainStyledAttributes.getBoolean(14, false);
            this.f10636this = obtainStyledAttributes.getBoolean(15, false);
            this.f10586break = obtainStyledAttributes.getBoolean(16, false);
            this.f10590catch = obtainStyledAttributes.getBoolean(23, true);
            obtainStyledAttributes.recycle();
            this.f10595do = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
