package com.airbnb.lottie.animation.keyframe;

import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.AutoMigration_14_15;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.value.Keyframe;
import com.google.android.material.shape.StateListSizeChange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseKeyframeAnimation {
    public final KeyframesWrapper keyframesWrapper;
    public final ArrayList listeners = new ArrayList(1);
    public boolean isDiscrete = false;
    public float progress = RecyclerView.DECELERATION_RATE;
    public Object cachedGetValue = null;
    public float cachedStartDelayProgress = -1.0f;
    public float cachedEndProgress = -1.0f;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface AnimationListener {
        void onValueChanged();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface KeyframesWrapper {
        Keyframe getCurrentKeyframe();

        float getEndProgress();

        float getStartDelayProgress();

        boolean isCachedValueEnabled(float f);

        boolean isEmpty();

        boolean isValueChanged(float f);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeyframesWrapperImpl implements KeyframesWrapper {
        public Keyframe cachedCurrentKeyframe = null;
        public float cachedInterpolatedProgress = -1.0f;
        public Keyframe currentKeyframe = findKeyframe(RecyclerView.DECELERATION_RATE);
        public final List keyframes;

        public KeyframesWrapperImpl(List list) {
            this.keyframes = list;
        }

        public final Keyframe findKeyframe(float f) {
            List list = this.keyframes;
            Keyframe keyframe = (Keyframe) list.get(list.size() - 1);
            if (f >= keyframe.getStartProgress()) {
                return keyframe;
            }
            for (int size = list.size() - 2; size >= 1; size--) {
                Keyframe keyframe2 = (Keyframe) list.get(size);
                if (this.currentKeyframe != keyframe2 && f >= keyframe2.getStartProgress() && f < keyframe2.getEndProgress()) {
                    return keyframe2;
                }
            }
            return (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final Keyframe getCurrentKeyframe() {
            return this.currentKeyframe;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float getEndProgress() {
            return ((Keyframe) this.keyframes.get(r1.size() - 1)).getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float getStartDelayProgress() {
            return ((Keyframe) this.keyframes.get(0)).getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isCachedValueEnabled(float f) {
            Keyframe keyframe = this.cachedCurrentKeyframe;
            Keyframe keyframe2 = this.currentKeyframe;
            if (keyframe == keyframe2 && this.cachedInterpolatedProgress == f) {
                return true;
            }
            this.cachedCurrentKeyframe = keyframe2;
            this.cachedInterpolatedProgress = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isEmpty() {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isValueChanged(float f) {
            Keyframe keyframe = this.currentKeyframe;
            if (f >= keyframe.getStartProgress() && f < keyframe.getEndProgress()) {
                return !this.currentKeyframe.isStatic();
            }
            this.currentKeyframe = findKeyframe(f);
            return true;
        }
    }

    public BaseKeyframeAnimation(List list) {
        KeyframesWrapper sizeChangeAmount;
        if (list.isEmpty()) {
            sizeChangeAmount = new AutoMigration_14_15(21);
        } else {
            sizeChangeAmount = list.size() == 1 ? new StateListSizeChange.SizeChangeAmount(list) : new KeyframesWrapperImpl(list);
        }
        this.keyframesWrapper = sizeChangeAmount;
    }

    public final void addUpdateListener(AnimationListener animationListener) {
        this.listeners.add(animationListener);
    }

    public final float getInterpolatedCurrentKeyframeProgress() {
        Interpolator interpolator;
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        Keyframe currentKeyframe = this.keyframesWrapper.getCurrentKeyframe();
        return (currentKeyframe == null || currentKeyframe.isStatic() || (interpolator = currentKeyframe.interpolator) == null) ? RecyclerView.DECELERATION_RATE : interpolator.getInterpolation(getLinearCurrentKeyframeProgress());
    }

    public final float getLinearCurrentKeyframeProgress() {
        if (this.isDiscrete) {
            return RecyclerView.DECELERATION_RATE;
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        Keyframe currentKeyframe = this.keyframesWrapper.getCurrentKeyframe();
        return currentKeyframe.isStatic() ? RecyclerView.DECELERATION_RATE : (this.progress - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress());
    }

    public Object getValue() {
        float linearCurrentKeyframeProgress = getLinearCurrentKeyframeProgress();
        KeyframesWrapper keyframesWrapper = this.keyframesWrapper;
        if (keyframesWrapper.isCachedValueEnabled(linearCurrentKeyframeProgress) && !skipCache()) {
            return this.cachedGetValue;
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        Keyframe currentKeyframe = keyframesWrapper.getCurrentKeyframe();
        Interpolator interpolator = currentKeyframe.xInterpolator;
        Interpolator interpolator2 = currentKeyframe.yInterpolator;
        Object value = (interpolator == null || interpolator2 == null) ? getValue(currentKeyframe, getInterpolatedCurrentKeyframeProgress()) : getValue(currentKeyframe, linearCurrentKeyframeProgress, interpolator.getInterpolation(linearCurrentKeyframeProgress), interpolator2.getInterpolation(linearCurrentKeyframeProgress));
        this.cachedGetValue = value;
        return value;
    }

    public abstract Object getValue(Keyframe keyframe, float f);

    public void setProgress(float f) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        KeyframesWrapper keyframesWrapper = this.keyframesWrapper;
        if (keyframesWrapper.isEmpty()) {
            return;
        }
        float f2 = this.cachedStartDelayProgress;
        if (f2 == -1.0f) {
            f2 = keyframesWrapper.getStartDelayProgress();
            this.cachedStartDelayProgress = f2;
        }
        float f3 = f2;
        if (f < f2) {
            if (f3 == -1.0f) {
                f = keyframesWrapper.getStartDelayProgress();
                this.cachedStartDelayProgress = f;
            }
            f = f3;
        } else {
            float f4 = this.cachedEndProgress;
            if (f4 == -1.0f) {
                f4 = keyframesWrapper.getEndProgress();
                this.cachedEndProgress = f4;
            }
            f3 = f4;
            if (f > f4) {
                if (f3 == -1.0f) {
                    f = keyframesWrapper.getEndProgress();
                    this.cachedEndProgress = f;
                }
                f = f3;
            }
        }
        if (f == this.progress) {
            return;
        }
        this.progress = f;
        if (!keyframesWrapper.isValueChanged(f)) {
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.listeners;
            if (i >= arrayList.size()) {
                AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
                return;
            } else {
                ((AnimationListener) arrayList.get(i)).onValueChanged();
                i++;
            }
        }
    }

    public boolean skipCache() {
        return false;
    }

    public Object getValue(Keyframe keyframe, float f, float f2, float f3) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }
}
