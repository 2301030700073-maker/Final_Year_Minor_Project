package com.airbnb.lottie;

import android.animation.ValueAnimator;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.google.android.material.card.MaterialCardViewHelper;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import org.wikipedia.talk.TalkThreadItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LottieDrawable$$ExternalSyntheticLambda1 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LottieDrawable$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                LottieDrawable lottieDrawable = (LottieDrawable) obj;
                AsyncUpdates asyncUpdates = lottieDrawable.asyncUpdates;
                if (asyncUpdates == null) {
                    asyncUpdates = L.defaultAsyncUpdates;
                }
                if (asyncUpdates != AsyncUpdates.ENABLED) {
                    CompositionLayer compositionLayer = lottieDrawable.compositionLayer;
                    if (compositionLayer != null) {
                        compositionLayer.setProgress(lottieDrawable.animator.getAnimatedValueAbsolute());
                        break;
                    }
                } else {
                    lottieDrawable.invalidateSelf();
                    break;
                }
                break;
            case 1:
                MaterialCardViewHelper materialCardViewHelper = (MaterialCardViewHelper) obj;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                materialCardViewHelper.checkedIcon.setAlpha((int) (255.0f * floatValue));
                materialCardViewHelper.checkedAnimationProgress = floatValue;
                break;
            case 2:
                DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj;
                determinateDrawable.activeIndicator.amplitudeFraction = determinateDrawable.amplitudeInterpolator.getInterpolation(determinateDrawable.amplitudeAnimator.getAnimatedFraction());
                break;
            case 3:
                ((DropdownMenuEndIconDelegate) obj).endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                TalkThreadItemView talkThreadItemView = (TalkThreadItemView) obj;
                int i2 = TalkThreadItemView.$r8$clinit;
                valueAnimator.getClass();
                if (!valueAnimator.isRunning()) {
                    talkThreadItemView.setBackgroundColor(0);
                    break;
                } else {
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    animatedValue.getClass();
                    talkThreadItemView.setBackgroundColor(((Integer) animatedValue).intValue());
                    break;
                }
        }
    }
}
