package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C3500pI;
import defpackage.C3856vL;
import defpackage.HF;
import defpackage.KI;

/* loaded from: classes.dex */
public class Fade extends Visibility {

    /* renamed from: androidx.transition.Fade$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final View f7854do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7855do = false;

        public Cdo(View view) {
            this.f7854do = view;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case */
        public final void mo4604case(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for */
        public final void mo4607for(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            this.f7854do.setTag(R.id.transition_pause_alpha, null);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            C3856vL.m8471if(this.f7854do, 1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            View view = this.f7854do;
            if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                this.f7855do = true;
                view.setLayerType(2, null);
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            View view = this.f7854do;
            view.setTag(R.id.transition_pause_alpha, Float.valueOf(view.getVisibility() == 0 ? C3856vL.f16071do.mo177do(view) : 0.0f));
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            boolean z2 = this.f7855do;
            View view = this.f7854do;
            if (z2) {
                view.setLayerType(0, null);
            }
            if (z) {
                return;
            }
            C3856vL.m8471if(view, 1.0f);
            C3856vL.f16071do.getClass();
        }
    }

    public Fade(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        ((Visibility) this).f7914new = i;
    }

    public static float c(C3500pI c3500pI, float f) {
        Float f2;
        return (c3500pI == null || (f2 = (Float) c3500pI.f14906do.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        C3856vL.f16071do.getClass();
        ObjectAnimator b = b(view, c(c3500pI, 1.0f), 0.0f);
        if (b == null) {
            C3856vL.m8471if(view, c(c3500pI2, 1.0f));
        }
        return b;
    }

    public final ObjectAnimator b(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C3856vL.m8471if(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C3856vL.f16069do, f2);
        Cdo cdo = new Cdo(view);
        ofFloat.addListener(cdo);
        m4649throw().mo4631do(cdo);
        return ofFloat;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4658implements(c3500pI);
        View view = c3500pI.f14904do;
        Float f = (Float) view.getTag(R.id.transition_pause_alpha);
        if (f == null) {
            f = view.getVisibility() == 0 ? Float.valueOf(C3856vL.f16071do.mo177do(view)) : Float.valueOf(0.0f);
        }
        c3500pI.f14906do.put("android:fade:transitionAlpha", f);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: synchronized */
    public final Animator mo4617synchronized(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        C3856vL.f16071do.getClass();
        return b(view, c(c3500pI, 0.0f), 1.0f);
    }

    public Fade() {
    }

    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1332new);
        int m1135for = KI.m1135for(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, ((Visibility) this).f7914new);
        if ((m1135for & (-4)) == 0) {
            ((Visibility) this).f7914new = m1135for;
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }
}
