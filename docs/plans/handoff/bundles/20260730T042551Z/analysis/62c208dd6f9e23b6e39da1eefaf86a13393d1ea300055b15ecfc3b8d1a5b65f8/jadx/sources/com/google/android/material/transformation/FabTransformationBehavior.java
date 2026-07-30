package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.C0156Ct;
import defpackage.C0200Et;
import defpackage.C0315Kc;
import defpackage.C2785g1;
import defpackage.Cpublic;

@Deprecated
/* loaded from: classes3.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: do, reason: not valid java name */
    public float f11778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11780do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f11781do;

    /* renamed from: if, reason: not valid java name */
    public float f11782if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f11783if;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f11784do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ boolean f11785do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f11786if;

        public Cdo(boolean z, View view, View view2) {
            this.f11785do = z;
            this.f11784do = view;
            this.f11786if = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f11785do) {
                return;
            }
            this.f11784do.setVisibility(4);
            View view = this.f11786if;
            view.setAlpha(1.0f);
            view.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (this.f11785do) {
                this.f11784do.setVisibility(0);
                View view = this.f11786if;
                view.setAlpha(0.0f);
                view.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public C0156Ct f11787do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0315Kc f11788do;
    }

    public FabTransformationBehavior() {
        this.f11779do = new Rect();
        this.f11780do = new RectF();
        this.f11783if = new RectF();
        this.f11781do = new int[2];
    }

    /* renamed from: default, reason: not valid java name */
    public static Pair m6027default(float f, float f2, boolean z, Cif cif) {
        C0200Et m311case;
        C0200Et m311case2;
        if (f == 0.0f || f2 == 0.0f) {
            m311case = cif.f11787do.m311case("translationXLinear");
            m311case2 = cif.f11787do.m311case("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            m311case = cif.f11787do.m311case("translationXCurveDownwards");
            m311case2 = cif.f11787do.m311case("translationYCurveDownwards");
        } else {
            m311case = cif.f11787do.m311case("translationXCurveUpwards");
            m311case2 = cif.f11787do.m311case("translationYCurveUpwards");
        }
        return new Pair(m311case, m311case2);
    }

    /* renamed from: package, reason: not valid java name */
    public static float m6028package(Cif cif, C0200Et c0200Et, float f) {
        long j = c0200Et.f917do;
        C0200Et m311case = cif.f11787do.m311case("expansion");
        float interpolation = c0200Et.m509if().getInterpolation((((m311case.f917do + m311case.f920if) + 17) - j) / c0200Et.f920if);
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        return Cpublic.m7823for(0.0f, f, interpolation, f);
    }

    /* renamed from: abstract, reason: not valid java name */
    public abstract Cif mo6029abstract(Context context, boolean z);

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: case */
    public final boolean mo3682case(View view, View view2) {
        int i;
        if (view.getVisibility() != 8) {
            return (view2 instanceof FloatingActionButton) && ((i = ((FloatingActionButton) view2).f11066do.f4173do) == 0 || i == view.getId());
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: else */
    public final void mo3686else(CoordinatorLayout.Ctry ctry) {
        if (ctry.f6468case == 0) {
            ctry.f6468case = 80;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final float m6030extends(View view, View view2, C0315Kc c0315Kc) {
        RectF rectF = this.f11780do;
        RectF rectF2 = this.f11783if;
        m6032private(view, rectF);
        rectF.offset(this.f11778do, this.f11782if);
        m6032private(view2, rectF2);
        c0315Kc.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    /* renamed from: finally, reason: not valid java name */
    public final float m6031finally(View view, View view2, C0315Kc c0315Kc) {
        RectF rectF = this.f11780do;
        RectF rectF2 = this.f11783if;
        m6032private(view, rectF);
        rectF.offset(this.f11778do, this.f11782if);
        m6032private(view2, rectF2);
        c0315Kc.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    /* renamed from: private, reason: not valid java name */
    public final void m6032private(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f11781do);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x03c8 A[LOOP:0: B:40:0x03c6->B:41:0x03c8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b2  */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: throws */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.AnimatorSet mo6026throws(android.view.View r25, android.view.View r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo6026throws(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11779do = new Rect();
        this.f11780do = new RectF();
        this.f11783if = new RectF();
        this.f11781do = new int[2];
    }
}
