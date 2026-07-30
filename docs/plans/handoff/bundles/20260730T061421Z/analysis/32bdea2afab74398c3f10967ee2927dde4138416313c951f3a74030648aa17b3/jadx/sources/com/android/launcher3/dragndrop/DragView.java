package com.android.launcher3.dragndrop;

import android.animation.FloatArrayEvaluator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import com.android.launcher3.FirstFrameAnimatorHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class DragView extends View implements StateManager.StateListener {
    public static final ColorMatrix sTempMatrix1 = new ColorMatrix();
    public static final ColorMatrix sTempMatrix2 = new ColorMatrix();
    public ValueAnimator mAnim;
    public int mAnimatedShiftX;
    public int mAnimatedShiftY;
    public Drawable mBadge;
    public ColorMatrixColorFilter mBaseFilter;
    public Drawable mBgSpringDrawable;
    public Bitmap mBitmap;
    public final int mBlurSizeOutline;
    public Bitmap mCrossFadeBitmap;
    public float mCrossFadeProgress;
    public float[] mCurrentFilter;
    public final DragLayer mDragLayer;
    public Rect mDragRegion;
    public boolean mDrawBitmap;
    public Drawable mFgSpringDrawable;
    public ValueAnimator mFilterAnimator;
    public boolean mHasDrawn;
    public final float mInitialScale;
    public int mLastTouchX;
    public int mLastTouchY;
    public final Launcher mLauncher;
    public Paint mPaint;
    public final int mRegistrationX;
    public final int mRegistrationY;
    public final float mScaleOnDrop;
    public Path mScaledMaskPath;
    public final int[] mTempLoc;
    public SpringFloatValue mTranslateX;
    public SpringFloatValue mTranslateY;

    public class SpringFloatValue {
        public static final C VALUE = new C("value") { // from class: com.android.launcher3.dragndrop.DragView.SpringFloatValue.1
            @Override // b.h.a.C
            public float getValue(Object obj) {
                return ((SpringFloatValue) obj).mValue;
            }

            @Override // b.h.a.C
            public void setValue(Object obj, float f) {
                SpringFloatValue springFloatValue = (SpringFloatValue) obj;
                springFloatValue.mValue = f;
                springFloatValue.mView.invalidate();
            }
        };
        public final float mDelta;
        public final D mSpring;
        public float mValue;
        public final View mView;

        public SpringFloatValue(View view, float f) {
            this.mView = view;
            D d2 = new D(this, VALUE, RecentsState.NO_OFFSET);
            d2.h = -f;
            d2.g = f;
            E e = new E(RecentsState.NO_OFFSET);
            e.a(1.0f);
            e.b(4000.0f);
            d2.s = e;
            this.mSpring = d2;
            this.mDelta = view.getResources().getDisplayMetrics().density * 8.0f;
        }
    }

    public DragView(Launcher launcher, Bitmap bitmap, int i, int i2, final float f, float f2, float f3) {
        super(launcher);
        this.mDrawBitmap = true;
        this.mTempLoc = new int[2];
        this.mDragRegion = null;
        this.mHasDrawn = false;
        this.mCrossFadeProgress = RecentsState.NO_OFFSET;
        this.mLauncher = launcher;
        this.mDragLayer = launcher.mDragLayer;
        new FirstFrameAnimatorHelper(this);
        final float width = (bitmap.getWidth() + f3) / bitmap.getWidth();
        setScaleX(f);
        setScaleY(f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        this.mAnim = ofFloat;
        ofFloat.setDuration(150L);
        this.mAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.H0.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DragView dragView = DragView.this;
                float f4 = f;
                float f5 = width;
                Objects.requireNonNull(dragView);
                float floatValue = ((f5 - f4) * ((Float) valueAnimator.getAnimatedValue()).floatValue()) + f4;
                dragView.setScaleX(floatValue);
                dragView.setScaleY(floatValue);
                if (dragView.isAttachedToWindow()) {
                    return;
                }
                valueAnimator.cancel();
            }
        });
        this.mBitmap = bitmap;
        this.mDragRegion = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.mRegistrationX = i;
        this.mRegistrationY = i2;
        this.mInitialScale = f;
        this.mScaleOnDrop = f2;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        measure(makeMeasureSpec, makeMeasureSpec);
        this.mPaint = new Paint(2);
        this.mBlurSizeOutline = getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        setElevation(getResources().getDimension(R.dimen.drag_elevation));
    }

    public final void animateFilterTo(float[] fArr) {
        float[] fArr2 = this.mCurrentFilter;
        if (fArr2 == null) {
            fArr2 = new ColorMatrix().getArray();
        }
        this.mCurrentFilter = Arrays.copyOf(fArr2, fArr2.length);
        ValueAnimator valueAnimator = this.mFilterAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new FloatArrayEvaluator(this.mCurrentFilter), fArr2, fArr);
        this.mFilterAnimator = ofObject;
        ofObject.setDuration(120L);
        this.mFilterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.dragndrop.DragView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DragView.this.updateColorFilter();
            }
        });
        this.mFilterAnimator.start();
    }

    public final void applyTranslation() {
        setTranslationX((this.mLastTouchX - this.mRegistrationX) + this.mAnimatedShiftX);
        setTranslationY((this.mLastTouchY - this.mRegistrationY) + this.mAnimatedShiftY);
    }

    public void move(int i, int i2) {
        int i3;
        if (i > 0 && i2 > 0 && (i3 = this.mLastTouchX) > 0 && this.mLastTouchY > 0 && this.mScaledMaskPath != null) {
            SpringFloatValue springFloatValue = this.mTranslateX;
            D d2 = springFloatValue.mSpring;
            float f = springFloatValue.mDelta;
            d2.k(Utilities.boundToRange(i3 - i, -f, f));
            SpringFloatValue springFloatValue2 = this.mTranslateY;
            float f2 = this.mLastTouchY - i2;
            D d3 = springFloatValue2.mSpring;
            float f3 = springFloatValue2.mDelta;
            d3.k(Utilities.boundToRange(f2, -f3, f3));
        }
        this.mLastTouchX = i;
        this.mLastTouchY = i2;
        applyTranslation();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLauncher.getStateManager().mListeners.add(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mLauncher.getStateManager().mListeners.remove(this);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.mHasDrawn = true;
        if (this.mDrawBitmap) {
            boolean z = this.mCrossFadeProgress > RecentsState.NO_OFFSET && this.mCrossFadeBitmap != null;
            if (z) {
                this.mPaint.setAlpha(z ? (int) ((1.0f - this.mCrossFadeProgress) * 255.0f) : 255);
            }
            canvas.drawBitmap(this.mBitmap, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.mPaint);
            if (z) {
                this.mPaint.setAlpha((int) (this.mCrossFadeProgress * 255.0f));
                int save = canvas.save();
                canvas.scale((this.mBitmap.getWidth() * 1.0f) / this.mCrossFadeBitmap.getWidth(), (this.mBitmap.getHeight() * 1.0f) / this.mCrossFadeBitmap.getHeight());
                canvas.drawBitmap(this.mCrossFadeBitmap, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.mPaint);
                canvas.restoreToCount(save);
            }
        }
        if (this.mScaledMaskPath != null) {
            int save2 = canvas.save();
            canvas.clipPath(this.mScaledMaskPath);
            this.mBgSpringDrawable.draw(canvas);
            canvas.translate(this.mTranslateX.mValue, this.mTranslateY.mValue);
            this.mFgSpringDrawable.draw(canvas);
            canvas.restoreToCount(save2);
            this.mBadge.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        setVisibility((launcherState == LauncherState.NORMAL || launcherState == LauncherState.SPRING_LOADED) ? 0 : 4);
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        this.mPaint.setAlpha((int) (f * 255.0f));
        invalidate();
    }

    public void setColor(int i) {
        if (this.mPaint == null) {
            this.mPaint = new Paint(2);
        }
        if (i == 0) {
            if (this.mCurrentFilter == null) {
                updateColorFilter();
                return;
            } else {
                animateFilterTo(new ColorMatrix().getArray());
                return;
            }
        }
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(RecentsState.NO_OFFSET);
        ColorMatrix colorMatrix2 = new ColorMatrix();
        colorMatrix2.setScale(Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f, Color.alpha(i) / 255.0f);
        colorMatrix.postConcat(colorMatrix2);
        animateFilterTo(colorMatrix.getArray());
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public final void updateColorFilter() {
        if (this.mCurrentFilter == null) {
            this.mPaint.setColorFilter(null);
            if (this.mScaledMaskPath != null) {
                this.mBgSpringDrawable.setColorFilter(this.mBaseFilter);
                this.mFgSpringDrawable.setColorFilter(this.mBaseFilter);
                this.mBadge.setColorFilter(this.mBaseFilter);
            }
        } else {
            ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(this.mCurrentFilter);
            this.mPaint.setColorFilter(colorMatrixColorFilter);
            if (this.mScaledMaskPath != null) {
                ColorMatrixColorFilter colorMatrixColorFilter2 = this.mBaseFilter;
                if (colorMatrixColorFilter2 != null) {
                    colorMatrixColorFilter2.getColorMatrix(sTempMatrix1);
                    sTempMatrix2.set(this.mCurrentFilter);
                    sTempMatrix1.postConcat(sTempMatrix2);
                    colorMatrixColorFilter = new ColorMatrixColorFilter(sTempMatrix1);
                }
                this.mBgSpringDrawable.setColorFilter(colorMatrixColorFilter);
                this.mFgSpringDrawable.setColorFilter(colorMatrixColorFilter);
                this.mBadge.setColorFilter(colorMatrixColorFilter);
            }
        }
        invalidate();
    }
}
