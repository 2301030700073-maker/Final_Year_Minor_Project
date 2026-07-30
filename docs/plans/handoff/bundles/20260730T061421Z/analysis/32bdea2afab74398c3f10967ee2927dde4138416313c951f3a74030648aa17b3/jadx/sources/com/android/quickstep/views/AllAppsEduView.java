package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import b.e.d.a;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class AllAppsEduView extends AbstractFloatingView {
    public AnimatorSet mAnimation;
    public GradientDrawable mCircle;
    public int mCircleSizePx;
    public GradientDrawable mGradient;
    public Launcher mLauncher;
    public int mMaxHeightPx;
    public int mPaddingPx;
    public int mWidthPx;

    public AllAppsEduView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCircle = (GradientDrawable) context.getDrawable(R.drawable.all_apps_edu_circle);
        this.mCircleSizePx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_circle_size);
        this.mPaddingPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_padding);
        this.mWidthPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_width);
        this.mMaxHeightPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_max_height);
        setWillNotDraw(false);
    }

    private void init(Launcher launcher) {
        this.mLauncher = launcher;
        int colorAccent = W.getColorAccent(launcher);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, W.getAttrBoolean(launcher, R.attr.isMainColorDark) ? new int[]{-1275068417, 16777215} : new int[]{a.j(colorAccent, 127), a.j(colorAccent, 0)});
        this.mGradient = gradientDrawable;
        float f = this.mWidthPx / 2.0f;
        gradientDrawable.setCornerRadii(new float[]{f, f, f, f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET});
        int i = this.mMaxHeightPx;
        int i2 = this.mCircleSizePx;
        int i3 = this.mPaddingPx;
        int i4 = (i - i2) + i3;
        this.mCircle.setBounds(i3, i4, i3 + i2, i2 + i4);
        GradientDrawable gradientDrawable2 = this.mGradient;
        int i5 = this.mMaxHeightPx;
        gradientDrawable2.setBounds(0, i5 - this.mCircleSizePx, this.mWidthPx, i5);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(this.mWidthPx, this.mMaxHeightPx);
        layoutParams.ignoreInsets = true;
        ((FrameLayout.LayoutParams) layoutParams).leftMargin = (deviceProfile.widthPx - this.mWidthPx) / 2;
        ((FrameLayout.LayoutParams) layoutParams).topMargin = (deviceProfile.heightPx - deviceProfile.hotseatBarSizePx) - this.mMaxHeightPx;
        setLayoutParams(layoutParams);
    }

    private void playAnimation() {
        if (this.mAnimation != null) {
            return;
        }
        this.mAnimation = new AnimatorSet();
        final Rect rect = new Rect(this.mCircle.getBounds());
        final Rect rect2 = new Rect(this.mGradient.getBounds());
        final Rect rect3 = new Rect();
        final float f = (this.mMaxHeightPx - this.mCircleSizePx) - this.mPaddingPx;
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.ACCEL, RecentsState.NO_OFFSET, 0.08f);
        stateAnimationConfig.duration = 1200;
        stateAnimationConfig.userControlled = false;
        final AnimatorPlaybackController createAnimationToNewWorkspace = this.mLauncher.getStateManager().createAnimationToNewWorkspace(LauncherState.ALL_APPS, stateAnimationConfig);
        final float f2 = 0.15f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setInterpolator(Interpolators.LINEAR);
        long j = 1800;
        ofFloat.setDuration(j);
        final int i = 600;
        final int i2 = 1200;
        ofFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.quickstep.views.AllAppsEduView.1
            public MultiValueUpdateListener.FloatProp mCircleAlpha;
            public MultiValueUpdateListener.FloatProp mCircleScale;
            public MultiValueUpdateListener.FloatProp mDeltaY;
            public MultiValueUpdateListener.FloatProp mGradientAlpha;

            {
                this.mCircleAlpha = new MultiValueUpdateListener.FloatProp(RecentsState.NO_OFFSET, 255.0f, RecentsState.NO_OFFSET, i, Interpolators.LINEAR);
                this.mCircleScale = new MultiValueUpdateListener.FloatProp(2.0f, 1.0f, RecentsState.NO_OFFSET, i, Interpolators.OVERSHOOT_1_7);
                this.mDeltaY = new MultiValueUpdateListener.FloatProp(RecentsState.NO_OFFSET, f, i, i2, Interpolators.FAST_OUT_SLOW_IN);
                this.mGradientAlpha = new MultiValueUpdateListener.FloatProp(RecentsState.NO_OFFSET, 255.0f, i, i2 * 0.3f, Interpolators.LINEAR);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public void onUpdate(float f3) {
                rect3.set(rect);
                rect3.offset(0, (int) (-this.mDeltaY.value));
                Utilities.scaleRectAboutCenter(rect3, this.mCircleScale.value);
                AllAppsEduView.this.mCircle.setBounds(rect3);
                AllAppsEduView.this.mCircle.setAlpha((int) this.mCircleAlpha.value);
                AllAppsEduView.this.mGradient.setAlpha((int) this.mGradientAlpha.value);
                rect3.set(rect2);
                rect3.top = (int) (r7.top - this.mDeltaY.value);
                AllAppsEduView.this.mGradient.setBounds(rect3);
                AllAppsEduView.this.invalidate();
                createAnimationToNewWorkspace.setPlayFraction(Utilities.mapToRange(this.mDeltaY.value, RecentsState.NO_OFFSET, f, RecentsState.NO_OFFSET, f2, Interpolators.LINEAR));
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.AllAppsEduView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AllAppsEduView.this.mCircle.setAlpha(0);
                AllAppsEduView.this.mGradient.setAlpha(0);
            }
        });
        this.mAnimation.play(ofFloat);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.15f, RecentsState.NO_OFFSET);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.d2.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatorPlaybackController.this.setPlayFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ofFloat2.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        ofFloat2.setStartDelay(j);
        ofFloat2.setDuration(250L);
        this.mAnimation.play(ofFloat2);
        this.mAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.AllAppsEduView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AllAppsEduView.this.mAnimation = null;
                createAnimationToNewWorkspace.dispatchOnCancel();
                AllAppsEduView.this.handleClose(false);
            }
        });
        this.mAnimation.start();
    }

    public static void show(Launcher launcher) {
        AllAppsEduView allAppsEduView = (AllAppsEduView) launcher.getViewCache().getView(R.layout.all_apps_edu_view, launcher, (ViewGroup) launcher.mDragLayer.getParent());
        allAppsEduView.init(launcher);
        launcher.mDragLayer.addView(allAppsEduView);
        launcher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALL_APPS_EDU_SHOWN);
        allAppsEduView.requestLayout();
        allAppsEduView.playAnimation();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        this.mLauncher.mDragLayer.removeView(this);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 512) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsOpen = true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        AnimatorSet animatorSet = this.mAnimation;
        return animatorSet != null && animatorSet.isRunning();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsOpen = false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mGradient.draw(canvas);
        this.mCircle.draw(canvas);
    }
}
