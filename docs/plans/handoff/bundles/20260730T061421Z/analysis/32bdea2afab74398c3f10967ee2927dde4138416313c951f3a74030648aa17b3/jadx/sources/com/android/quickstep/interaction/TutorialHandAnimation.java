package com.android.quickstep.interaction;

import android.content.Context;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import b.e.b.b;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;
import java.time.Duration;
import java.util.Objects;

/* loaded from: classes.dex */
public final class TutorialHandAnimation {
    public static final Duration ANIMATION_START_DELAY = Duration.ofMillis(300);
    public final AnimatedVectorDrawable mGestureAnimation;
    public final ImageView mHandCoachingView;

    public TutorialHandAnimation(Context context, View view, int i) {
        this.mHandCoachingView = (ImageView) view.findViewById(R.id.gesture_tutorial_fragment_hand_coaching);
        this.mGestureAnimation = (AnimatedVectorDrawable) b.e(context, i);
    }

    private void start(TutorialController.TutorialType tutorialType) {
        this.mHandCoachingView.setRotationY(tutorialType == TutorialController.TutorialType.LEFT_EDGE_BACK_NAVIGATION ? 180.0f : RecentsState.NO_OFFSET);
        this.mHandCoachingView.setImageDrawable(this.mGestureAnimation);
        ImageView imageView = this.mHandCoachingView;
        final AnimatedVectorDrawable animatedVectorDrawable = this.mGestureAnimation;
        Objects.requireNonNull(animatedVectorDrawable);
        imageView.postDelayed(new Runnable() { // from class: c.a.b.a2.t
            @Override // java.lang.Runnable
            public final void run() {
                animatedVectorDrawable.start();
            }
        }, ANIMATION_START_DELAY.toMillis());
    }

    public void startLoopedAnimation(TutorialController.TutorialType tutorialType) {
        this.mHandCoachingView.setVisibility(0);
        if (this.mGestureAnimation.isRunning()) {
            stop();
        }
        this.mGestureAnimation.clearAnimationCallbacks();
        this.mGestureAnimation.registerAnimationCallback(new Animatable2.AnimationCallback() { // from class: com.android.quickstep.interaction.TutorialHandAnimation.1
            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                super.onAnimationEnd(drawable);
                TutorialHandAnimation.this.mGestureAnimation.start();
            }
        });
        start(tutorialType);
    }

    public void stop() {
        this.mGestureAnimation.clearAnimationCallbacks();
        this.mGestureAnimation.stop();
    }
}
