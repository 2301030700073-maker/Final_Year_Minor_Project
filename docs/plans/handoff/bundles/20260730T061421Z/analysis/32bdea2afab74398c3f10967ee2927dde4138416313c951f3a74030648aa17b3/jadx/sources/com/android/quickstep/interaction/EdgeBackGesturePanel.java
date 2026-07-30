package com.android.quickstep.interaction;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import b.e.b.d;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import b.h.a.v;
import b.h.a.y;
import b.l.W;
import c.a.b.a2.g;
import c.a.c.a.a;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class EdgeBackGesturePanel extends View {
    public static final int ARROW_ANGLE_ADDED_PER_1000_SPEED = 4;
    public static final int ARROW_ANGLE_WHEN_EXTENDED_DEGREES = 56;
    public static final int ARROW_LENGTH_DP = 18;
    public static final int ARROW_MAX_ANGLE_SPEED_OFFSET_DEGREES = 4;
    public static final float ARROW_THICKNESS_DP = 2.5f;
    public static final int BASE_TRANSLATION_DP = 32;
    public static final long DISAPPEAR_ARROW_ANIMATION_DURATION_MS = 100;
    public static final long DISAPPEAR_FADE_ANIMATION_DURATION_MS = 80;
    public static final int GESTURE_DURATION_FOR_CLICK_MS = 400;
    public static final String LOG_TAG = "EdgeBackGesturePanel";
    public static final int RUBBER_BAND_AMOUNT = 15;
    public static final int RUBBER_BAND_AMOUNT_APPEAR = 4;
    public final D mAngleAnimation;
    public final E mAngleAppearForce;
    public final E mAngleDisappearForce;
    public float mAngleOffset;
    public final ValueAnimator mArrowDisappearAnimation;
    public final float mArrowLength;
    public int mArrowPaddingEnd;
    public final Path mArrowPath;
    public final float mArrowThickness;
    public boolean mArrowsPointLeft;
    public BackCallback mBackCallback;
    public final float mBaseTranslation;
    public float mCurrentAngle;
    public float mCurrentTranslation;
    public final float mDensity;
    public float mDesiredAngle;
    public float mDesiredTranslation;
    public float mDesiredVerticalTranslation;
    public float mDisappearAmount;
    public final Point mDisplaySize;
    public boolean mDragSlopPassed;
    public int mFingerOffset;
    public boolean mIsLeftPanel;
    public float mMaxTranslation;
    public int mMinArrowPosition;
    public final float mMinDeltaForSwitch;
    public final Paint mPaint;
    public float mPreviousTouchTranslation;
    public final E mRegularTranslationSpring;
    public int mScreenSize;
    public final v mSetGoneEndListener;
    public float mStartX;
    public float mStartY;
    public final float mSwipeThreshold;
    public float mTotalTouchDelta;
    public final D mTranslationAnimation;
    public boolean mTriggerBack;
    public final E mTriggerBackSpring;
    public VelocityTracker mVelocityTracker;
    public float mVerticalTranslation;
    public final D mVerticalTranslationAnimation;
    public long mVibrationTime;
    public static final Interpolator RUBBER_BAND_INTERPOLATOR = new PathInterpolator(0.2f, 1.0f, 1.0f, 1.0f);
    public static final Interpolator RUBBER_BAND_INTERPOLATOR_APPEAR = new PathInterpolator(0.25f, 1.0f, 1.0f, 1.0f);
    public static final C CURRENT_ANGLE = new C("currentAngle") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.2
        @Override // b.h.a.C
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getCurrentAngle();
        }

        @Override // b.h.a.C
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f) {
            edgeBackGesturePanel.setCurrentAngle(f);
        }
    };
    public static final C CURRENT_TRANSLATION = new C("currentTranslation") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.3
        @Override // b.h.a.C
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getCurrentTranslation();
        }

        @Override // b.h.a.C
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f) {
            edgeBackGesturePanel.setCurrentTranslation(f);
        }
    };
    public static final C CURRENT_VERTICAL_TRANSLATION = new C("verticalTranslation") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.4
        @Override // b.h.a.C
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getVerticalTranslation();
        }

        @Override // b.h.a.C
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f) {
            edgeBackGesturePanel.setVerticalTranslation(f);
        }
    };

    public interface BackCallback {
        void cancelBack();

        void triggerBack();
    }

    public EdgeBackGesturePanel(Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams) {
        super(context);
        this.mPaint = new Paint();
        this.mArrowPath = new Path();
        this.mDisplaySize = new Point();
        this.mSetGoneEndListener = new v() { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.1
            @Override // b.h.a.v
            public void onAnimationEnd(y yVar, boolean z, float f, float f2) {
                ArrayList arrayList = yVar.k;
                int indexOf = arrayList.indexOf(this);
                if (indexOf >= 0) {
                    arrayList.set(indexOf, null);
                }
                if (z) {
                    return;
                }
                EdgeBackGesturePanel.this.setVisibility(8);
            }
        };
        this.mDensity = context.getResources().getDisplayMetrics().density;
        this.mBaseTranslation = dp(32.0f);
        this.mArrowLength = dp(18.0f);
        this.mArrowThickness = dp(2.5f);
        this.mMinDeltaForSwitch = dp(32.0f);
        this.mPaint.setStrokeWidth(this.mArrowThickness);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        this.mArrowDisappearAnimation = ofFloat;
        ofFloat.setDuration(100L);
        this.mArrowDisappearAnimation.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        this.mArrowDisappearAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.a2.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                EdgeBackGesturePanel.this.a(valueAnimator);
            }
        });
        this.mAngleAnimation = new D(this, CURRENT_ANGLE);
        E e = new E();
        e.b(500.0f);
        e.a(0.5f);
        this.mAngleAppearForce = e;
        E e2 = new E();
        e2.b(1500.0f);
        e2.a(0.5f);
        e2.i = 90.0f;
        this.mAngleDisappearForce = e2;
        D d2 = this.mAngleAnimation;
        d2.s = this.mAngleAppearForce;
        d2.g = 90.0f;
        this.mTranslationAnimation = new D(this, CURRENT_TRANSLATION);
        E e3 = new E();
        e3.b(1500.0f);
        e3.a(0.75f);
        this.mRegularTranslationSpring = e3;
        E e4 = new E();
        e4.b(450.0f);
        e4.a(0.75f);
        this.mTriggerBackSpring = e4;
        this.mTranslationAnimation.s = this.mRegularTranslationSpring;
        D d3 = new D(this, CURRENT_VERTICAL_TRANSLATION);
        this.mVerticalTranslationAnimation = d3;
        E e5 = new E();
        e5.b(1500.0f);
        e5.a(0.75f);
        d3.s = e5;
        this.mPaint.setColor(context.getColor((context.getResources().getConfiguration().uiMode & 48) == 32 ? R.color.back_arrow_color_light : R.color.back_arrow_color_dark));
        loadDimens();
        updateArrowDirection();
        this.mSwipeThreshold = W.getDimenByName("navigation_edge_action_drag_threshold", context.getResources(), 16);
        viewGroup.addView(this, layoutParams);
        setVisibility(8);
    }

    private Path calculatePath(float f, float f2) {
        if (!this.mArrowsPointLeft) {
            f = -f;
        }
        float lerp = lerp(1.0f, 0.75f, this.mDisappearAmount);
        float f3 = f * lerp;
        float f4 = f2 * lerp;
        this.mArrowPath.reset();
        this.mArrowPath.moveTo(f3, f4);
        this.mArrowPath.lineTo(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mArrowPath.lineTo(f3, -f4);
        return this.mArrowPath;
    }

    private void cancelBack() {
        BackCallback backCallback = this.mBackCallback;
        if (backCallback != null) {
            backCallback.cancelBack();
        }
        D d2 = this.mTranslationAnimation;
        if (d2.f) {
            d2.b(this.mSetGoneEndListener);
        } else {
            setVisibility(8);
        }
    }

    private float dp(float f) {
        return this.mDensity * f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurrentAngle() {
        return this.mCurrentAngle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurrentTranslation() {
        return this.mCurrentTranslation;
    }

    private float getStaticArrowWidth() {
        return polarToCartX(56.0f) * this.mArrowLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getVerticalTranslation() {
        return this.mVerticalTranslation;
    }

    private void handleMoveEvent(MotionEvent motionEvent) {
        float f;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float abs = Math.abs(x - this.mStartX);
        float f2 = y - this.mStartY;
        float f3 = abs - this.mPreviousTouchTranslation;
        if (Math.abs(f3) > RecentsState.NO_OFFSET) {
            if (Math.signum(f3) == Math.signum(this.mTotalTouchDelta)) {
                this.mTotalTouchDelta += f3;
            } else {
                this.mTotalTouchDelta = f3;
            }
        }
        this.mPreviousTouchTranslation = abs;
        if (!this.mDragSlopPassed && abs > this.mSwipeThreshold) {
            this.mDragSlopPassed = true;
            ((VibratorWrapper) VibratorWrapper.INSTANCE.b(getContext())).vibrate(VibratorWrapper.EFFECT_CLICK);
            this.mVibrationTime = SystemClock.uptimeMillis();
            this.mDisappearAmount = RecentsState.NO_OFFSET;
            setAlpha(1.0f);
            setTriggerBack(true, true);
        }
        float f4 = this.mBaseTranslation;
        if (abs > f4) {
            float interpolation = RUBBER_BAND_INTERPOLATOR.getInterpolation(d.f((abs - f4) / (this.mScreenSize - f4), RecentsState.NO_OFFSET, 1.0f));
            float f5 = this.mMaxTranslation;
            float f6 = this.mBaseTranslation;
            f = a.a(f5, f6, interpolation, f6);
        } else {
            float interpolation2 = RUBBER_BAND_INTERPOLATOR_APPEAR.getInterpolation(d.f((f4 - abs) / f4, RecentsState.NO_OFFSET, 1.0f));
            float f7 = this.mBaseTranslation;
            f = f7 - ((f7 / 4.0f) * interpolation2);
        }
        boolean z = this.mTriggerBack;
        if (Math.abs(this.mTotalTouchDelta) > this.mMinDeltaForSwitch) {
            z = this.mTotalTouchDelta > RecentsState.NO_OFFSET;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000);
        float xVelocity = this.mVelocityTracker.getXVelocity();
        this.mAngleOffset = Math.signum(xVelocity) * Math.min((((float) Math.hypot(xVelocity, this.mVelocityTracker.getYVelocity())) / 1000.0f) * 4.0f, 4.0f);
        if ((this.mIsLeftPanel && this.mArrowsPointLeft) || (!this.mIsLeftPanel && !this.mArrowsPointLeft)) {
            this.mAngleOffset *= -1.0f;
        }
        setTriggerBack(Math.abs(f2) <= Math.abs(x - this.mStartX) * 2.0f ? z : false, true);
        if (!this.mTriggerBack) {
            f = 0.0f;
        } else if ((this.mIsLeftPanel && this.mArrowsPointLeft) || (!this.mIsLeftPanel && !this.mArrowsPointLeft)) {
            f -= getStaticArrowWidth();
        }
        setDesiredTranslation(f, true);
        updateAngle(true);
        float height = (getHeight() / 2.0f) - this.mArrowLength;
        setDesiredVerticalTransition(Math.signum(f2) * RUBBER_BAND_INTERPOLATOR.getInterpolation(d.f(Math.abs(f2) / (15.0f * height), RecentsState.NO_OFFSET, 1.0f)) * height, true);
    }

    public static float lerp(float f, float f2, float f3) {
        return a.a(f2, f, f3, f);
    }

    private void loadDimens() {
        Resources resources = getResources();
        this.mArrowPaddingEnd = W.getDimenByName("navigation_edge_panel_padding", resources, 8);
        this.mMinArrowPosition = W.getDimenByName("navigation_edge_arrow_min_y", resources, 64);
        this.mFingerOffset = W.getDimenByName("navigation_edge_finger_offset", resources, 48);
    }

    private float polarToCartX(float f) {
        return (float) Math.cos(Math.toRadians(f));
    }

    private float polarToCartY(float f) {
        return (float) Math.sin(Math.toRadians(f));
    }

    private void resetOnDown() {
        animate().cancel();
        this.mAngleAnimation.c();
        this.mTranslationAnimation.c();
        this.mVerticalTranslationAnimation.c();
        this.mArrowDisappearAnimation.cancel();
        this.mAngleOffset = RecentsState.NO_OFFSET;
        this.mTranslationAnimation.s = this.mRegularTranslationSpring;
        setTriggerBack(false, false);
        setDesiredTranslation(RecentsState.NO_OFFSET, false);
        setCurrentTranslation(RecentsState.NO_OFFSET);
        updateAngle(false);
        this.mPreviousTouchTranslation = RecentsState.NO_OFFSET;
        this.mTotalTouchDelta = RecentsState.NO_OFFSET;
        this.mVibrationTime = 0L;
        setDesiredVerticalTransition(RecentsState.NO_OFFSET, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentAngle(float f) {
        this.mCurrentAngle = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentTranslation(float f) {
        this.mCurrentTranslation = f;
        invalidate();
    }

    private void setDesiredTranslation(float f, boolean z) {
        if (this.mDesiredTranslation != f) {
            this.mDesiredTranslation = f;
            if (z) {
                this.mTranslationAnimation.k(f);
            } else {
                setCurrentTranslation(f);
            }
        }
    }

    private void setDesiredVerticalTransition(float f, boolean z) {
        if (this.mDesiredVerticalTranslation != f) {
            this.mDesiredVerticalTranslation = f;
            if (z) {
                this.mVerticalTranslationAnimation.k(f);
            } else {
                setVerticalTranslation(f);
            }
            invalidate();
        }
    }

    private void setTriggerBack(boolean z, boolean z2) {
        if (this.mTriggerBack != z) {
            this.mTriggerBack = z;
            this.mAngleAnimation.c();
            updateAngle(z2);
            this.mTranslationAnimation.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVerticalTranslation(float f) {
        this.mVerticalTranslation = f;
        invalidate();
    }

    private void triggerBack() {
        BackCallback backCallback = this.mBackCallback;
        if (backCallback != null) {
            backCallback.triggerBack();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.computeCurrentVelocity(1000);
        if ((Math.abs(this.mVelocityTracker.getXVelocity()) < 500.0f) || SystemClock.uptimeMillis() - this.mVibrationTime >= 400) {
            ((VibratorWrapper) VibratorWrapper.INSTANCE.b(getContext())).vibrate(VibratorWrapper.EFFECT_CLICK);
        }
        float f = this.mAngleOffset;
        if (f > -4.0f) {
            this.mAngleOffset = Math.max(-8.0f, f - 8.0f);
            updateAngle(true);
        }
        final g gVar = new g(this);
        D d2 = this.mTranslationAnimation;
        if (!d2.f) {
            gVar.f2043a.c();
            return;
        }
        v vVar = new v() { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.5
            @Override // b.h.a.v
            public void onAnimationEnd(y yVar, boolean z, float f2, float f3) {
                ArrayList arrayList = yVar.k;
                int indexOf = arrayList.indexOf(this);
                if (indexOf >= 0) {
                    arrayList.set(indexOf, null);
                }
                if (z) {
                    return;
                }
                gVar.run();
            }
        };
        if (d2.k.contains(vVar)) {
            return;
        }
        d2.k.add(vVar);
    }

    private void updateAngle(boolean z) {
        float f = this.mTriggerBack ? this.mAngleOffset + 56.0f : 90.0f;
        if (f != this.mDesiredAngle) {
            if (z) {
                this.mAngleAnimation.s = this.mTriggerBack ? this.mAngleAppearForce : this.mAngleDisappearForce;
                this.mAngleAnimation.k(f);
            } else {
                setCurrentAngle(f);
            }
            this.mDesiredAngle = f;
        }
    }

    private void updateArrowDirection() {
        this.mArrowsPointLeft = getLayoutDirection() == 0;
        invalidate();
    }

    private void updatePosition(float f) {
        float max = Math.max(f - this.mFingerOffset, this.mMinArrowPosition) - (getLayoutParams().height / 2.0f);
        setX(this.mIsLeftPanel ? RecentsState.NO_OFFSET : this.mDisplaySize.x - getLayoutParams().width);
        int i = (int) max;
        int i2 = this.mDisplaySize.y;
        if (i < 0) {
            i = 0;
        } else if (i > i2) {
            i = i2;
        }
        setY(i);
    }

    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.mDisappearAmount = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public /* synthetic */ void b() {
        setVisibility(8);
    }

    public void c() {
        this.mAngleOffset = Math.max(RecentsState.NO_OFFSET, this.mAngleOffset + 8.0f);
        updateAngle(true);
        this.mTranslationAnimation.s = this.mTriggerBackSpring;
        setDesiredTranslation(this.mDesiredTranslation - dp(32.0f), true);
        animate().alpha(RecentsState.NO_OFFSET).setDuration(80L).withEndAction(new Runnable() { // from class: c.a.b.a2.f
            @Override // java.lang.Runnable
            public final void run() {
                EdgeBackGesturePanel.this.b();
            }
        });
        this.mArrowDisappearAnimation.start();
    }

    public boolean getIsLeftPanel() {
        return this.mIsLeftPanel;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateArrowDirection();
        loadDimens();
    }

    public void onDestroy() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f = this.mCurrentTranslation - (this.mArrowThickness / 2.0f);
        canvas.save();
        if (!this.mIsLeftPanel) {
            f = getWidth() - f;
        }
        canvas.translate(f, (getHeight() * 0.5f) + this.mVerticalTranslation);
        canvas.drawPath(calculatePath(polarToCartX(this.mCurrentAngle) * this.mArrowLength, polarToCartY(this.mCurrentAngle) * this.mArrowLength), this.mPaint);
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mMaxTranslation = getWidth() - this.mArrowPaddingEnd;
    }

    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDragSlopPassed = false;
            resetOnDown();
            this.mStartX = motionEvent.getX();
            this.mStartY = motionEvent.getY();
            setVisibility(0);
            updatePosition(motionEvent.getY());
            return;
        }
        if (actionMasked == 1) {
            if (this.mTriggerBack) {
                triggerBack();
            } else {
                cancelBack();
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            return;
        }
        if (actionMasked == 2) {
            handleMoveEvent(motionEvent);
        } else {
            if (actionMasked != 3) {
                return;
            }
            cancelBack();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void setBackCallback(BackCallback backCallback) {
        this.mBackCallback = backCallback;
    }

    public void setDisplaySize(Point point) {
        this.mDisplaySize.set(point.x, point.y);
        Point point2 = this.mDisplaySize;
        this.mScreenSize = Math.min(point2.x, point2.y);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setIsLeftPanel(boolean z) {
        this.mIsLeftPanel = z;
    }
}
