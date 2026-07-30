package com.android.launcher3.pageindicators;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewOutlineProvider;
import b.l.W;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PageIndicatorDots extends View implements PageIndicator {
    public final int mActiveColor;
    public int mActivePage;
    public ObjectAnimator mAnimator;
    public final Paint mCirclePaint;
    public float mCurrentPosition;
    public final float mDotRadius;
    public float[] mEntryAnimationRadiusFactors;
    public float mFinalPosition;
    public final int mInActiveColor;
    public final boolean mIsRtl;
    public int mNumPages;
    public static final RectF sTempRect = new RectF();
    public static final Property CURRENT_POSITION = new Property(Float.TYPE, "current_position") { // from class: com.android.launcher3.pageindicators.PageIndicatorDots.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((PageIndicatorDots) obj).mCurrentPosition);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            PageIndicatorDots pageIndicatorDots = (PageIndicatorDots) obj;
            pageIndicatorDots.mCurrentPosition = ((Float) obj2).floatValue();
            pageIndicatorDots.invalidate();
            pageIndicatorDots.invalidateOutline();
        }
    };

    public class AnimationCycleListener extends AnimatorListenerAdapter {
        public boolean mCancelled = false;

        public AnimationCycleListener(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mCancelled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.mCancelled) {
                return;
            }
            PageIndicatorDots pageIndicatorDots = PageIndicatorDots.this;
            pageIndicatorDots.mAnimator = null;
            pageIndicatorDots.animateToPosition(pageIndicatorDots.mFinalPosition);
        }
    }

    public class MyOutlineProver extends ViewOutlineProvider {
        public MyOutlineProver(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            PageIndicatorDots pageIndicatorDots = PageIndicatorDots.this;
            if (pageIndicatorDots.mEntryAnimationRadiusFactors == null) {
                RectF activeRect = pageIndicatorDots.getActiveRect();
                outline.setRoundRect((int) activeRect.left, (int) activeRect.top, (int) activeRect.right, (int) activeRect.bottom, PageIndicatorDots.this.mDotRadius);
            }
        }
    }

    public PageIndicatorDots(Context context) {
        this(context, null);
    }

    public final void animateToPosition(float f) {
        this.mFinalPosition = f;
        if (Math.abs(this.mCurrentPosition - f) < 0.1f) {
            this.mCurrentPosition = this.mFinalPosition;
        }
        if (this.mAnimator != null || Float.compare(this.mCurrentPosition, this.mFinalPosition) == 0) {
            return;
        }
        float f2 = this.mCurrentPosition;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<PageIndicatorDots, Float>) CURRENT_POSITION, f2 > this.mFinalPosition ? f2 - 0.5f : f2 + 0.5f);
        this.mAnimator = ofFloat;
        ofFloat.addListener(new AnimationCycleListener(null));
        this.mAnimator.setDuration(150L);
        this.mAnimator.start();
    }

    public final RectF getActiveRect() {
        float f = this.mCurrentPosition;
        float f2 = (int) f;
        float f3 = f - f2;
        float f4 = this.mDotRadius;
        float f5 = f4 * 2.0f;
        float f6 = f4 * 3.0f;
        float width = ((getWidth() - (this.mNumPages * f6)) + this.mDotRadius) / 2.0f;
        sTempRect.top = (getHeight() * 0.5f) - this.mDotRadius;
        sTempRect.bottom = (getHeight() * 0.5f) + this.mDotRadius;
        RectF rectF = sTempRect;
        float f7 = (f2 * f6) + width;
        rectF.left = f7;
        float f8 = f5 + f7;
        rectF.right = f8;
        if (f3 < 0.5f) {
            rectF.right = (f3 * f6 * 2.0f) + f8;
        } else {
            rectF.right = f8 + f6;
            rectF.left = ((f3 - 0.5f) * f6 * 2.0f) + f7;
        }
        if (this.mIsRtl) {
            float width2 = sTempRect.width();
            RectF rectF2 = sTempRect;
            float width3 = getWidth();
            RectF rectF3 = sTempRect;
            rectF2.right = width3 - rectF3.left;
            rectF3.left = rectF3.right - width2;
        }
        return sTempRect;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f = this.mDotRadius * 3.0f;
        float f2 = this.mDotRadius;
        float width = (((getWidth() - (this.mNumPages * f)) + f2) / 2.0f) + f2;
        float height = getHeight() / 2;
        int i = 0;
        if (this.mEntryAnimationRadiusFactors != null) {
            if (this.mIsRtl) {
                width = getWidth() - width;
                f = -f;
            }
            while (i < this.mEntryAnimationRadiusFactors.length) {
                this.mCirclePaint.setColor(i == this.mActivePage ? this.mActiveColor : this.mInActiveColor);
                canvas.drawCircle(width, height, this.mDotRadius * this.mEntryAnimationRadiusFactors[i], this.mCirclePaint);
                width += f;
                i++;
            }
            return;
        }
        this.mCirclePaint.setColor(this.mInActiveColor);
        while (i < this.mNumPages) {
            canvas.drawCircle(width, height, this.mDotRadius, this.mCirclePaint);
            width += f;
            i++;
        }
        this.mCirclePaint.setColor(this.mActiveColor);
        RectF activeRect = getActiveRect();
        float f3 = this.mDotRadius;
        canvas.drawRoundRect(activeRect, f3, f3, this.mCirclePaint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getMode(i) == 1073741824 ? View.MeasureSpec.getSize(i) : (int) (((this.mNumPages * 3) + 2) * this.mDotRadius), View.MeasureSpec.getMode(i2) == 1073741824 ? View.MeasureSpec.getSize(i2) : (int) (this.mDotRadius * 4.0f));
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setActiveMarker(int i) {
        if (this.mActivePage != i) {
            this.mActivePage = i;
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setMarkersCount(int i) {
        this.mNumPages = i;
        requestLayout();
    }

    public PageIndicatorDots(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PageIndicatorDots(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.mCirclePaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mDotRadius = getResources().getDimension(R.dimen.page_indicator_dot_size) / 2.0f;
        setOutlineProvider(new MyOutlineProver(null));
        this.mActiveColor = W.getColorAccent(context);
        this.mInActiveColor = W.getAttrColor(context, android.R.attr.colorControlHighlight);
        this.mIsRtl = Utilities.isRtl(getResources());
    }
}
