package com.google.android.material.shape;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.camera.core.impl.Config;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Data;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapePath;
import j$.util.Objects;
import java.util.BitSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements Shapeable {
    public static final SpringAnimatedCornerSizeProperty[] CORNER_SIZES_IN_PX;
    public static final Paint clearPaint;
    public final BitSet containsIncompatibleShadowOp;
    public final ShapePath.ShadowCompatOperation[] cornerShadowOperation;
    public final SpringAnimation[] cornerSpringAnimations;
    public SpringForce cornerSpringForce;
    public MaterialShapeDrawableState drawableState;
    public final ShapePath.ShadowCompatOperation[] edgeShadowOperation;
    public final Paint fillPaint;
    public final RectF insetRectF;
    public boolean isRoundRectCornerMorph;
    public final Matrix matrix;
    public MaterialButton$$ExternalSyntheticLambda0 onCornerSizeChangeListener;
    public final Path path;
    public final RectF pathBounds;
    public boolean pathDirty;
    public final Path pathInsetByStroke;
    public final ShapeAppearancePathProvider pathProvider;
    public final AnonymousClass1 pathShadowListener;
    public final RectF rectF;
    public int resolvedTintColor;
    public final Region scratchRegion;
    public boolean shadowBitmapDrawingEnable;
    public final ShadowRenderer shadowRenderer;
    public float[] springAnimatedCornerSizes;
    public float[] springAnimatedStrokeCornerSizes;
    public final AnonymousClass1 strokeInsetCornerSizeUnaryOperator;
    public final Paint strokePaint;
    public boolean strokePathDirty;
    public ShapeAppearanceModel strokeShapeAppearanceModel;
    public PorterDuffColorFilter strokeTintFilter;
    public PorterDuffColorFilter tintFilter;
    public final Region transparentRegion;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public /* synthetic */ AnonymousClass1() {
        }

        public CornerSize apply(CornerSize cornerSize) {
            return cornerSize instanceof RelativeCornerSize ? cornerSize : new AdjustedCornerSize(-MaterialShapeDrawable.this.getStrokeInsetLength(), cornerSize);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SpringAnimatedCornerSizeProperty extends Data.Companion {
        public final int index;

        public SpringAnimatedCornerSizeProperty(int i) {
            this.index = i;
        }

        @Override // androidx.work.Data.Companion
        public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
            float[] fArr = materialShapeDrawable.springAnimatedCornerSizes;
            if (fArr != null) {
                return fArr[this.index];
            }
            return 0.0f;
        }

        @Override // androidx.work.Data.Companion
        public final void setValue(Object obj, float f) {
            float cornerSize;
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) obj;
            float[] fArr = materialShapeDrawable.springAnimatedCornerSizes;
            if (fArr != null) {
                int i = this.index;
                if (fArr[i] != f) {
                    fArr[i] = f;
                    MaterialButton$$ExternalSyntheticLambda0 materialButton$$ExternalSyntheticLambda0 = materialShapeDrawable.onCornerSizeChangeListener;
                    if (materialButton$$ExternalSyntheticLambda0 != null) {
                        ShapeAppearancePathProvider shapeAppearancePathProvider = materialShapeDrawable.pathProvider;
                        if (fArr != null) {
                            cornerSize = (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
                        } else {
                            RectF boundsAsRectF = materialShapeDrawable.getBoundsAsRectF();
                            ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
                            shapeAppearancePathProvider.getClass();
                            cornerSize = (((materialShapeDrawable.getShapeAppearanceModel().bottomLeftCornerSize.getCornerSize(boundsAsRectF) + shapeAppearanceModel.topLeftCornerSize.getCornerSize(boundsAsRectF)) - materialShapeDrawable.getShapeAppearanceModel().bottomRightCornerSize.getCornerSize(boundsAsRectF)) - materialShapeDrawable.getShapeAppearanceModel().topRightCornerSize.getCornerSize(boundsAsRectF)) / 2.0f;
                        }
                        MaterialButton materialButton = (MaterialButton) materialButton$$ExternalSyntheticLambda0.f$0;
                        int i2 = (int) (cornerSize * 0.11f);
                        if (materialButton.opticalCenterShift != i2) {
                            materialButton.opticalCenterShift = i2;
                            materialButton.updatePaddingsAndSizeForWidthAnimation();
                            materialButton.invalidate();
                        }
                    }
                    materialShapeDrawable.invalidateSelf();
                }
            }
        }
    }

    static {
        Paint paint = new Paint(1);
        clearPaint = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        CORNER_SIZES_IN_PX = new SpringAnimatedCornerSizeProperty[4];
        int i = 0;
        while (true) {
            SpringAnimatedCornerSizeProperty[] springAnimatedCornerSizePropertyArr = CORNER_SIZES_IN_PX;
            if (i >= springAnimatedCornerSizePropertyArr.length) {
                return;
            }
            springAnimatedCornerSizePropertyArr[i] = new SpringAnimatedCornerSizeProperty(i);
            i++;
        }
    }

    public MaterialShapeDrawable(MaterialShapeDrawableState materialShapeDrawableState) {
        this.strokeInsetCornerSizeUnaryOperator = new AnonymousClass1();
        this.cornerShadowOperation = new ShapePath.ShadowCompatOperation[4];
        this.edgeShadowOperation = new ShapePath.ShadowCompatOperation[4];
        this.containsIncompatibleShadowOp = new BitSet(8);
        this.matrix = new Matrix();
        this.path = new Path();
        this.pathInsetByStroke = new Path();
        this.rectF = new RectF();
        this.insetRectF = new RectF();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        Paint paint = new Paint(1);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        this.strokePaint = paint2;
        this.shadowRenderer = new ShadowRenderer();
        this.pathProvider = ShapeAppearancePathProvider.getInstanceOrCreate();
        this.pathBounds = new RectF();
        this.shadowBitmapDrawingEnable = true;
        this.isRoundRectCornerMorph = true;
        this.cornerSpringAnimations = new SpringAnimation[4];
        this.drawableState = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        updateTintFilter();
        updateColorsForState(getState());
        this.pathShadowListener = new AnonymousClass1();
    }

    public final void calculatePath(RectF rectF, Path path) {
        this.pathProvider.calculatePath(this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes, this.drawableState.interpolation, rectF, this.pathShadowListener, path);
        if (this.drawableState.scale != 1.0f) {
            Matrix matrix = this.matrix;
            matrix.reset();
            float f = this.drawableState.scale;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.pathBounds, true);
    }

    public final float calculateRoundRectCornerSize(RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float[] fArr) {
        if (fArr == null) {
            if (shapeAppearanceModel.isRoundRect(rectF)) {
                return shapeAppearanceModel.topLeftCornerSize.getCornerSize(rectF);
            }
            return -1.0f;
        }
        if (this.isRoundRectCornerMorph) {
            return fArr[0];
        }
        return -1.0f;
    }

    public final int compositeElevationOverlayIfNeeded(int i) {
        int i2;
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        float f = materialShapeDrawableState.elevation + 0.0f + materialShapeDrawableState.parentAbsoluteElevation;
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawableState.elevationOverlayProvider;
        if (elevationOverlayProvider == null || !elevationOverlayProvider.elevationOverlayEnabled || ColorUtils.setAlphaComponent(i, 255) != elevationOverlayProvider.colorSurface) {
            return i;
        }
        float min = (elevationOverlayProvider.displayDensity <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int alpha = Color.alpha(i);
        int layer = Data.Companion.layer(ColorUtils.setAlphaComponent(i, 255), min, elevationOverlayProvider.elevationOverlayColor);
        if (min > 0.0f && (i2 = elevationOverlayProvider.elevationOverlayAccentColor) != 0) {
            layer = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, ElevationOverlayProvider.OVERLAY_ACCENT_COLOR_ALPHA), layer);
        }
        return ColorUtils.setAlphaComponent(layer, alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.tintFilter;
        Paint paint2 = this.fillPaint;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i = this.drawableState.alpha;
        paint2.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.strokeTintFilter;
        Paint paint3 = this.strokePaint;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.drawableState.strokeWidth);
        int alpha2 = paint3.getAlpha();
        int i2 = this.drawableState.alpha;
        paint3.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = hasCompatShadow() || !isRoundRect();
        Paint.Style style = this.drawableState.paintStyle;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            boolean z2 = this.pathDirty;
            paint = paint2;
            Path path = this.path;
            if (z2) {
                if (z) {
                    calculatePath(getBoundsAsRectF(), path);
                }
                this.pathDirty = false;
            }
            if (hasCompatShadow()) {
                canvas.save();
                canvas.translate((int) (this.drawableState.shadowCompatOffset * Math.sin(Math.toRadians(0.0d))), (int) (Math.cos(Math.toRadians(0.0d)) * this.drawableState.shadowCompatOffset));
                if (this.shadowBitmapDrawingEnable) {
                    Rect bounds = getBounds();
                    RectF rectF = this.pathBounds;
                    int width = (int) (rectF.width() - bounds.width());
                    int height = (int) (rectF.height() - bounds.height());
                    if (width < 0 || height < 0) {
                        DBUtil$$ExternalSyntheticBUOutline0.m((Object) rectF, Config.CC.m91m("Invalid shadow bounds. Check that the treatments result in a valid path. extra width: ", width, " extra height: ", height, " path bounds: "));
                        return;
                    }
                    Bitmap createBitmap = Bitmap.createBitmap((this.drawableState.shadowCompatRadius * 2) + ((int) rectF.width()) + width, (this.drawableState.shadowCompatRadius * 2) + ((int) rectF.height()) + height, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(createBitmap);
                    int i3 = bounds.left;
                    int i4 = this.drawableState.shadowCompatRadius;
                    float f = (i3 - i4) - width;
                    float f2 = (bounds.top - i4) - height;
                    canvas2.translate(-f, -f2);
                    drawCompatShadow(canvas2);
                    canvas.drawBitmap(createBitmap, f, f2, (Paint) null);
                    createBitmap.recycle();
                    canvas.restore();
                } else {
                    drawCompatShadow(canvas);
                    canvas.restore();
                }
            }
            drawShape(canvas, paint, path, this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes, getBoundsAsRectF());
        } else {
            paint = paint2;
        }
        if (hasStroke()) {
            if (this.strokePathDirty) {
                ShapeAppearanceModel shapeAppearanceModel = getShapeAppearanceModel();
                ShapeAppearanceModel.Builder builder = shapeAppearanceModel.toBuilder();
                CornerSize cornerSize = shapeAppearanceModel.topLeftCornerSize;
                AnonymousClass1 anonymousClass1 = this.strokeInsetCornerSizeUnaryOperator;
                builder.topLeftCornerSize = anonymousClass1.apply(cornerSize);
                builder.topRightCornerSize = anonymousClass1.apply(shapeAppearanceModel.topRightCornerSize);
                builder.bottomLeftCornerSize = anonymousClass1.apply(shapeAppearanceModel.bottomLeftCornerSize);
                builder.bottomRightCornerSize = anonymousClass1.apply(shapeAppearanceModel.bottomRightCornerSize);
                this.strokeShapeAppearanceModel = builder.build();
                float[] fArr = this.springAnimatedCornerSizes;
                if (fArr != null) {
                    if (this.springAnimatedStrokeCornerSizes == null) {
                        this.springAnimatedStrokeCornerSizes = new float[fArr.length];
                    }
                    float strokeInsetLength = getStrokeInsetLength();
                    int i5 = 0;
                    while (true) {
                        float[] fArr2 = this.springAnimatedCornerSizes;
                        if (i5 >= fArr2.length) {
                            break;
                        }
                        this.springAnimatedStrokeCornerSizes[i5] = Math.max(0.0f, fArr2[i5] - strokeInsetLength);
                        i5++;
                    }
                } else {
                    this.springAnimatedStrokeCornerSizes = null;
                }
                if (z) {
                    ShapeAppearanceModel shapeAppearanceModel2 = this.strokeShapeAppearanceModel;
                    float[] fArr3 = this.springAnimatedStrokeCornerSizes;
                    float f3 = this.drawableState.interpolation;
                    RectF boundsAsRectF = getBoundsAsRectF();
                    RectF rectF2 = this.insetRectF;
                    rectF2.set(boundsAsRectF);
                    float strokeInsetLength2 = getStrokeInsetLength();
                    rectF2.inset(strokeInsetLength2, strokeInsetLength2);
                    this.pathProvider.calculatePath(shapeAppearanceModel2, fArr3, f3, rectF2, null, this.pathInsetByStroke);
                }
                this.strokePathDirty = false;
            }
            drawStrokeShape(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    public final void drawCompatShadow(Canvas canvas) {
        if (this.containsIncompatibleShadowOp.cardinality() > 0) {
            Log.w("MaterialShapeDrawable", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.drawableState.shadowCompatOffset;
        Path path = this.path;
        ShadowRenderer shadowRenderer = this.shadowRenderer;
        if (i != 0) {
            canvas.drawPath(path, shadowRenderer.shadowPaint);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            ShapePath.ShadowCompatOperation shadowCompatOperation = this.cornerShadowOperation[i2];
            int i3 = this.drawableState.shadowCompatRadius;
            Matrix matrix = ShapePath.ShadowCompatOperation.IDENTITY_MATRIX;
            shadowCompatOperation.draw(matrix, shadowRenderer, i3, canvas);
            this.edgeShadowOperation[i2].draw(matrix, shadowRenderer, this.drawableState.shadowCompatRadius, canvas);
        }
        if (this.shadowBitmapDrawingEnable) {
            int sin = (int) (Math.sin(Math.toRadians(0.0d)) * this.drawableState.shadowCompatOffset);
            int cos = (int) (Math.cos(Math.toRadians(0.0d)) * this.drawableState.shadowCompatOffset);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, clearPaint);
            canvas.translate(sin, cos);
        }
    }

    public final void drawShape(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, float[] fArr, RectF rectF) {
        float calculateRoundRectCornerSize = calculateRoundRectCornerSize(rectF, shapeAppearanceModel, fArr);
        if (calculateRoundRectCornerSize < 0.0f) {
            canvas.drawPath(path, paint);
        } else {
            float f = calculateRoundRectCornerSize * this.drawableState.interpolation;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    public void drawStrokeShape(Canvas canvas) {
        ShapeAppearanceModel shapeAppearanceModel = this.strokeShapeAppearanceModel;
        float[] fArr = this.springAnimatedStrokeCornerSizes;
        RectF boundsAsRectF = getBoundsAsRectF();
        RectF rectF = this.insetRectF;
        rectF.set(boundsAsRectF);
        float strokeInsetLength = getStrokeInsetLength();
        rectF.inset(strokeInsetLength, strokeInsetLength);
        drawShape(canvas, this.strokePaint, this.pathInsetByStroke, shapeAppearanceModel, fArr, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.drawableState.alpha;
    }

    public final RectF getBoundsAsRectF() {
        Rect bounds = getBounds();
        RectF rectF = this.rectF;
        rectF.set(bounds);
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.drawableState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.drawableState.getClass();
        RectF boundsAsRectF = getBoundsAsRectF();
        if (boundsAsRectF.isEmpty()) {
            return;
        }
        float calculateRoundRectCornerSize = calculateRoundRectCornerSize(boundsAsRectF, this.drawableState.shapeAppearance.getDefaultShape(), this.springAnimatedCornerSizes);
        if (calculateRoundRectCornerSize >= 0.0f) {
            outline.setRoundRect(getBounds(), calculateRoundRectCornerSize * this.drawableState.interpolation);
            return;
        }
        boolean z = this.pathDirty;
        Path path = this.path;
        if (z) {
            calculatePath(boundsAsRectF, path);
            this.pathDirty = false;
        }
        TraceApi29Impl.setOutlineToPath(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.drawableState.padding;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public final ShapeAppearanceModel getShapeAppearanceModel() {
        return this.drawableState.shapeAppearance.getDefaultShape();
    }

    public final float getStrokeInsetLength() {
        if (hasStroke()) {
            return this.strokePaint.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    public final float getTopLeftCornerResolvedSize() {
        float[] fArr = this.springAnimatedCornerSizes;
        return fArr != null ? fArr[3] : this.drawableState.shapeAppearance.getDefaultShape().topLeftCornerSize.getCornerSize(getBoundsAsRectF());
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.transparentRegion;
        region.set(bounds);
        RectF boundsAsRectF = getBoundsAsRectF();
        Path path = this.path;
        calculatePath(boundsAsRectF, path);
        Region region2 = this.scratchRegion;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final boolean hasCompatShadow() {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        materialShapeDrawableState.getClass();
        return materialShapeDrawableState.shadowCompatRadius > 0 && !isRoundRect() && !this.path.isConvex() && Build.VERSION.SDK_INT < 29;
    }

    public final boolean hasStroke() {
        Paint.Style style = this.drawableState.paintStyle;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.strokePaint.getStrokeWidth() > 0.0f;
    }

    public final void initializeElevationOverlay(Context context) {
        this.drawableState.elevationOverlayProvider = new ElevationOverlayProvider(context);
        updateZ();
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.pathDirty = true;
        this.strokePathDirty = true;
        super.invalidateSelf();
    }

    public final boolean isRoundRect() {
        if (this.drawableState.shapeAppearance.getShapeForState(getState()).isRoundRect(getBoundsAsRectF())) {
            return this.springAnimatedCornerSizes == null || this.isRoundRectCornerMorph;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.drawableState.tintList;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.drawableState.getClass();
        ColorStateList colorStateList2 = this.drawableState.strokeColor;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.drawableState.fillColor;
        return (colorStateList3 != null && colorStateList3.isStateful()) || this.drawableState.shapeAppearance.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.drawableState = new MaterialShapeDrawableState(this.drawableState);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.pathDirty = true;
        this.strokePathDirty = true;
        super.onBoundsChange(rect);
        if (!this.drawableState.shapeAppearance.isStateful() || rect.isEmpty()) {
            return;
        }
        int[] state = getState();
        SpringAnimation[] springAnimationArr = this.cornerSpringAnimations;
        int length = springAnimationArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < length) {
                SpringAnimation springAnimation = springAnimationArr[i];
                if (springAnimation != null && springAnimation.mRunning) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        updateShape(state, true ^ z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.drawableState.shapeAppearance.isStateful()) {
            updateShape(iArr, false);
        }
        boolean z = updateColorsForState(iArr) || updateTintFilter();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.alpha != i) {
            materialShapeDrawableState.alpha = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawableState.getClass();
        super.invalidateSelf();
    }

    public final void setCornerSpringForce(SpringForce springForce) {
        if (this.cornerSpringForce == springForce) {
            return;
        }
        this.cornerSpringForce = springForce;
        int i = 0;
        while (true) {
            SpringAnimation[] springAnimationArr = this.cornerSpringAnimations;
            if (i >= springAnimationArr.length) {
                updateShape(getState(), true);
                invalidateSelf();
                return;
            }
            if (springAnimationArr[i] == null) {
                springAnimationArr[i] = new SpringAnimation(this, CORNER_SIZES_IN_PX[i]);
            }
            SpringAnimation springAnimation = springAnimationArr[i];
            SpringForce springForce2 = new SpringForce();
            springForce2.setDampingRatio((float) springForce.mDampingRatio);
            double d = springForce.mNaturalFreq;
            springForce2.setStiffness((float) (d * d));
            springAnimation.mSpring = springForce2;
            i++;
        }
    }

    public final void setElevation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.elevation != f) {
            materialShapeDrawableState.elevation = f;
            updateZ();
        }
    }

    public final void setFillColor(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.fillColor != colorStateList) {
            materialShapeDrawableState.fillColor = colorStateList;
            onStateChange(getState());
        }
    }

    public final void setInterpolation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.interpolation != f) {
            materialShapeDrawableState.interpolation = f;
            this.pathDirty = true;
            this.strokePathDirty = true;
            invalidateSelf();
        }
    }

    public final void setShadowColor() {
        this.shadowRenderer.setShadowColor(-12303292);
        this.drawableState.getClass();
        super.invalidateSelf();
    }

    public final void setShapeAppearance(ShapeAppearance shapeAppearance) {
        if (shapeAppearance instanceof ShapeAppearanceModel) {
            setShapeAppearanceModel((ShapeAppearanceModel) shapeAppearance);
            return;
        }
        StateListShapeAppearanceModel stateListShapeAppearanceModel = (StateListShapeAppearanceModel) shapeAppearance;
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.shapeAppearance != stateListShapeAppearanceModel) {
            materialShapeDrawableState.shapeAppearance = stateListShapeAppearanceModel;
            updateShape(getState(), true);
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public final void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.drawableState.shapeAppearance = shapeAppearanceModel;
        this.springAnimatedCornerSizes = null;
        this.springAnimatedStrokeCornerSizes = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.drawableState.tintList = colorStateList;
        updateTintFilter();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        if (materialShapeDrawableState.tintMode != mode) {
            materialShapeDrawableState.tintMode = mode;
            updateTintFilter();
            super.invalidateSelf();
        }
    }

    public final boolean updateColorsForState(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.drawableState.fillColor == null || color2 == (colorForState2 = this.drawableState.fillColor.getColorForState(iArr, (color2 = (paint2 = this.fillPaint).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.drawableState.strokeColor == null || color == (colorForState = this.drawableState.strokeColor.getColorForState(iArr, (color = (paint = this.strokePaint).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateShape(int[] r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.shape.MaterialShapeDrawable.updateShape(int[], boolean):void");
    }

    public final boolean updateTintFilter() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.tintFilter;
        PorterDuffColorFilter porterDuffColorFilter3 = this.strokeTintFilter;
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        ColorStateList colorStateList = materialShapeDrawableState.tintList;
        PorterDuff.Mode mode = materialShapeDrawableState.tintMode;
        if (colorStateList == null || mode == null) {
            int color = this.fillPaint.getColor();
            int compositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
            this.resolvedTintColor = compositeElevationOverlayIfNeeded;
            porterDuffColorFilter = compositeElevationOverlayIfNeeded != color ? new PorterDuffColorFilter(compositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN) : null;
        } else {
            int compositeElevationOverlayIfNeeded2 = compositeElevationOverlayIfNeeded(colorStateList.getColorForState(getState(), 0));
            this.resolvedTintColor = compositeElevationOverlayIfNeeded2;
            porterDuffColorFilter = new PorterDuffColorFilter(compositeElevationOverlayIfNeeded2, mode);
        }
        this.tintFilter = porterDuffColorFilter;
        this.drawableState.getClass();
        this.strokeTintFilter = null;
        this.drawableState.getClass();
        return (Objects.equals(porterDuffColorFilter2, this.tintFilter) && Objects.equals(porterDuffColorFilter3, this.strokeTintFilter)) ? false : true;
    }

    public final void updateZ() {
        MaterialShapeDrawableState materialShapeDrawableState = this.drawableState;
        float f = materialShapeDrawableState.elevation + 0.0f;
        materialShapeDrawableState.shadowCompatRadius = (int) Math.ceil(0.75f * f);
        this.drawableState.shadowCompatOffset = (int) Math.ceil(f * 0.25f);
        updateTintFilter();
        if (hasCompatShadow() || !isRoundRect()) {
            invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class MaterialShapeDrawableState extends Drawable.ConstantState {
        public int alpha;
        public float elevation;
        public ElevationOverlayProvider elevationOverlayProvider;
        public ColorStateList fillColor;
        public float interpolation;
        public Rect padding;
        public final Paint.Style paintStyle;
        public float parentAbsoluteElevation;
        public final float scale;
        public int shadowCompatOffset;
        public int shadowCompatRadius;
        public ShapeAppearance shapeAppearance;
        public ColorStateList strokeColor;
        public float strokeWidth;
        public ColorStateList tintList;
        public PorterDuff.Mode tintMode;

        public MaterialShapeDrawableState(MaterialShapeDrawableState materialShapeDrawableState) {
            this.fillColor = null;
            this.strokeColor = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearance = materialShapeDrawableState.shapeAppearance;
            this.elevationOverlayProvider = materialShapeDrawableState.elevationOverlayProvider;
            this.strokeWidth = materialShapeDrawableState.strokeWidth;
            this.fillColor = materialShapeDrawableState.fillColor;
            this.strokeColor = materialShapeDrawableState.strokeColor;
            this.tintMode = materialShapeDrawableState.tintMode;
            this.tintList = materialShapeDrawableState.tintList;
            this.alpha = materialShapeDrawableState.alpha;
            this.scale = materialShapeDrawableState.scale;
            this.shadowCompatOffset = materialShapeDrawableState.shadowCompatOffset;
            this.interpolation = materialShapeDrawableState.interpolation;
            this.parentAbsoluteElevation = materialShapeDrawableState.parentAbsoluteElevation;
            this.elevation = materialShapeDrawableState.elevation;
            this.shadowCompatRadius = materialShapeDrawableState.shadowCompatRadius;
            this.paintStyle = materialShapeDrawableState.paintStyle;
            if (materialShapeDrawableState.padding != null) {
                this.padding = new Rect(materialShapeDrawableState.padding);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.pathDirty = true;
            materialShapeDrawable.strokePathDirty = true;
            return materialShapeDrawable;
        }

        public MaterialShapeDrawableState(ShapeAppearance shapeAppearance) {
            this.fillColor = null;
            this.strokeColor = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearance = shapeAppearance;
            this.elevationOverlayProvider = null;
        }
    }

    public MaterialShapeDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        this(ShapeAppearanceModel.builder(context, attributeSet, i, i2).build());
    }

    public MaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel));
    }

    public MaterialShapeDrawable(ShapeAppearance shapeAppearance) {
        this(new MaterialShapeDrawableState(shapeAppearance));
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }
}
