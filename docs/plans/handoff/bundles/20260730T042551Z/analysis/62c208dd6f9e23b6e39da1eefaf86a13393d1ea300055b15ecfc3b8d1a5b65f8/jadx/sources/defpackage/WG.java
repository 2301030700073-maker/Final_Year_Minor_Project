package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class WG extends Transition {

    /* renamed from: WG$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ TextView f4366do;

        public Cdo(TextView textView) {
            this.f4366do = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            TextView textView = this.f4366do;
            textView.setScaleX(floatValue);
            textView.setScaleY(floatValue);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: class, reason: not valid java name */
    public final Animator mo2719class(ViewGroup viewGroup, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI == null || c3500pI2 == null || !(c3500pI.f14904do instanceof TextView)) {
            return null;
        }
        View view = c3500pI2.f14904do;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        HashMap hashMap = c3500pI.f14906do;
        HashMap hashMap2 = c3500pI2.f14906do;
        float floatValue = hashMap.get("android:textscale:scale") != null ? ((Float) hashMap.get("android:textscale:scale")).floatValue() : 1.0f;
        float floatValue2 = hashMap2.get("android:textscale:scale") != null ? ((Float) hashMap2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (floatValue == floatValue2) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, floatValue2);
        ofFloat.addUpdateListener(new Cdo(textView));
        return ofFloat;
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto, reason: not valid java name */
    public final void mo2720goto(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (view instanceof TextView) {
            c3500pI.f14906do.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: try, reason: not valid java name */
    public final void mo2721try(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (view instanceof TextView) {
            c3500pI.f14906do.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }
}
