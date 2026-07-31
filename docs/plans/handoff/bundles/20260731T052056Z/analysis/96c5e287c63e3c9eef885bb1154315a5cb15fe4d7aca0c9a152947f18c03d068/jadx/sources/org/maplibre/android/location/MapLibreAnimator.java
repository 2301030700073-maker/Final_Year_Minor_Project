package org.maplibre.android.location;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import androidx.transition.Transition;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapLibreAnimator extends ValueAnimator implements ValueAnimator.AnimatorUpdateListener {
    public Object animatedValue;
    public boolean invalid;
    public final double minUpdateInterval = 0.4656612875245797d;
    public final Object target;
    public long timeElapsed;
    public final AnimationsValueChangeListener updateListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface AnimationsValueChangeListener {
        void onNewAnimationValue(Object obj);
    }

    public MapLibreAnimator(Object[] objArr, AnimationsValueChangeListener animationsValueChangeListener) {
        setObjectValues(objArr);
        setEvaluator(provideEvaluator());
        this.updateListener = animationsValueChangeListener;
        this.target = objArr[objArr.length - 1];
        addUpdateListener(this);
        addListener(new Transition.AnonymousClass3(14, this));
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.animatedValue = valueAnimator.getAnimatedValue();
        long nanoTime = System.nanoTime();
        if (nanoTime - this.timeElapsed < this.minUpdateInterval) {
            return;
        }
        if (!this.invalid) {
            this.updateListener.onNewAnimationValue(this.animatedValue);
        }
        this.timeElapsed = nanoTime;
    }

    public abstract TypeEvaluator provideEvaluator();
}
