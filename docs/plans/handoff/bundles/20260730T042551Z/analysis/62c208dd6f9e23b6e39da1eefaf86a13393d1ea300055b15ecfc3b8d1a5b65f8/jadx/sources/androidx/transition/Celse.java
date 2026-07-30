package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C3500pI;

/* renamed from: androidx.transition.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse {
    /* renamed from: do, reason: not valid java name */
    public static ObjectAnimator m4662do(View view, C3500pI c3500pI, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) c3500pI.f14904do.getTag(R.id.transition_position)) != null) {
            f = (r2[0] - i) + translationX;
            f2 = (r2[1] - i2) + translationY;
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
        if (f == f3 && f2 == f4) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f3), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f2, f4));
        Cdo cdo = new Cdo(view, c3500pI.f14904do, translationX, translationY);
        transition.mo4631do(cdo);
        ofPropertyValuesHolder.addListener(cdo);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }

    /* renamed from: androidx.transition.else$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public float f7937do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7938do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7939do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f7940do;

        /* renamed from: for, reason: not valid java name */
        public final float f7941for;

        /* renamed from: if, reason: not valid java name */
        public float f7942if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final View f7943if;

        /* renamed from: new, reason: not valid java name */
        public final float f7944new;

        public Cdo(View view, View view2, float f, float f2) {
            this.f7943if = view;
            this.f7938do = view2;
            this.f7941for = f;
            this.f7944new = f2;
            int[] iArr = (int[]) view2.getTag(R.id.transition_position);
            this.f7940do = iArr;
            if (iArr != null) {
                view2.setTag(R.id.transition_position, null);
            }
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
            if (this.f7939do) {
                return;
            }
            this.f7938do.setTag(R.id.transition_position, null);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            float f = this.f7937do;
            View view = this.f7943if;
            view.setTranslationX(f);
            view.setTranslationY(this.f7942if);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
            this.f7939do = true;
            float f = this.f7941for;
            View view = this.f7943if;
            view.setTranslationX(f);
            view.setTranslationY(this.f7944new);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f7939do = true;
            float f = this.f7941for;
            View view = this.f7943if;
            view.setTranslationX(f);
            view.setTranslationY(this.f7944new);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            float f = this.f7941for;
            View view = this.f7943if;
            view.setTranslationX(f);
            view.setTranslationY(this.f7944new);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            if (this.f7940do == null) {
                this.f7940do = new int[2];
            }
            int[] iArr = this.f7940do;
            View view = this.f7943if;
            view.getLocationOnScreen(iArr);
            this.f7938do.setTag(R.id.transition_position, this.f7940do);
            this.f7937do = view.getTranslationX();
            this.f7942if = view.getTranslationY();
            view.setTranslationX(this.f7941for);
            view.setTranslationY(this.f7944new);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }
    }
}
