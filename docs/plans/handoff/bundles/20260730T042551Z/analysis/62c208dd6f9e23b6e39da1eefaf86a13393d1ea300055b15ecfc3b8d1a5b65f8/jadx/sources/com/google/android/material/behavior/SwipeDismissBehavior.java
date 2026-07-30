package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Ccase;
import com.google.android.material.snackbar.Cgoto;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.QK;
import defpackage.VK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VK f10538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f10540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10541do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10545if;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f10543for = 2;

    /* renamed from: do, reason: not valid java name */
    public final float f10537do = 0.5f;

    /* renamed from: if, reason: not valid java name */
    public float f10544if = 0.0f;

    /* renamed from: for, reason: not valid java name */
    public float f10542for = 0.5f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10539do = new Cdo();

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$do, reason: invalid class name */
    public class Cdo extends VK.Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f10546do;

        /* renamed from: if, reason: not valid java name */
        public int f10548if = -1;

        public Cdo() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x0051, code lost:
        
            if (java.lang.Math.abs(r9.getLeft() - r8.f10546do) >= java.lang.Math.round(r9.getWidth() * r2.f10537do)) goto L27;
         */
        @Override // defpackage.VK.Cfor
        /* renamed from: break */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo2618break(android.view.View r9, float r10, float r11) {
            /*
                r8 = this;
                r11 = -1
                r8.f10548if = r11
                int r11 = r9.getWidth()
                r0 = 0
                r1 = 0
                com.google.android.material.behavior.SwipeDismissBehavior r2 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r3 = 1
                int r4 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r4 == 0) goto L39
                java.util.WeakHashMap<android.view.View, nL> r5 = defpackage.QK.f2909do
                int r5 = r9.getLayoutDirection()
                if (r5 != r3) goto L1a
                r5 = 1
                goto L1b
            L1a:
                r5 = 0
            L1b:
                int r6 = r2.f10543for
                r7 = 2
                if (r6 != r7) goto L21
                goto L53
            L21:
                if (r6 != 0) goto L2d
                if (r5 == 0) goto L2a
                int r4 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r4 >= 0) goto L55
                goto L53
            L2a:
                if (r4 <= 0) goto L55
                goto L53
            L2d:
                if (r6 != r3) goto L55
                if (r5 == 0) goto L34
                if (r4 <= 0) goto L55
                goto L53
            L34:
                int r4 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r4 >= 0) goto L55
                goto L53
            L39:
                int r4 = r9.getLeft()
                int r5 = r8.f10546do
                int r4 = r4 - r5
                int r5 = r9.getWidth()
                float r5 = (float) r5
                float r6 = r2.f10537do
                float r5 = r5 * r6
                int r5 = java.lang.Math.round(r5)
                int r4 = java.lang.Math.abs(r4)
                if (r4 < r5) goto L55
            L53:
                r4 = 1
                goto L56
            L55:
                r4 = 0
            L56:
                if (r4 == 0) goto L6c
                int r10 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r10 < 0) goto L67
                int r10 = r9.getLeft()
                int r0 = r8.f10546do
                if (r10 >= r0) goto L65
                goto L67
            L65:
                int r0 = r0 + r11
                goto L70
            L67:
                int r10 = r8.f10546do
                int r0 = r10 - r11
                goto L70
            L6c:
                int r10 = r8.f10546do
                r0 = r10
                r3 = 0
            L70:
                VK r10 = r2.f10538do
                int r11 = r9.getTop()
                boolean r10 = r10.m2609native(r0, r11)
                if (r10 == 0) goto L87
                com.google.android.material.behavior.SwipeDismissBehavior$for r10 = new com.google.android.material.behavior.SwipeDismissBehavior$for
                r10.<init>(r9, r3)
                java.util.WeakHashMap<android.view.View, nL> r11 = defpackage.QK.f2909do
                r9.postOnAnimation(r10)
                goto L92
            L87:
                if (r3 == 0) goto L92
                com.google.android.material.behavior.SwipeDismissBehavior$if r10 = r2.f10540do
                if (r10 == 0) goto L92
                com.google.android.material.snackbar.case r10 = (com.google.android.material.snackbar.Ccase) r10
                r10.m5932do(r9)
            L92:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.Cdo.mo2618break(android.view.View, float, float):void");
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: catch */
        public final boolean mo2620catch(View view, int i) {
            int i2 = this.f10548if;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo5670switch(view);
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: do */
        public final int mo2621do(View view, int i) {
            int width;
            int width2;
            int width3;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            boolean z = view.getLayoutDirection() == 1;
            int i2 = SwipeDismissBehavior.this.f10543for;
            if (i2 == 0) {
                if (z) {
                    width = this.f10546do - view.getWidth();
                    width2 = this.f10546do;
                } else {
                    width = this.f10546do;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i2 != 1) {
                width = this.f10546do - view.getWidth();
                width2 = view.getWidth() + this.f10546do;
            } else if (z) {
                width = this.f10546do;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f10546do - view.getWidth();
                width2 = this.f10546do;
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: else */
        public final void mo2622else(View view, int i) {
            this.f10548if = i;
            this.f10546do = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                swipeDismissBehavior.f10545if = true;
                parent.requestDisallowInterceptTouchEvent(true);
                swipeDismissBehavior.f10545if = false;
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: for */
        public final int mo2623for(View view) {
            return view.getWidth();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: goto */
        public final void mo2624goto(int i) {
            Cif cif = SwipeDismissBehavior.this.f10540do;
            if (cif != null) {
                BaseTransientBottomBar baseTransientBottomBar = ((Ccase) cif).f11500do;
                if (i != 0) {
                    if (i == 1 || i == 2) {
                        Cgoto.m5933if().m5937new(baseTransientBottomBar.f11465do);
                        return;
                    }
                    return;
                }
                Cgoto m5933if = Cgoto.m5933if();
                BaseTransientBottomBar.Cfor cfor = baseTransientBottomBar.f11465do;
                synchronized (m5933if.f11507do) {
                    if (m5933if.m5936for(cfor)) {
                        Cgoto.Cfor cfor2 = m5933if.f11506do;
                        if (cfor2.f11512do) {
                            cfor2.f11512do = false;
                            m5933if.m5934case(cfor2);
                        }
                    }
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
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f = width * swipeDismissBehavior.f10544if;
            float width2 = view.getWidth() * swipeDismissBehavior.f10542for;
            float abs = Math.abs(i - this.f10546do);
            if (abs <= f) {
                view.setAlpha(1.0f);
            } else if (abs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f) / (width2 - f))), 1.0f));
            }
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final View f10549do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f10551do;

        public Cfor(View view, boolean z) {
            this.f10549do = view;
            this.f10551do = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cif cif;
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            VK vk = swipeDismissBehavior.f10538do;
            View view = this.f10549do;
            if (vk != null && vk.m2606goto()) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                view.postOnAnimation(this);
            } else {
                if (!this.f10551do || (cif = swipeDismissBehavior.f10540do) == null) {
                    return;
                }
                ((Ccase) cif).m5932do(view);
            }
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$if, reason: invalid class name */
    public interface Cif {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: catch */
    public boolean mo3683catch(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f10541do;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m3680throws(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f10541do = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f10541do = false;
        }
        if (!z) {
            return false;
        }
        if (this.f10538do == null) {
            this.f10538do = new VK(coordinatorLayout.getContext(), coordinatorLayout, this.f10539do);
        }
        return !this.f10545if && this.f10538do.m2611public(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public final boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (v.getImportantForAccessibility() == 0) {
            v.setImportantForAccessibility(1);
            QK.m1865throw(v, 1048576);
            QK.m1848catch(v, 0);
            if (mo5670switch(v)) {
                QK.m1867while(v, C3893w.Cdo.f16170goto, null, new com.google.android.material.behavior.Cdo(this));
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: static */
    public final boolean mo3694static(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f10538do == null) {
            return false;
        }
        if (this.f10545if && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f10538do.m2601const(motionEvent);
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean mo5670switch(View view) {
        return true;
    }
}
