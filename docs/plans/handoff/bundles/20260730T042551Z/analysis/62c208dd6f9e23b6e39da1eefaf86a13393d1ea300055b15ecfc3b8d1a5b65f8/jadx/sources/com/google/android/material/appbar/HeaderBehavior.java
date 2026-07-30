package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.common.api.Api;
import defpackage.C0315Kc;
import defpackage.C2805gL;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: case, reason: not valid java name */
    public int f10448case;

    /* renamed from: do, reason: not valid java name */
    public VelocityTracker f10449do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OverScroller f10450do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f10451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10452do;

    /* renamed from: new, reason: not valid java name */
    public int f10453new;

    /* renamed from: try, reason: not valid java name */
    public int f10454try;

    /* renamed from: com.google.android.material.appbar.HeaderBehavior$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final V f10455do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CoordinatorLayout f10456do;

        public Cdo(CoordinatorLayout coordinatorLayout, V v) {
            this.f10456do = coordinatorLayout;
            this.f10455do = v;
        }

        @Override // java.lang.Runnable
        public final void run() {
            HeaderBehavior headerBehavior;
            OverScroller overScroller;
            V v = this.f10455do;
            if (v == null || (overScroller = (headerBehavior = HeaderBehavior.this).f10450do) == null) {
                return;
            }
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            CoordinatorLayout coordinatorLayout = this.f10456do;
            if (!computeScrollOffset) {
                headerBehavior.mo5641private(v, coordinatorLayout);
                return;
            }
            headerBehavior.m5656continue(coordinatorLayout, v, headerBehavior.f10450do.getCurrY());
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            v.postOnAnimation(this);
        }
    }

    public HeaderBehavior() {
        this.f10453new = -1;
        this.f10448case = -1;
    }

    /* renamed from: abstract */
    public int mo5633abstract(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int m1182throw;
        int m5659switch = m5659switch();
        if (i2 == 0 || m5659switch < i2 || m5659switch > i3 || m5659switch == (m1182throw = C0315Kc.m1182throw(i, i2, i3))) {
            return 0;
        }
        C2805gL c2805gL = ((ViewOffsetBehavior) this).f10468do;
        if (c2805gL != null) {
            c2805gL.m6725if(m1182throw);
        } else {
            this.f10469for = m1182throw;
        }
        return m5659switch - m1182throw;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: catch */
    public final boolean mo3683catch(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f10448case < 0) {
            this.f10448case = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f10452do) {
            int i = this.f10453new;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f10454try) > this.f10448case) {
                this.f10454try = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f10453new = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo5634default(v) && coordinatorLayout.m3680throws(v, x, y2);
            this.f10452do = z;
            if (z) {
                this.f10454try = y2;
                this.f10453new = motionEvent.getPointerId(0);
                if (this.f10449do == null) {
                    this.f10449do = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f10450do;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f10450do.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f10449do;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: continue, reason: not valid java name */
    public final void m5656continue(CoordinatorLayout coordinatorLayout, View view, int i) {
        mo5633abstract(coordinatorLayout, view, i, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: default */
    public boolean mo5634default(V v) {
        return false;
    }

    /* renamed from: extends */
    public int mo5635extends(V v) {
        return -v.getHeight();
    }

    /* renamed from: finally */
    public int mo5636finally(V v) {
        return v.getHeight();
    }

    /* renamed from: package */
    public int mo5640package() {
        return m5659switch();
    }

    /* renamed from: private */
    public void mo5641private(View view, CoordinatorLayout coordinatorLayout) {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00db A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: static */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3694static(androidx.coordinatorlayout.widget.CoordinatorLayout r20, V r21, android.view.MotionEvent r22) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo3694static(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10453new = -1;
        this.f10448case = -1;
    }
}
