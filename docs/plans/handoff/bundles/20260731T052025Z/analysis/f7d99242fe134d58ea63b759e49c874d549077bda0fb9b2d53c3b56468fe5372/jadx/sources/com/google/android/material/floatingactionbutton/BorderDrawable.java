package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;
import androidx.tracing.TraceApi29Impl;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BorderDrawable extends Drawable {
    public ColorStateList borderTint;
    public float borderWidth;
    public int bottomInnerStrokeColor;
    public int bottomOuterStrokeColor;
    public int currentBorderTintColor;
    public final Paint paint;
    public ShapeAppearanceModel shapeAppearanceModel;
    public int topInnerStrokeColor;
    public int topOuterStrokeColor;
    public final ShapeAppearancePathProvider pathProvider = ShapeAppearancePathProvider.Lazy.INSTANCE;
    public final Path shapePath = new Path();
    public final Rect rect = new Rect();
    public final RectF rectF = new RectF();
    public final RectF boundsRectF = new RectF();
    public final GifDrawable.GifState state = new GifDrawable.GifState(this);
    public boolean invalidateShader = true;

    public BorderDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearanceModel = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z = this.invalidateShader;
        Rect rect = this.rect;
        Paint paint = this.paint;
        if (z) {
            copyBounds(rect);
            float height = this.borderWidth / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.topOuterStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(this.topInnerStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.topInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.bottomInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.compositeColors(this.bottomInnerStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(this.bottomOuterStrokeColor, this.currentBorderTintColor)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.invalidateShader = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.rectF;
        rectF.set(rect);
        CornerSize cornerSize = this.shapeAppearanceModel.topLeftCornerSize;
        Rect bounds = getBounds();
        RectF rectF2 = this.boundsRectF;
        rectF2.set(bounds);
        float min = Math.min(cornerSize.getCornerSize(rectF2), rectF.width() / 2.0f);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        rectF2.set(getBounds());
        if (shapeAppearanceModel.isRoundRect(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, min, min, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.borderWidth > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        Rect bounds = getBounds();
        RectF rectF = this.boundsRectF;
        rectF.set(bounds);
        if (shapeAppearanceModel.isRoundRect(rectF)) {
            CornerSize cornerSize = this.shapeAppearanceModel.topLeftCornerSize;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), cornerSize.getCornerSize(rectF));
            return;
        }
        Rect rect = this.rect;
        copyBounds(rect);
        RectF rectF2 = this.rectF;
        rectF2.set(rect);
        ShapeAppearanceModel shapeAppearanceModel2 = this.shapeAppearanceModel;
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.pathProvider;
        Path path = this.shapePath;
        shapeAppearancePathProvider.calculatePath(shapeAppearanceModel2, null, 1.0f, rectF2, null, path);
        TraceApi29Impl.setOutlineToPath(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        Rect bounds = getBounds();
        RectF rectF = this.boundsRectF;
        rectF.set(bounds);
        if (!shapeAppearanceModel.isRoundRect(rectF)) {
            return true;
        }
        int round = Math.round(this.borderWidth);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.borderTint;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.invalidateShader = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.borderTint;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.currentBorderTintColor)) != this.currentBorderTintColor) {
            this.invalidateShader = true;
            this.currentBorderTintColor = colorForState;
        }
        if (this.invalidateShader) {
            invalidateSelf();
        }
        return this.invalidateShader;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.paint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
