package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes3.dex */
public final class M5 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BottomSheetBehavior f2096do;

    public M5(BottomSheetBehavior bottomSheetBehavior) {
        this.f2096do = bottomSheetBehavior;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        C0716as c0716as = this.f2096do.f10602do;
        if (c0716as != null) {
            c0716as.m4781throw(floatValue);
        }
    }
}
