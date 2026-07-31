package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import androidx.compose.ui.graphics.colorspace.Rgb$$ExternalSyntheticLambda3;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieValueAnimator extends BaseLottieAnimator implements Choreographer.FrameCallback {
    public LottieComposition composition;
    public float frame;
    public float frameRaw;
    public long lastFrameTimeNs;
    public float maxFrame;
    public float minFrame;
    public int repeatCount;
    public boolean running;
    public float speed;
    public boolean speedReversedForRepeatMode;

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        notifyEnd(isReversed());
        removeFrameCallback(true);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        if (this.running) {
            removeFrameCallback(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null || !this.running) {
            return;
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        float abs = (this.lastFrameTimeNs != 0 ? j - r2 : 0L) / ((1.0E9f / lottieComposition.frameRate) / Math.abs(this.speed));
        float f = this.frameRaw;
        if (isReversed()) {
            abs = -abs;
        }
        float f2 = f + abs;
        float minFrame = getMinFrame();
        float maxFrame = getMaxFrame();
        PointF pointF = MiscUtils.pathFromDataCurrentPoint;
        boolean z = f2 >= minFrame && f2 <= maxFrame;
        float clamp = MiscUtils.clamp(f2, getMinFrame(), getMaxFrame());
        this.frameRaw = clamp;
        this.frame = clamp;
        this.lastFrameTimeNs = j;
        if (z) {
            notifyUpdate();
        } else if (getRepeatCount() == -1 || this.repeatCount < getRepeatCount()) {
            if (getRepeatMode() == 2) {
                this.speedReversedForRepeatMode = !this.speedReversedForRepeatMode;
                this.speed = -this.speed;
            } else {
                float maxFrame2 = isReversed() ? getMaxFrame() : getMinFrame();
                this.frameRaw = maxFrame2;
                this.frame = maxFrame2;
            }
            this.lastFrameTimeNs = j;
            notifyUpdate();
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
            }
            this.repeatCount++;
        } else {
            float minFrame2 = this.speed < RecyclerView.DECELERATION_RATE ? getMinFrame() : getMaxFrame();
            this.frameRaw = minFrame2;
            this.frame = minFrame2;
            removeFrameCallback(true);
            notifyUpdate();
            notifyEnd(isReversed());
        }
        if (this.composition != null) {
            float f3 = this.frame;
            float f4 = this.minFrame;
            if (f3 < f4 || f3 > this.maxFrame) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(f4), Float.valueOf(this.maxFrame), Float.valueOf(this.frame)));
            }
        }
        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float minFrame;
        float maxFrame;
        float minFrame2;
        if (this.composition == null) {
            return RecyclerView.DECELERATION_RATE;
        }
        if (isReversed()) {
            minFrame = getMaxFrame() - this.frame;
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        } else {
            minFrame = this.frame - getMinFrame();
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        }
        return minFrame / (maxFrame - minFrame2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(getAnimatedValueAbsolute());
    }

    public final float getAnimatedValueAbsolute() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return RecyclerView.DECELERATION_RATE;
        }
        float f = this.frame;
        float f2 = lottieComposition.startFrame;
        return (f - f2) / (lottieComposition.endFrame - f2);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return 0L;
        }
        return (long) lottieComposition.getDuration();
    }

    public final float getMaxFrame() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return RecyclerView.DECELERATION_RATE;
        }
        float f = this.maxFrame;
        return f == 2.1474836E9f ? lottieComposition.endFrame : f;
    }

    public final float getMinFrame() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return RecyclerView.DECELERATION_RATE;
        }
        float f = this.minFrame;
        return f == -2.1474836E9f ? lottieComposition.startFrame : f;
    }

    public final boolean isReversed() {
        return this.speed < RecyclerView.DECELERATION_RATE;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.running;
    }

    public final void removeFrameCallback(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.running = false;
        }
    }

    public final void setFrame(float f) {
        if (this.frameRaw == f) {
            return;
        }
        float clamp = MiscUtils.clamp(f, getMinFrame(), getMaxFrame());
        this.frameRaw = clamp;
        this.frame = clamp;
        this.lastFrameTimeNs = 0L;
        notifyUpdate();
    }

    public final void setMinAndMaxFrames(float f, float f2) {
        if (f > f2) {
            Rgb$$ExternalSyntheticLambda3.m("minFrame (", f, ") must be <= maxFrame (", f2, ")");
            return;
        }
        LottieComposition lottieComposition = this.composition;
        float f3 = lottieComposition == null ? -3.4028235E38f : lottieComposition.startFrame;
        float f4 = lottieComposition == null ? Float.MAX_VALUE : lottieComposition.endFrame;
        float clamp = MiscUtils.clamp(f, f3, f4);
        float clamp2 = MiscUtils.clamp(f2, f3, f4);
        if (clamp == this.minFrame && clamp2 == this.maxFrame) {
            return;
        }
        this.minFrame = clamp;
        this.maxFrame = clamp2;
        setFrame((int) MiscUtils.clamp(this.frame, clamp, clamp2));
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.speedReversedForRepeatMode) {
            return;
        }
        this.speedReversedForRepeatMode = false;
        this.speed = -this.speed;
    }
}
