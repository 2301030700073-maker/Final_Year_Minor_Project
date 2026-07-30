package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.FirstFrameAnimatorHelper;
import com.android.launcher3.util.DefaultDisplay;
import java.util.Objects;

/* loaded from: classes.dex */
public class FirstFrameAnimatorHelper implements ViewTreeObserver.OnDrawListener, View.OnAttachStateChangeListener {
    public long mGlobalFrameCount;
    public View mRootView;

    public class MyListener implements ValueAnimator.AnimatorUpdateListener {
        public boolean mAdjustedSecondFrameTime;
        public boolean mHandlingOnAnimationUpdate;
        public long mStartFrame;
        public long mStartTime = -1;

        public MyListener(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(final ValueAnimator valueAnimator) {
            View view;
            long currentTimeMillis = System.currentTimeMillis();
            if (this.mStartTime == -1) {
                this.mStartFrame = FirstFrameAnimatorHelper.this.mGlobalFrameCount;
                this.mStartTime = currentTimeMillis;
            }
            long currentPlayTime = valueAnimator.getCurrentPlayTime();
            boolean z = Float.compare(1.0f, valueAnimator.getAnimatedFraction()) == 0;
            if (this.mHandlingOnAnimationUpdate || (view = FirstFrameAnimatorHelper.this.mRootView) == null || view.getWindowVisibility() != 0 || currentPlayTime >= valueAnimator.getDuration() || z) {
                return;
            }
            this.mHandlingOnAnimationUpdate = true;
            FirstFrameAnimatorHelper firstFrameAnimatorHelper = FirstFrameAnimatorHelper.this;
            long j = firstFrameAnimatorHelper.mGlobalFrameCount - this.mStartFrame;
            if (j != 0 || currentTimeMillis >= this.mStartTime + 1000 || currentPlayTime <= 0) {
                int singleFrameMs = DefaultDisplay.getSingleFrameMs(FirstFrameAnimatorHelper.this.mRootView.getContext());
                if (j == 1) {
                    long j2 = this.mStartTime;
                    if (currentTimeMillis < 1000 + j2 && !this.mAdjustedSecondFrameTime) {
                        long j3 = singleFrameMs;
                        if (currentTimeMillis > j2 + j3 && currentPlayTime > j3) {
                            valueAnimator.setCurrentPlayTime(j3);
                            this.mAdjustedSecondFrameTime = true;
                        }
                    }
                }
                if (j > 1) {
                    FirstFrameAnimatorHelper.this.mRootView.post(new Runnable() { // from class: c.a.a.q
                        @Override // java.lang.Runnable
                        public final void run() {
                            FirstFrameAnimatorHelper.MyListener myListener = FirstFrameAnimatorHelper.MyListener.this;
                            ValueAnimator valueAnimator2 = valueAnimator;
                            Objects.requireNonNull(myListener);
                            valueAnimator2.removeUpdateListener(myListener);
                        }
                    });
                }
            } else {
                firstFrameAnimatorHelper.mRootView.invalidate();
                valueAnimator.setCurrentPlayTime(0L);
            }
            this.mHandlingOnAnimationUpdate = false;
        }
    }

    public FirstFrameAnimatorHelper(View view) {
        view.addOnAttachStateChangeListener(this);
        if (view.isAttachedToWindow()) {
            onViewAttachedToWindow(view);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.mGlobalFrameCount++;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        View rootView = view.getRootView();
        this.mRootView = rootView;
        rootView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        View view2 = this.mRootView;
        if (view2 != null) {
            view2.getViewTreeObserver().removeOnDrawListener(this);
            this.mRootView = null;
        }
    }
}
