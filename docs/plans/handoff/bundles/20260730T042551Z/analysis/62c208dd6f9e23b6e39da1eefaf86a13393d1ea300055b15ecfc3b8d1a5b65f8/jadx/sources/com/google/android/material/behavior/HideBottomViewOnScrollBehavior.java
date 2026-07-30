package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0222Ft;
import defpackage.C2785g1;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: case, reason: not valid java name */
    public int f10527case;

    /* renamed from: do, reason: not valid java name */
    public TimeInterpolator f10528do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPropertyAnimator f10529do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<Cif> f10530do;

    /* renamed from: else, reason: not valid java name */
    public int f10531else;

    /* renamed from: for, reason: not valid java name */
    public int f10532for;

    /* renamed from: if, reason: not valid java name */
    public TimeInterpolator f10533if;

    /* renamed from: new, reason: not valid java name */
    public int f10534new;

    /* renamed from: try, reason: not valid java name */
    public int f10535try;

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f10529do = null;
        }
    }

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do, reason: not valid java name */
        void m5669do();
    }

    public HideBottomViewOnScrollBehavior() {
        this.f10530do = new LinkedHashSet<>();
        this.f10535try = 0;
        this.f10527case = 2;
        this.f10531else = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f10535try = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        this.f10532for = C0222Ft.m649for(v.getContext(), R.attr.motionDurationLong2, 225);
        this.f10534new = C0222Ft.m649for(v.getContext(), R.attr.motionDurationMedium4, 175);
        this.f10528do = C0222Ft.m651new(v.getContext(), R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13029do);
        this.f10533if = C0222Ft.m651new(v.getContext(), R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13025do);
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: public */
    public boolean mo3692public(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m5668switch(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f10529do = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new Cdo());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: throw */
    public final void mo3697throw(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        LinkedHashSet<Cif> linkedHashSet = this.f10530do;
        if (i > 0) {
            if (this.f10527case == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f10529do;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f10527case = 1;
            Iterator<Cif> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                it.next().m5669do();
            }
            m5668switch(view, this.f10535try + this.f10531else, this.f10534new, this.f10533if);
            return;
        }
        if (i < 0) {
            if (this.f10527case == 2) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator2 = this.f10529do;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                view.clearAnimation();
            }
            this.f10527case = 2;
            Iterator<Cif> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                it2.next().m5669do();
            }
            m5668switch(view, 0, this.f10532for, this.f10528do);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10530do = new LinkedHashSet<>();
        this.f10535try = 0;
        this.f10527case = 2;
        this.f10531else = 0;
    }
}
