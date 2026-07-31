package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.compose.ui.unit.DpKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
class ClockHandView extends View {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final float centerDotRadius;
    public boolean changedDuringTouch;
    public int circleRadius;
    public int currentLevel;
    public double degRad;
    public boolean isMultiLevel;
    public final ArrayList listeners;
    public float originalDeg;
    public final Paint paint;
    public final ValueAnimator rotationAnimator;
    public final RectF selectorBox;
    public final int selectorRadius;
    public final int selectorStrokeWidth;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.timepicker.ClockHandView$1, reason: invalid class name */
    public final class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnRotateListener {
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.rotationAnimator = valueAnimator;
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        this.currentLevel = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockHandView, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Operation$State.resolveInteger(context, R.attr.motionDurationLong2, 200);
        DpKt.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.selectorRadius = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.selectorStrokeWidth = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = r5.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(RecyclerView.DECELERATION_RATE);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        obtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i = ClockHandView.$r8$clinit;
                ClockHandView.this.setHandRotationInternal(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        valueAnimator.addListener(new AnonymousClass1());
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i = this.currentLevel;
        int i2 = this.circleRadius;
        if (i == 2) {
            i2 = Math.round(i2 * 0.66f);
        }
        float f = width;
        float f2 = i2;
        float cos = (((float) Math.cos(this.degRad)) * f2) + f;
        float f3 = height;
        float sin = (f2 * ((float) Math.sin(this.degRad))) + f3;
        Paint paint = this.paint;
        paint.setStrokeWidth(RecyclerView.DECELERATION_RATE);
        canvas.drawCircle(cos, sin, this.selectorRadius, paint);
        double sin2 = Math.sin(this.degRad);
        paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(f, f3, width + ((int) (Math.cos(this.degRad) * r3)), height + ((int) (r3 * sin2)), paint);
        canvas.drawCircle(f, f3, this.centerDotRadius, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.rotationAnimator.isRunning()) {
            return;
        }
        setHandRotation(this.originalDeg);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked == 0) {
            this.changedDuringTouch = false;
            z = true;
            z2 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z2 = this.changedDuringTouch;
            if (this.isMultiLevel) {
                this.currentLevel = ((float) Math.hypot((double) (x - ((float) (getWidth() / 2))), (double) (y - ((float) (getHeight() / 2))))) <= ((float) Math.round(((float) this.circleRadius) * 0.66f)) + ViewUtils.dpToPx(getContext(), 12) ? 2 : 1;
            }
            z = false;
        } else {
            z2 = false;
            z = false;
        }
        boolean z4 = this.changedDuringTouch;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i = degrees + 90;
        if (i < 0) {
            i = degrees + 450;
        }
        float f = i;
        boolean z5 = this.originalDeg != f;
        if (!z || !z5) {
            if (z5 || z2) {
                setHandRotation(f);
            }
            this.changedDuringTouch = z4 | z3;
            return true;
        }
        z3 = true;
        this.changedDuringTouch = z4 | z3;
        return true;
    }

    public final void setHandRotation(float f) {
        this.rotationAnimator.cancel();
        setHandRotationInternal(f);
    }

    public final void setHandRotationInternal(float f) {
        float f2 = f % 360.0f;
        this.originalDeg = f2;
        this.degRad = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i = this.currentLevel;
        int i2 = this.circleRadius;
        if (i == 2) {
            i2 = Math.round(i2 * 0.66f);
        }
        float f3 = width;
        float f4 = i2;
        float cos = (((float) Math.cos(this.degRad)) * f4) + f3;
        float sin = (f4 * ((float) Math.sin(this.degRad))) + height;
        float f5 = this.selectorRadius;
        this.selectorBox.set(cos - f5, sin - f5, cos + f5, sin + f5);
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((OnRotateListener) it.next());
            if (Math.abs(clockFaceView.currentHandRotation - f2) > 0.001f) {
                clockFaceView.currentHandRotation = f2;
                clockFaceView.findIntersectingTextView();
            }
        }
        invalidate();
    }
}
