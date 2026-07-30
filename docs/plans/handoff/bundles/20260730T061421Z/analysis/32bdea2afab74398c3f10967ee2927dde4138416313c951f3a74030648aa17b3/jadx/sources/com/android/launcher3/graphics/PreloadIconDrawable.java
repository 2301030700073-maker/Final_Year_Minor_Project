package com.android.launcher3.graphics;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.util.Pair;
import android.util.Property;
import android.util.SparseArray;
import b.l.W;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.quickstep.fallback.RecentsState;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class PreloadIconDrawable extends FastBitmapDrawable {
    public static final Property INTERNAL_STATE = new Property(Float.TYPE, "internalStateProgress") { // from class: com.android.launcher3.graphics.PreloadIconDrawable.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((PreloadIconDrawable) obj).mInternalStateProgress);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((PreloadIconDrawable) obj).setInternalProgress(((Float) obj2).floatValue());
        }
    };
    public static final SparseArray sShadowCache = new SparseArray();
    public ObjectAnimator mCurrentAnim;
    public float mIconScale;
    public final int mIndicatorColor;
    public float mInternalStateProgress;
    public final ItemInfoWithIcon mItem;
    public final PathMeasure mPathMeasure;
    public final Paint mProgressPaint;
    public boolean mRanFinishAnimation;
    public final Path mScaledProgressPath;
    public final Path mScaledTrackPath;
    public Bitmap mShadowBitmap;
    public final Path mShapePath;
    public final Matrix mTmpMatrix;
    public int mTrackAlpha;
    public float mTrackLength;

    public PreloadIconDrawable(ItemInfoWithIcon itemInfoWithIcon, Context context) {
        super(itemInfoWithIcon.bitmap);
        int HSVToColor;
        this.mTmpMatrix = new Matrix();
        this.mPathMeasure = new PathMeasure();
        this.mItem = itemInfoWithIcon;
        this.mShapePath = IconShape.getShapePath();
        this.mScaledTrackPath = new Path();
        this.mScaledProgressPath = new Path();
        Paint paint = new Paint(3);
        this.mProgressPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mProgressPaint.setStrokeCap(Paint.Cap.ROUND);
        float[] fArr = new float[3];
        Color.colorToHSV(this.mIconColor, fArr);
        if (fArr[1] < 0.2f) {
            HSVToColor = W.getColorAccent(context);
        } else {
            fArr[2] = Math.max(0.6f, fArr[2]);
            HSVToColor = Color.HSVToColor(fArr);
        }
        this.mIndicatorColor = HSVToColor;
        setInternalProgress(RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.FastBitmapDrawable
    public void drawInternal(Canvas canvas, Rect rect) {
        if (this.mRanFinishAnimation) {
            canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
            return;
        }
        this.mProgressPaint.setColor(this.mIndicatorColor);
        this.mProgressPaint.setAlpha(this.mTrackAlpha);
        Bitmap bitmap = this.mShadowBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, rect.left, rect.top, this.mProgressPaint);
        }
        canvas.drawPath(this.mScaledProgressPath, this.mProgressPaint);
        int save = canvas.save();
        float f = this.mIconScale;
        canvas.scale(f, f, rect.exactCenterX(), rect.exactCenterY());
        canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mTmpMatrix.setScale(((rect.width() - 14.0f) - 4.0f) / 100.0f, ((rect.height() - 14.0f) - 4.0f) / 100.0f);
        this.mTmpMatrix.postTranslate(rect.left + 7.0f + 2.0f, rect.top + 7.0f + 2.0f);
        this.mShapePath.transform(this.mTmpMatrix, this.mScaledTrackPath);
        float width = rect.width() / 100;
        this.mProgressPaint.setStrokeWidth(7.0f * width);
        int width2 = rect.width();
        int height = rect.height();
        float f = width * 2.0f;
        int i = (width2 << 16) | height;
        WeakReference weakReference = (WeakReference) sShadowCache.get(i);
        Pair pair = weakReference != null ? (Pair) weakReference.get() : null;
        Bitmap bitmap = (pair == null || !((Path) pair.first).equals(this.mShapePath)) ? null : (Bitmap) pair.second;
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(width2, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            this.mProgressPaint.setShadowLayer(f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 1426063360);
            this.mProgressPaint.setColor(2012147438);
            this.mProgressPaint.setAlpha(255);
            canvas.drawPath(this.mScaledTrackPath, this.mProgressPaint);
            this.mProgressPaint.clearShadowLayer();
            canvas.setBitmap(null);
            sShadowCache.put(i, new WeakReference(Pair.create(this.mShapePath, bitmap)));
        }
        this.mShadowBitmap = bitmap;
        this.mPathMeasure.setPath(this.mScaledTrackPath, true);
        this.mTrackLength = this.mPathMeasure.getLength();
        setInternalProgress(this.mInternalStateProgress);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        updateInternalState(i * 0.01f, getBounds().width() > 0, false);
        return true;
    }

    public final void setInternalProgress(float f) {
        this.mInternalStateProgress = f;
        if (f <= RecentsState.NO_OFFSET) {
            this.mIconScale = 0.6f;
            this.mScaledTrackPath.reset();
            this.mTrackAlpha = 255;
            setIsDisabled(true);
        }
        if (f < 1.0f && f > RecentsState.NO_OFFSET) {
            this.mPathMeasure.getSegment(RecentsState.NO_OFFSET, f * this.mTrackLength, this.mScaledProgressPath, true);
            this.mIconScale = 0.6f;
            this.mTrackAlpha = 255;
            setIsDisabled(true);
        } else if (f >= 1.0f) {
            setIsDisabled(this.mItem.isDisabled());
            this.mScaledTrackPath.set(this.mScaledProgressPath);
            float f2 = (f - 1.0f) / 0.3f;
            if (f2 >= 1.0f) {
                this.mIconScale = 1.0f;
                this.mTrackAlpha = 0;
            } else {
                this.mTrackAlpha = Math.round((1.0f - f2) * 255.0f);
                this.mIconScale = (f2 * 0.39999998f) + 0.6f;
            }
        }
        invalidateSelf();
    }

    public final void updateInternalState(float f, boolean z, boolean z2) {
        ObjectAnimator objectAnimator = this.mCurrentAnim;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mCurrentAnim = null;
        }
        if (Float.compare(f, this.mInternalStateProgress) == 0) {
            return;
        }
        if (f < this.mInternalStateProgress) {
            z = false;
        }
        if (!z || this.mRanFinishAnimation) {
            setInternalProgress(f);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<PreloadIconDrawable, Float>) INTERNAL_STATE, f);
        this.mCurrentAnim = ofFloat;
        ofFloat.setDuration((long) ((f - this.mInternalStateProgress) * 500.0f));
        this.mCurrentAnim.setInterpolator(Interpolators.LINEAR);
        if (z2) {
            this.mCurrentAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.graphics.PreloadIconDrawable.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PreloadIconDrawable.this.mRanFinishAnimation = true;
                }
            });
        }
        this.mCurrentAnim.start();
    }
}
