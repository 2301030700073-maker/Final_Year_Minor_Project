package com.android.launcher3.util;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class FlingAnimation implements ValueAnimator.AnimatorUpdateListener, Runnable {
    public float mAX;
    public float mAY;
    public final TimeInterpolator mAlphaInterpolator = new DecelerateInterpolator(0.75f);
    public float mAnimationTimeFraction;
    public final DragLayer mDragLayer;
    public final DropTarget.DragObject mDragObject;
    public final DragOptions mDragOptions;
    public final ButtonDropTarget mDropTarget;
    public int mDuration;
    public Rect mFrom;
    public Rect mIconRect;
    public final Launcher mLauncher;
    public final float mUX;
    public final float mUY;

    public FlingAnimation(DropTarget.DragObject dragObject, PointF pointF, ButtonDropTarget buttonDropTarget, Launcher launcher, DragOptions dragOptions) {
        this.mDropTarget = buttonDropTarget;
        this.mLauncher = launcher;
        this.mDragObject = dragObject;
        this.mUX = pointF.x / 1000.0f;
        this.mUY = pointF.y / 1000.0f;
        this.mDragLayer = launcher.mDragLayer;
        this.mDragOptions = dragOptions;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f = this.mAnimationTimeFraction;
        float f2 = animatedFraction > f ? 1.0f : animatedFraction / f;
        DragView dragView = this.mDragLayer.mDropView;
        float f3 = this.mDuration * f2;
        dragView.setTranslationX((((this.mAX * f3) * f3) / 2.0f) + (this.mUX * f3) + this.mFrom.left);
        dragView.setTranslationY((((this.mAY * f3) * f3) / 2.0f) + (this.mUY * f3) + this.mFrom.top);
        dragView.setAlpha(1.0f - this.mAlphaInterpolator.getInterpolation(f2));
    }

    @Override // java.lang.Runnable
    public void run() {
        long round;
        this.mIconRect = this.mDropTarget.getIconRect(this.mDragObject);
        Rect rect = new Rect();
        this.mFrom = rect;
        this.mDragLayer.getViewRectRelativeToSelf(this.mDragObject.dragView, rect);
        float scaleX = this.mDragObject.dragView.getScaleX() - 1.0f;
        float measuredWidth = (this.mDragObject.dragView.getMeasuredWidth() * scaleX) / 2.0f;
        float measuredHeight = (scaleX * this.mDragObject.dragView.getMeasuredHeight()) / 2.0f;
        Rect rect2 = this.mFrom;
        rect2.left = (int) (rect2.left + measuredWidth);
        rect2.right = (int) (rect2.right - measuredWidth);
        rect2.top = (int) (rect2.top + measuredHeight);
        rect2.bottom = (int) (rect2.bottom - measuredHeight);
        float abs = Math.abs(this.mUY);
        float abs2 = Math.abs(this.mUX);
        float f = RecentsState.NO_OFFSET;
        if (abs > abs2) {
            float f2 = -this.mFrom.bottom;
            float f3 = this.mUY;
            float f4 = f3 * f3;
            float f5 = (f2 * 2.0f * 0.5f) + f4;
            if (f5 >= RecentsState.NO_OFFSET) {
                this.mAY = 0.5f;
                f = f5;
            } else {
                this.mAY = f4 / ((-f2) * 2.0f);
            }
            double sqrt = ((-this.mUY) - Math.sqrt(f)) / this.mAY;
            this.mAX = (float) ((((this.mIconRect.exactCenterX() + (-this.mFrom.exactCenterX())) - (this.mUX * sqrt)) * 2.0d) / (sqrt * sqrt));
            round = Math.round(sqrt);
        } else {
            float f6 = -this.mFrom.right;
            float f7 = this.mUX;
            float f8 = f7 * f7;
            float f9 = (f6 * 2.0f * 0.5f) + f8;
            if (f9 >= RecentsState.NO_OFFSET) {
                this.mAX = 0.5f;
                f = f9;
            } else {
                this.mAX = f8 / ((-f6) * 2.0f);
            }
            double sqrt2 = ((-this.mUX) - Math.sqrt(f)) / this.mAX;
            this.mAY = (float) ((((this.mIconRect.exactCenterY() + (-this.mFrom.exactCenterY())) - (this.mUY * sqrt2)) * 2.0d) / (sqrt2 * sqrt2));
            round = Math.round(sqrt2);
        }
        int i = (int) round;
        this.mDuration = i;
        this.mAnimationTimeFraction = i / (i + 300);
        this.mDragObject.dragView.setColor(0);
        final int i2 = this.mDuration + 300;
        final long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        TimeInterpolator timeInterpolator = new TimeInterpolator(this) { // from class: com.android.launcher3.util.FlingAnimation.1
            public int mCount = -1;
            public float mOffset = RecentsState.NO_OFFSET;

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f10) {
                int i3 = this.mCount;
                if (i3 < 0) {
                    this.mCount = i3 + 1;
                } else if (i3 == 0) {
                    this.mOffset = Math.min(0.5f, (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis) / i2);
                    this.mCount++;
                }
                return Math.min(1.0f, this.mOffset + f10);
            }
        };
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.util.FlingAnimation.2
            @Override // java.lang.Runnable
            public void run() {
                FlingAnimation.this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
                FlingAnimation flingAnimation = FlingAnimation.this;
                flingAnimation.mDropTarget.completeDrop(flingAnimation.mDragObject);
            }
        };
        this.mDropTarget.onDrop(this.mDragObject, this.mDragOptions);
        this.mDragLayer.animateView(this.mDragObject.dragView, this, i2, timeInterpolator, runnable, 0, null);
    }
}
