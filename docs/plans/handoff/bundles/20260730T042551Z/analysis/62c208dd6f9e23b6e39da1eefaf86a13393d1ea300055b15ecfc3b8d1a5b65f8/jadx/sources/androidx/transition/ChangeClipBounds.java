package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C0782bz;
import defpackage.C3500pI;
import defpackage.C3856vL;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeClipBounds extends Transition {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f7808do = {"android:clipBounds:clip"};

    /* renamed from: do, reason: not valid java name */
    public static final Rect f7807do = new Rect();

    /* renamed from: androidx.transition.ChangeClipBounds$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Rect f7809do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7810do;

        /* renamed from: if, reason: not valid java name */
        public final Rect f7811if;

        public Cdo(Rect rect, Rect rect2, View view) {
            this.f7810do = view;
            this.f7809do = rect;
            this.f7811if = rect2;
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
            View view = this.f7810do;
            view.setClipBounds((Rect) view.getTag(R.id.transition_clip));
            view.setTag(R.id.transition_clip, null);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            View view = this.f7810do;
            Rect clipBounds = view.getClipBounds();
            if (clipBounds == null) {
                clipBounds = ChangeClipBounds.f7807do;
            }
            view.setTag(R.id.transition_clip, clipBounds);
            view.setClipBounds(this.f7811if);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            View view = this.f7810do;
            if (z) {
                view.setClipBounds(this.f7809do);
            } else {
                view.setClipBounds(this.f7811if);
            }
        }
    }

    public ChangeClipBounds() {
    }

    @Override // androidx.transition.Transition
    /* renamed from: class */
    public final Animator mo2719class(ViewGroup viewGroup, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI != null && c3500pI2 != null) {
            HashMap hashMap = c3500pI.f14906do;
            if (hashMap.containsKey("android:clipBounds:clip")) {
                HashMap hashMap2 = c3500pI2.f14906do;
                if (hashMap2.containsKey("android:clipBounds:clip")) {
                    Rect rect = (Rect) hashMap.get("android:clipBounds:clip");
                    Rect rect2 = (Rect) hashMap2.get("android:clipBounds:clip");
                    if (rect == null && rect2 == null) {
                        return null;
                    }
                    Rect rect3 = rect == null ? (Rect) hashMap.get("android:clipBounds:bounds") : rect;
                    Rect rect4 = rect2 == null ? (Rect) hashMap2.get("android:clipBounds:bounds") : rect2;
                    if (rect3.equals(rect4)) {
                        return null;
                    }
                    View view = c3500pI2.f14904do;
                    view.setClipBounds(rect);
                    ObjectAnimator ofObject = ObjectAnimator.ofObject(view, C3856vL.f16070do, new C0782bz(new Rect()), rect3, rect4);
                    Cdo cdo = new Cdo(rect, rect2, view);
                    ofObject.addListener(cdo);
                    mo4631do(cdo);
                    return ofObject;
                }
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4611implements(c3500pI, true);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4611implements(C3500pI c3500pI, boolean z) {
        View view = c3500pI.f14904do;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect rect = z ? (Rect) view.getTag(R.id.transition_clip) : null;
        if (rect == null) {
            rect = view.getClipBounds();
        }
        Rect rect2 = rect != f7807do ? rect : null;
        HashMap hashMap = c3500pI.f14906do;
        hashMap.put("android:clipBounds:clip", rect2);
        if (rect2 == null) {
            hashMap.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: import */
    public final String[] mo4603import() {
        return f7808do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4611implements(c3500pI, false);
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
