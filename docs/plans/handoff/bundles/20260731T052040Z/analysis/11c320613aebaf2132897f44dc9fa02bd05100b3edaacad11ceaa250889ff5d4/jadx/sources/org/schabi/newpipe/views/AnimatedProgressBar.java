package org.schabi.newpipe.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ProgressBar;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedProgressBar extends ProgressBar {
    public ProgressBarAnimation animation;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ProgressBarAnimation extends Animation {
        public final float from;
        public final AnimatedProgressBar progressBar;
        public final float to;

        public ProgressBarAnimation(AnimatedProgressBar animatedProgressBar, float f, float f2) {
            this.progressBar = animatedProgressBar;
            this.from = f;
            this.to = f2;
            setDuration(500L);
            setInterpolator(new AccelerateDecelerateInterpolator());
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            super.applyTransformation(f, transformation);
            float f2 = this.from;
            this.progressBar.setProgress((int) Modifier.CC.m(this.to, f2, f, f2));
        }
    }

    public AnimatedProgressBar(Context context) {
        super(context);
        this.animation = null;
    }

    public synchronized void setProgressAnimated(int i) {
        ProgressBarAnimation progressBarAnimation = this.animation;
        if (progressBarAnimation != null) {
            progressBarAnimation.cancel();
            this.animation = null;
        }
        clearAnimation();
        ProgressBarAnimation progressBarAnimation2 = new ProgressBarAnimation(this, getProgress(), i);
        this.animation = progressBarAnimation2;
        startAnimation(progressBarAnimation2);
    }

    public AnimatedProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animation = null;
    }

    public AnimatedProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.animation = null;
    }
}
