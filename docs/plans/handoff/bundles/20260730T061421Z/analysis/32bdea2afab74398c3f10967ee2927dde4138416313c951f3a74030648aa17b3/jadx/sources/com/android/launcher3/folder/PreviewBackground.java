package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Region;
import android.graphics.Shader;
import android.util.Property;
import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R$styleable;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class PreviewBackground extends CellLayout.DelegatedCellDrawing {
    public static final Property SHADOW_ALPHA;
    public static final Property STROKE_ALPHA;
    public int basePreviewOffsetX;
    public int basePreviewOffsetY;
    public int mBgColor;
    public int mDotColor;
    public CellLayout mDrawingDelegate;
    public View mInvalidateDelegate;
    public ValueAnimator mScaleAnimator;
    public ObjectAnimator mShadowAnimator;
    public ObjectAnimator mStrokeAlphaAnimator;
    public int mStrokeColor;
    public float mStrokeWidth;
    public int previewSize;
    public final PorterDuffXfermode mShadowPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
    public RadialGradient mShadowShader = null;
    public final Matrix mShaderMatrix = new Matrix();
    public final Path mPath = new Path();
    public final Paint mPaint = new Paint(1);
    public float mScale = 1.0f;
    public float mColorMultiplier = 1.0f;
    public int mStrokeAlpha = 225;
    public int mShadowAlpha = 255;
    public boolean isClipping = true;

    static {
        Class<Integer> cls = Integer.class;
        STROKE_ALPHA = new Property(cls, "strokeAlpha") { // from class: com.android.launcher3.folder.PreviewBackground.1
            @Override // android.util.Property
            public Object get(Object obj) {
                return Integer.valueOf(((PreviewBackground) obj).mStrokeAlpha);
            }

            @Override // android.util.Property
            public void set(Object obj, Object obj2) {
                PreviewBackground previewBackground = (PreviewBackground) obj;
                previewBackground.mStrokeAlpha = ((Integer) obj2).intValue();
                previewBackground.invalidate();
            }
        };
        SHADOW_ALPHA = new Property(cls, "shadowAlpha") { // from class: com.android.launcher3.folder.PreviewBackground.2
            @Override // android.util.Property
            public Object get(Object obj) {
                return Integer.valueOf(((PreviewBackground) obj).mShadowAlpha);
            }

            @Override // android.util.Property
            public void set(Object obj, Object obj2) {
                PreviewBackground previewBackground = (PreviewBackground) obj;
                previewBackground.mShadowAlpha = ((Integer) obj2).intValue();
                previewBackground.invalidate();
            }
        };
    }

    public final void animateScale(final float f, final float f2, final Runnable runnable, final Runnable runnable2) {
        final float f3 = this.mScale;
        final float f4 = this.mColorMultiplier;
        ValueAnimator valueAnimator = this.mScaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        this.mScaleAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.folder.PreviewBackground.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                float animatedFraction = valueAnimator2.getAnimatedFraction();
                PreviewBackground previewBackground = PreviewBackground.this;
                float f5 = 1.0f - animatedFraction;
                previewBackground.mScale = (f3 * f5) + (f * animatedFraction);
                previewBackground.mColorMultiplier = (f5 * f4) + (animatedFraction * f2);
                previewBackground.invalidate();
            }
        });
        this.mScaleAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewBackground.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable3 = runnable2;
                if (runnable3 != null) {
                    runnable3.run();
                }
                PreviewBackground.this.mScaleAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        });
        this.mScaleAnimator.setDuration(100L);
        this.mScaleAnimator.start();
    }

    public void drawBackground(Canvas canvas) {
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(getBgColor());
        IconShape.sInstance.drawShape(canvas, getOffsetX(), getOffsetY(), getScaledRadius(), this.mPaint);
        drawShadow(canvas);
    }

    public void drawBackgroundStroke(Canvas canvas) {
        this.mPaint.setColor(GraphicsUtils.setColorAlphaBound(this.mStrokeColor, this.mStrokeAlpha));
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
        IconShape.sInstance.drawShape(canvas, getOffsetX() + 1.0f, getOffsetY() + 1.0f, getScaledRadius() - 1.0f, this.mPaint);
    }

    @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
    public void drawOverItem(Canvas canvas) {
        if (this.isClipping) {
            drawBackgroundStroke(canvas);
        }
    }

    public void drawShadow(Canvas canvas) {
        int save;
        if (this.mShadowShader == null) {
            return;
        }
        float scaledRadius = getScaledRadius();
        float f = this.mStrokeWidth + scaledRadius;
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(-16777216);
        int offsetX = getOffsetX();
        int offsetY = getOffsetY();
        if (canvas.isHardwareAccelerated()) {
            float f2 = offsetX;
            float f3 = offsetY;
            save = canvas.saveLayer(f2 - this.mStrokeWidth, f3, f2 + scaledRadius + f, f3 + f + f, null);
        } else {
            save = canvas.save();
            canvas.clipPath(getClipPath(), Region.Op.DIFFERENCE);
        }
        int i = save;
        this.mShaderMatrix.setScale(f, f);
        float f4 = offsetX;
        float f5 = offsetY;
        this.mShaderMatrix.postTranslate(scaledRadius + f4, f + f5);
        this.mShadowShader.setLocalMatrix(this.mShaderMatrix);
        this.mPaint.setAlpha(this.mShadowAlpha);
        this.mPaint.setShader(this.mShadowShader);
        canvas.drawPaint(this.mPaint);
        this.mPaint.setAlpha(255);
        this.mPaint.setShader(null);
        if (canvas.isHardwareAccelerated()) {
            this.mPaint.setXfermode(this.mShadowPorterDuffXfermode);
            IconShape.sInstance.drawShape(canvas, f4, f5, scaledRadius, this.mPaint);
            this.mPaint.setXfermode(null);
        }
        canvas.restoreToCount(i);
    }

    @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
    public void drawUnderItem(Canvas canvas) {
        drawBackground(canvas);
        if (this.isClipping) {
            return;
        }
        drawBackgroundStroke(canvas);
    }

    public int getBgColor() {
        return GraphicsUtils.setColorAlphaBound(this.mBgColor, (int) Math.min(225.0f, this.mColorMultiplier * 160.0f));
    }

    public Path getClipPath() {
        this.mPath.reset();
        IconShape.sInstance.addToPath(this.mPath, getOffsetX(), getOffsetY(), getScaledRadius());
        return this.mPath;
    }

    public int getOffsetX() {
        return this.basePreviewOffsetX - (getScaledRadius() - (this.previewSize / 2));
    }

    public int getOffsetY() {
        return this.basePreviewOffsetY - (getScaledRadius() - (this.previewSize / 2));
    }

    public int getScaledRadius() {
        return (int) (this.mScale * (this.previewSize / 2));
    }

    public void invalidate() {
        View view = this.mInvalidateDelegate;
        if (view != null) {
            view.invalidate();
        }
        CellLayout cellLayout = this.mDrawingDelegate;
        if (cellLayout != null) {
            cellLayout.invalidate();
        }
    }

    public void setup(Context context, ActivityContext activityContext, View view, int i, int i2) {
        this.mInvalidateDelegate = view;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(R$styleable.FolderIconPreview);
        this.mDotColor = obtainStyledAttributes.getColor(0, 0);
        this.mStrokeColor = obtainStyledAttributes.getColor(2, 0);
        this.mBgColor = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        int i3 = deviceProfile.folderIconSizePx;
        this.previewSize = i3;
        this.basePreviewOffsetX = (i - i3) / 2;
        this.basePreviewOffsetY = i2 + deviceProfile.folderIconOffsetYPx;
        this.mStrokeWidth = context.getResources().getDisplayMetrics().density;
        float scaledRadius = getScaledRadius();
        this.mShadowShader = new RadialGradient(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 1.0f, new int[]{Color.argb(40, 0, 0, 0), 0}, new float[]{scaledRadius / (this.mStrokeWidth + scaledRadius), 1.0f}, Shader.TileMode.CLAMP);
        invalidate();
    }
}
