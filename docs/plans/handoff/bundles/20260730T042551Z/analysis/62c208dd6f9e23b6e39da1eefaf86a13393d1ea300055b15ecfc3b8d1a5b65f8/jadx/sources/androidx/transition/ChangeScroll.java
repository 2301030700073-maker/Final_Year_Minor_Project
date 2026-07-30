package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import defpackage.C3500pI;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeScroll extends Transition {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f7820do = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    @Override // androidx.transition.Transition
    /* renamed from: class */
    public final Animator mo2719class(ViewGroup viewGroup, C3500pI c3500pI, C3500pI c3500pI2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (c3500pI == null || c3500pI2 == null) {
            return null;
        }
        HashMap hashMap = c3500pI.f14906do;
        int intValue = ((Integer) hashMap.get("android:changeScroll:x")).intValue();
        HashMap hashMap2 = c3500pI2.f14906do;
        int intValue2 = ((Integer) hashMap2.get("android:changeScroll:x")).intValue();
        int intValue3 = ((Integer) hashMap.get("android:changeScroll:y")).intValue();
        int intValue4 = ((Integer) hashMap2.get("android:changeScroll:y")).intValue();
        View view = c3500pI2.f14904do;
        if (intValue != intValue2) {
            view.setScrollX(intValue);
            objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
        } else {
            objectAnimator = null;
        }
        if (intValue3 != intValue4) {
            view.setScrollY(intValue3);
            objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
        }
        boolean z = Ccase.f7932do;
        if (objectAnimator == null) {
            return objectAnimator2;
        }
        if (objectAnimator2 == null) {
            return objectAnimator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimator, objectAnimator2);
        return animatorSet;
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4613implements(c3500pI);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4613implements(C3500pI c3500pI) {
        HashMap hashMap = c3500pI.f14906do;
        View view = c3500pI.f14904do;
        hashMap.put("android:changeScroll:x", Integer.valueOf(view.getScrollX()));
        hashMap.put("android:changeScroll:y", Integer.valueOf(view.getScrollY()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: import */
    public final String[] mo4603import() {
        return f7820do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4613implements(c3500pI);
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
