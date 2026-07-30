package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.view.ViewOverlay;
import c.a.a.E0.k;
import com.android.launcher3.anim.Interpolators;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class LiveTileOverlay extends Drawable {
    public static final long ICON_ANIM_DURATION = 120;
    public float mCornerRadius;
    public RectF mCurrentRect;
    public Drawable mIcon;
    public Animator mIconAnimator;
    public boolean mIsAttached;
    public static final FloatProperty PROGRESS = new FloatProperty("progress") { // from class: com.android.quickstep.views.LiveTileOverlay.1
        @Override // android.util.Property
        public Float get(LiveTileOverlay liveTileOverlay) {
            return Float.valueOf(liveTileOverlay.mIconAnimationProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(LiveTileOverlay liveTileOverlay, float f) {
            liveTileOverlay.setIconAnimationProgress(f);
        }
    };
    public static final LiveTileOverlay INSTANCE = new LiveTileOverlay();
    public final Paint mPaint = new Paint();
    public final Rect mBoundsRect = new Rect();
    public boolean mDrawEnabled = true;
    public float mIconAnimationProgress = RecentsState.NO_OFFSET;

    public LiveTileOverlay() {
        this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconAnimationProgress(float f) {
        this.mIconAnimationProgress = f;
        invalidateSelf();
    }

    public boolean attach(ViewOverlay viewOverlay) {
        if (viewOverlay == null || this.mIsAttached) {
            return false;
        }
        viewOverlay.add(this);
        this.mIsAttached = true;
        return true;
    }

    public float cancelIconAnimation() {
        Animator animator = this.mIconAnimator;
        if (animator != null) {
            animator.cancel();
        }
        return this.mIconAnimationProgress;
    }

    public void detach(ViewOverlay viewOverlay) {
        if (viewOverlay != null) {
            viewOverlay.remove(this);
            this.mIsAttached = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF = this.mCurrentRect;
        if (rectF == null || !this.mDrawEnabled) {
            return;
        }
        float f = this.mCornerRadius;
        canvas.drawRoundRect(rectF, f, f, this.mPaint);
        if (this.mIcon == null || this.mIconAnimationProgress <= RecentsState.NO_OFFSET) {
            return;
        }
        canvas.save();
        float interpolation = ((k) Interpolators.clampToProgress(Interpolators.FAST_OUT_SLOW_IN, RecentsState.NO_OFFSET, 1.0f)).getInterpolation(this.mIconAnimationProgress);
        canvas.translate(this.mCurrentRect.centerX() - ((this.mIcon.getBounds().width() / 2) * interpolation), this.mCurrentRect.top - ((this.mIcon.getBounds().height() / 2) * interpolation));
        canvas.scale(interpolation, interpolation);
        this.mIcon.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setDrawEnabled(boolean z) {
        if (this.mDrawEnabled != z) {
            this.mDrawEnabled = z;
            invalidateSelf();
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
    }

    public void startIconAnimation() {
        Animator animator = this.mIconAnimator;
        if (animator != null) {
            animator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, PROGRESS, 1.0f);
        this.mIconAnimator = ofFloat;
        ofFloat.setDuration(120L).setInterpolator(Interpolators.LINEAR);
        this.mIconAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.LiveTileOverlay.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                LiveTileOverlay.this.mIconAnimator = null;
            }
        });
        this.mIconAnimator.start();
    }

    public void update(RectF rectF, float f) {
        invalidateSelf();
        this.mCurrentRect = rectF;
        this.mCornerRadius = f;
        rectF.roundOut(this.mBoundsRect);
        setBounds(this.mBoundsRect);
        invalidateSelf();
    }
}
