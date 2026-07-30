package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.C2805gL;

/* loaded from: classes3.dex */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: do, reason: not valid java name */
    public C2805gL f10468do;

    /* renamed from: for, reason: not valid java name */
    public int f10469for;

    public ViewOffsetBehavior() {
        this.f10469for = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo5657throws(coordinatorLayout, v, i);
        if (this.f10468do == null) {
            this.f10468do = new C2805gL(v);
        }
        C2805gL c2805gL = this.f10468do;
        View view = c2805gL.f13153do;
        c2805gL.f13152do = view.getTop();
        c2805gL.f13155if = view.getLeft();
        this.f10468do.m6724do();
        int i2 = this.f10469for;
        if (i2 == 0) {
            return true;
        }
        this.f10468do.m6725if(i2);
        this.f10469for = 0;
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public final int m5659switch() {
        C2805gL c2805gL = this.f10468do;
        if (c2805gL != null) {
            return c2805gL.f13154for;
        }
        return 0;
    }

    /* renamed from: throws */
    public void mo5657throws(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m3670extends(v, i);
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10469for = 0;
    }
}
