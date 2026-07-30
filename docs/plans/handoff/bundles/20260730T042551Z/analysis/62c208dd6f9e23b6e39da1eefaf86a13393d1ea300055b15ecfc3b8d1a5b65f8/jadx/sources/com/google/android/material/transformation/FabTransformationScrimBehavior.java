package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.C0200Et;
import defpackage.C0315Kc;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: do, reason: not valid java name */
    public final C0200Et f11789do;

    /* renamed from: if, reason: not valid java name */
    public final C0200Et f11790if;

    /* renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f11791do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ boolean f11792do;

        public Cdo(boolean z, View view) {
            this.f11792do = z;
            this.f11791do = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f11792do) {
                return;
            }
            this.f11791do.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (this.f11792do) {
                this.f11791do.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f11789do = new C0200Et(75L);
        this.f11790if = new C0200Et(0L);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: case */
    public final boolean mo3682case(View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: static */
    public final boolean mo3694static(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: throws */
    public final AnimatorSet mo6026throws(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator ofFloat;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        C0200Et c0200Et = z ? this.f11789do : this.f11790if;
        if (z) {
            if (!z2) {
                view2.setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        c0200Et.m508do(ofFloat);
        arrayList.add(ofFloat);
        AnimatorSet animatorSet = new AnimatorSet();
        C0315Kc.m1183throws(animatorSet, arrayList);
        animatorSet.addListener(new Cdo(z, view2));
        return animatorSet;
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11789do = new C0200Et(75L);
        this.f11790if = new C0200Et(0L);
    }
}
