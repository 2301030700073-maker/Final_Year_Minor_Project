package com.android.launcher3.keyboard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class FocusIndicatorHelper implements View.OnFocusChangeListener, ValueAnimator.AnimatorUpdateListener {
    public float mAlpha;
    public final View mContainer;
    public ObjectAnimator mCurrentAnimation;
    public View mCurrentView;
    public View mLastFocusedView;
    public final int mMaxAlpha;
    public float mShift;
    public View mTargetView;
    public static final Property ALPHA = new Property(Float.TYPE, "alpha") { // from class: com.android.launcher3.keyboard.FocusIndicatorHelper.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((FocusIndicatorHelper) obj).mAlpha);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            FocusIndicatorHelper focusIndicatorHelper = (FocusIndicatorHelper) obj;
            float floatValue = ((Float) obj2).floatValue();
            focusIndicatorHelper.mAlpha = floatValue;
            focusIndicatorHelper.mPaint.setAlpha((int) (floatValue * focusIndicatorHelper.mMaxAlpha));
        }
    };
    public static final Property SHIFT = new Property(Float.TYPE, "shift") { // from class: com.android.launcher3.keyboard.FocusIndicatorHelper.2
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((FocusIndicatorHelper) obj).mShift);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((FocusIndicatorHelper) obj).mShift = ((Float) obj2).floatValue();
        }
    };
    public static final RectEvaluator RECT_EVALUATOR = new RectEvaluator(new Rect());
    public static final Rect sTempRect1 = new Rect();
    public static final Rect sTempRect2 = new Rect();
    public final Rect mDirtyRect = new Rect();
    public boolean mIsDirty = false;
    public final Paint mPaint = new Paint(1);

    public class SimpleFocusIndicatorHelper extends FocusIndicatorHelper {
        public SimpleFocusIndicatorHelper(View view) {
            super(view);
        }

        @Override // com.android.launcher3.keyboard.FocusIndicatorHelper
        public void viewToRect(View view, Rect rect) {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public class ViewSetListener extends AnimatorListenerAdapter {
        public final boolean mCallOnCancel;
        public boolean mCalled = false;
        public final View mViewToSet;

        public ViewSetListener(View view, boolean z) {
            this.mViewToSet = view;
            this.mCallOnCancel = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.mCallOnCancel) {
                return;
            }
            this.mCalled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.mCalled) {
                return;
            }
            FocusIndicatorHelper focusIndicatorHelper = FocusIndicatorHelper.this;
            focusIndicatorHelper.mCurrentView = this.mViewToSet;
            focusIndicatorHelper.mShift = RecentsState.NO_OFFSET;
            focusIndicatorHelper.mTargetView = null;
            this.mCalled = true;
        }
    }

    public FocusIndicatorHelper(View view) {
        this.mContainer = view;
        int color = view.getResources().getColor(R.color.focused_background);
        this.mMaxAlpha = Color.alpha(color);
        this.mPaint.setColor(color | (-16777216));
        this.mAlpha = RecentsState.NO_OFFSET;
        this.mPaint.setAlpha((int) (this.mMaxAlpha * RecentsState.NO_OFFSET));
        this.mShift = RecentsState.NO_OFFSET;
    }

    public void draw(Canvas canvas) {
        Rect drawRect;
        if (this.mAlpha <= RecentsState.NO_OFFSET || (drawRect = getDrawRect()) == null) {
            return;
        }
        this.mDirtyRect.set(drawRect);
        canvas.drawRect(this.mDirtyRect, this.mPaint);
        this.mIsDirty = true;
    }

    public final Rect getDrawRect() {
        View view;
        View view2 = this.mCurrentView;
        if (view2 == null || !view2.isAttachedToWindow()) {
            return null;
        }
        viewToRect(this.mCurrentView, sTempRect1);
        if (this.mShift <= RecentsState.NO_OFFSET || (view = this.mTargetView) == null) {
            return sTempRect1;
        }
        viewToRect(view, sTempRect2);
        return RECT_EVALUATOR.evaluate(this.mShift, sTempRect1, sTempRect2);
    }

    public void invalidateDirty() {
        if (this.mIsDirty) {
            this.mContainer.invalidate(this.mDirtyRect);
            this.mIsDirty = false;
        }
        Rect drawRect = getDrawRect();
        if (drawRect != null) {
            this.mContainer.invalidate(drawRect);
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        invalidateDirty();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            ObjectAnimator objectAnimator = this.mCurrentAnimation;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.mCurrentAnimation = null;
            }
            if (this.mAlpha > 0.2f) {
                this.mTargetView = view;
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat((Property<?, Float>) ALPHA, 1.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) SHIFT, 1.0f));
                this.mCurrentAnimation = ofPropertyValuesHolder;
                ofPropertyValuesHolder.addListener(new ViewSetListener(view, true));
            } else {
                this.mCurrentView = view;
                this.mShift = RecentsState.NO_OFFSET;
                this.mTargetView = null;
                this.mCurrentAnimation = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat((Property<?, Float>) ALPHA, 1.0f));
            }
            this.mLastFocusedView = view;
        } else if (this.mLastFocusedView == view) {
            this.mLastFocusedView = null;
            ObjectAnimator objectAnimator2 = this.mCurrentAnimation;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
                this.mCurrentAnimation = null;
            }
            ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat((Property<?, Float>) ALPHA, RecentsState.NO_OFFSET));
            this.mCurrentAnimation = ofPropertyValuesHolder2;
            ofPropertyValuesHolder2.addListener(new ViewSetListener(null, false));
        }
        invalidateDirty();
        if (!z) {
            view = null;
        }
        this.mLastFocusedView = view;
        ObjectAnimator objectAnimator3 = this.mCurrentAnimation;
        if (objectAnimator3 != null) {
            objectAnimator3.addUpdateListener(this);
            this.mCurrentAnimation.setDuration(150L).start();
        }
    }

    public abstract void viewToRect(View view, Rect rect);
}
