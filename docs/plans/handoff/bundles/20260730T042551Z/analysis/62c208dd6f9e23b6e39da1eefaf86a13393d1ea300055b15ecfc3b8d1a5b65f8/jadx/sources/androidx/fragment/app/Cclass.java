package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import com.joeykrim.rootcheck.R;
import defpackage.ViewTreeObserverOnPreDrawListenerC0663Zv;

/* renamed from: androidx.fragment.app.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass {
    /* renamed from: do, reason: not valid java name */
    public static Cdo m4164do(Context context, Fragment fragment, boolean z, boolean z2) {
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        boolean z3 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
        if (onCreateAnimation != null) {
            return new Cdo(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
        if (onCreateAnimator != null) {
            return new Cdo(onCreateAnimator);
        }
        if (popEnterAnim == 0 && nextTransition != 0) {
            popEnterAnim = nextTransition != 4097 ? nextTransition != 4099 ? nextTransition != 8194 ? -1 : z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit : z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit : z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
        }
        if (popEnterAnim != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                    if (loadAnimation != null) {
                        return new Cdo(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                    if (loadAnimator != null) {
                        return new Cdo(loadAnimator);
                    }
                } catch (RuntimeException e2) {
                    if (equals) {
                        throw e2;
                    }
                    Animation loadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                    if (loadAnimation2 != null) {
                        return new Cdo(loadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: androidx.fragment.app.class$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Animator f6944do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Animation f6945do;

        public Cdo(Animation animation) {
            this.f6945do = animation;
            this.f6944do = null;
        }

        public Cdo(Animator animator) {
            this.f6945do = null;
            this.f6944do = animator;
        }
    }

    /* renamed from: androidx.fragment.app.class$if, reason: invalid class name */
    public static class Cif extends AnimationSet implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final View f6946do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ViewGroup f6947do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6948do;

        /* renamed from: for, reason: not valid java name */
        public boolean f6949for;

        /* renamed from: if, reason: not valid java name */
        public boolean f6950if;

        public Cif(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f6949for = true;
            this.f6947do = viewGroup;
            this.f6946do = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation) {
            this.f6949for = true;
            if (this.f6948do) {
                return !this.f6950if;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f6948do = true;
                ViewTreeObserverOnPreDrawListenerC0663Zv.m3081do(this.f6947do, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = this.f6948do;
            ViewGroup viewGroup = this.f6947do;
            if (z || !this.f6949for) {
                viewGroup.endViewTransition(this.f6946do);
                this.f6950if = true;
            } else {
                this.f6949for = false;
                viewGroup.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation, float f) {
            this.f6949for = true;
            if (this.f6948do) {
                return !this.f6950if;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f6948do = true;
                ViewTreeObserverOnPreDrawListenerC0663Zv.m3081do(this.f6947do, this);
            }
            return true;
        }
    }
}
