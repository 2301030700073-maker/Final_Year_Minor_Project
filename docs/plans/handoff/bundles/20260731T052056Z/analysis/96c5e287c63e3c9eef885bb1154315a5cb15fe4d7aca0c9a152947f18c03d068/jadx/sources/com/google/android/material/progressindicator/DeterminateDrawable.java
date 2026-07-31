package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;
import androidx.compose.animation.core.Animation;
import androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.DrawingDelegate;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeterminateDrawable extends DrawableWithAnimatedVisibilityChange {
    public static final MaterialButton.AnonymousClass1 INDICATOR_LENGTH_IN_LEVEL = new MaterialButton.AnonymousClass1(1);
    public final DrawingDelegate.ActiveIndicator activeIndicator;
    public ValueAnimator amplitudeAnimator;
    public TimeInterpolator amplitudeInterpolator;
    public TimeInterpolator amplitudeOffInterpolator;
    public TimeInterpolator amplitudeOnInterpolator;
    public final LinearDrawingDelegate drawingDelegate;
    public final ValueAnimator phaseAnimator;
    public boolean skipAnimationOnLevelChange;
    public final SpringAnimation springAnimation;
    public float targetAmplitudeFraction;

    public DeterminateDrawable(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec, LinearDrawingDelegate linearDrawingDelegate) {
        super(context, linearProgressIndicatorSpec);
        this.skipAnimationOnLevelChange = false;
        this.drawingDelegate = linearDrawingDelegate;
        DrawingDelegate.ActiveIndicator activeIndicator = new DrawingDelegate.ActiveIndicator();
        this.activeIndicator = activeIndicator;
        activeIndicator.isDeterminate = true;
        SpringAnimation springAnimation = new SpringAnimation(this, INDICATOR_LENGTH_IN_LEVEL);
        this.springAnimation = springAnimation;
        SpringForce springForce = new SpringForce();
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        springAnimation.mSpring = springForce;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.phaseAnimator = valueAnimator;
        valueAnimator.setDuration(1000L);
        valueAnimator.setFloatValues(RecyclerView.DECELERATION_RATE, 1.0f);
        valueAnimator.setRepeatCount(-1);
        valueAnimator.addUpdateListener(new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(2, this, linearProgressIndicatorSpec));
        if (linearProgressIndicatorSpec.hasWavyEffect(true) && linearProgressIndicatorSpec.waveSpeed != 0) {
            valueAnimator.start();
        }
        if (this.growFraction != 1.0f) {
            this.growFraction = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.clipBounds)) {
            canvas.save();
            Rect bounds = getBounds();
            float growFraction = getGrowFraction();
            ObjectAnimator objectAnimator = this.showAnimator;
            boolean z = objectAnimator != null && objectAnimator.isRunning();
            ObjectAnimator objectAnimator2 = this.hideAnimator;
            this.drawingDelegate.validateSpecAndAdjustCanvas(canvas, bounds, growFraction, z, objectAnimator2 != null && objectAnimator2.isRunning());
            float phaseFraction = getPhaseFraction();
            DrawingDelegate.ActiveIndicator activeIndicator = this.activeIndicator;
            activeIndicator.phaseFraction = phaseFraction;
            Paint.Style style = Paint.Style.FILL;
            Paint paint = this.paint;
            paint.setStyle(style);
            paint.setAntiAlias(true);
            LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.baseSpec;
            activeIndicator.color = linearProgressIndicatorSpec.indicatorColors[0];
            int i = linearProgressIndicatorSpec.indicatorTrackGapSize;
            LinearDrawingDelegate linearDrawingDelegate = this.drawingDelegate;
            if (i > 0) {
                if (!Animation.CC.m23m((Object) linearDrawingDelegate)) {
                    i = (int) ((RegexKt.clamp(activeIndicator.endFraction, RecyclerView.DECELERATION_RATE, 0.01f) * i) / 0.01f);
                }
                this.drawingDelegate.fillTrack(canvas, paint, activeIndicator.endFraction, 1.0f, linearProgressIndicatorSpec.trackColor, this.totalAlpha, i);
            } else {
                linearDrawingDelegate.fillTrack(canvas, paint, RecyclerView.DECELERATION_RATE, 1.0f, linearProgressIndicatorSpec.trackColor, this.totalAlpha, 0);
            }
            int i2 = this.totalAlpha;
            LinearDrawingDelegate linearDrawingDelegate2 = this.drawingDelegate;
            linearDrawingDelegate2.getClass();
            int compositeARGBWithAlpha = UStringsKt.compositeARGBWithAlpha(activeIndicator.color, i2);
            linearDrawingDelegate2.drawingDeterminateIndicator = activeIndicator.isDeterminate;
            float f = activeIndicator.startFraction;
            float f2 = activeIndicator.endFraction;
            int i3 = activeIndicator.gapSize;
            linearDrawingDelegate2.drawLine(canvas, paint, f, f2, compositeARGBWithAlpha, i3, i3, activeIndicator.amplitudeFraction, activeIndicator.phaseFraction, true);
            int i4 = linearProgressIndicatorSpec.indicatorColors[0];
            int i5 = this.totalAlpha;
            LinearDrawingDelegate linearDrawingDelegate3 = this.drawingDelegate;
            linearDrawingDelegate3.getClass();
            int compositeARGBWithAlpha2 = UStringsKt.compositeARGBWithAlpha(i4, i5);
            linearDrawingDelegate3.drawingDeterminateIndicator = false;
            LinearProgressIndicatorSpec linearProgressIndicatorSpec2 = linearDrawingDelegate3.spec;
            int min = Math.min(linearProgressIndicatorSpec2.trackStopIndicatorSize, linearProgressIndicatorSpec2.trackThickness);
            if (min > 0 && compositeARGBWithAlpha2 != 0) {
                paint.setStyle(style);
                paint.setColor(compositeARGBWithAlpha2);
                Integer num = linearProgressIndicatorSpec2.trackStopIndicatorPadding;
                float f3 = min;
                linearDrawingDelegate3.drawRoundedBlock(canvas, paint, new DrawingDelegate.PathPoint(new float[]{(linearDrawingDelegate3.trackLength / 2.0f) - (num != null ? (linearProgressIndicatorSpec2.trackStopIndicatorSize / 2.0f) + num.floatValue() : linearDrawingDelegate3.displayedTrackThickness / 2.0f), RecyclerView.DECELERATION_RATE}, new float[]{1.0f, RecyclerView.DECELERATION_RATE}), f3, f3, (linearDrawingDelegate3.displayedCornerRadius * f3) / linearDrawingDelegate3.displayedTrackThickness, null, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, false);
            }
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.drawingDelegate.getPreferredHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        this.drawingDelegate.getClass();
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.springAnimation.skipToEnd();
        this.activeIndicator.endFraction = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        float f = i;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.baseSpec;
        float f2 = (f < linearProgressIndicatorSpec.waveAmplitudeRampProgressMin * 10000.0f || f > linearProgressIndicatorSpec.waveAmplitudeRampProgressMax * 10000.0f) ? RecyclerView.DECELERATION_RATE : 1.0f;
        boolean z = this.skipAnimationOnLevelChange;
        DrawingDelegate.ActiveIndicator activeIndicator = this.activeIndicator;
        SpringAnimation springAnimation = this.springAnimation;
        if (z) {
            springAnimation.skipToEnd();
            activeIndicator.endFraction = f / 10000.0f;
            invalidateSelf();
            activeIndicator.amplitudeFraction = f2;
            invalidateSelf();
        } else {
            int width = getBounds().width();
            int height = getBounds().height();
            if (width > 0 && height > 0) {
                if (Animation.CC.m23m((Object) this.drawingDelegate)) {
                    springAnimation.setMinimumVisibleChange(10000.0f / width);
                } else {
                    springAnimation.setMinimumVisibleChange((float) (10000.0d / (Math.min(height, width) * 3.141592653589793d)));
                }
            }
            springAnimation.mValue = activeIndicator.endFraction * 10000.0f;
            springAnimation.mStartValueIsSet = true;
            springAnimation.animateToFinalPosition(f);
        }
        return true;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean setVisibleInternal(boolean z, boolean z2, boolean z3) {
        boolean visibleInternal = super.setVisibleInternal(z, z2, z3);
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.animatorDurationScaleProvider;
        ContentResolver contentResolver = this.context.getContentResolver();
        animatorDurationScaleProvider.getClass();
        float f = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f == RecyclerView.DECELERATION_RATE) {
            this.skipAnimationOnLevelChange = true;
            return visibleInternal;
        }
        this.skipAnimationOnLevelChange = false;
        this.springAnimation.mSpring.setStiffness(50.0f / f);
        return visibleInternal;
    }
}
