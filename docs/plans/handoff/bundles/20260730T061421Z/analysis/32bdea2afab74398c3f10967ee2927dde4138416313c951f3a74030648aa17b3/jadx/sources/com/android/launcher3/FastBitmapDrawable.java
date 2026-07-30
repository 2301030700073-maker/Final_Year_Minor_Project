package com.android.launcher3;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.graphics.PlaceHolderIconDrawable;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class FastBitmapDrawable extends Drawable {
    public static final Property SCALE = new Property(Float.TYPE, "scale") { // from class: com.android.launcher3.FastBitmapDrawable.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((FastBitmapDrawable) obj).mScale);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            FastBitmapDrawable fastBitmapDrawable = (FastBitmapDrawable) obj;
            fastBitmapDrawable.mScale = ((Float) obj2).floatValue();
            fastBitmapDrawable.invalidateSelf();
        }
    };
    public static ColorFilter sDisabledFColorFilter;
    public int mAlpha;
    public Bitmap mBitmap;
    public float mDisabledAlpha;
    public final int mIconColor;
    public boolean mIsDisabled;
    public boolean mIsPressed;
    public final Paint mPaint;
    public float mScale;
    public ObjectAnimator mScaleAnimation;

    public interface Factory {
        FastBitmapDrawable newDrawable();
    }

    public class MyConstantState extends Drawable.ConstantState {
        public final Bitmap mBitmap;
        public final int mIconColor;
        public final boolean mIsDisabled;

        public MyConstantState(Bitmap bitmap, int i, boolean z) {
            this.mBitmap = bitmap;
            this.mIconColor = i;
            this.mIsDisabled = z;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public FastBitmapDrawable newDrawable() {
            return new FastBitmapDrawable(this.mBitmap, this.mIconColor, this.mIsDisabled);
        }
    }

    public FastBitmapDrawable(BitmapInfo bitmapInfo) {
        this(bitmapInfo.icon, bitmapInfo.color, false);
    }

    public static FastBitmapDrawable newIcon(Context context, ItemInfoWithIcon itemInfoWithIcon) {
        FastBitmapDrawable newIcon = newIcon(context, itemInfoWithIcon.bitmap);
        newIcon.setIsDisabled(itemInfoWithIcon.isDisabled());
        return newIcon;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.mScale == 1.0f) {
            drawInternal(canvas, getBounds());
            return;
        }
        int save = canvas.save();
        Rect bounds = getBounds();
        float f = this.mScale;
        canvas.scale(f, f, bounds.exactCenterX(), bounds.exactCenterY());
        drawInternal(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public void drawInternal(Canvas canvas, Rect rect) {
        canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return new MyConstantState(this.mBitmap, this.mIconColor, this.mIsDisabled);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mBitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mBitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z;
        int length = iArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (iArr[i] == 16842919) {
                z = true;
                break;
            }
            i++;
        }
        if (this.mIsPressed == z) {
            return false;
        }
        this.mIsPressed = z;
        ObjectAnimator objectAnimator = this.mScaleAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mScaleAnimation = null;
        }
        if (this.mIsPressed) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<FastBitmapDrawable, Float>) SCALE, 1.1f);
            this.mScaleAnimation = ofFloat;
            ofFloat.setDuration(200L);
            this.mScaleAnimation.setInterpolator(Interpolators.ACCEL);
            this.mScaleAnimation.start();
        } else if (isVisible()) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, (Property<FastBitmapDrawable, Float>) SCALE, 1.0f);
            this.mScaleAnimation = ofFloat2;
            ofFloat2.setDuration(200L);
            this.mScaleAnimation.setInterpolator(Interpolators.DEACCEL);
            this.mScaleAnimation.start();
        } else {
            this.mScale = 1.0f;
            invalidateSelf();
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            this.mPaint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.mPaint.setFilterBitmap(z);
        this.mPaint.setAntiAlias(z);
    }

    public void setIsDisabled(boolean z) {
        if (this.mIsDisabled != z) {
            this.mIsDisabled = z;
            updateFilter();
        }
    }

    public void setScale(float f) {
        ObjectAnimator objectAnimator = this.mScaleAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mScaleAnimation = null;
        }
        this.mScale = f;
        invalidateSelf();
    }

    public void updateFilter() {
        ColorFilter colorFilter;
        Paint paint = this.mPaint;
        if (this.mIsDisabled) {
            if (sDisabledFColorFilter == null) {
                ColorMatrix colorMatrix = new ColorMatrix();
                ColorMatrix colorMatrix2 = new ColorMatrix();
                colorMatrix2.setSaturation(RecentsState.NO_OFFSET);
                float[] array = colorMatrix.getArray();
                array[0] = 0.5f;
                array[6] = 0.5f;
                array[12] = 0.5f;
                float f = 127;
                array[4] = f;
                array[9] = f;
                array[14] = f;
                array[18] = this.mDisabledAlpha;
                colorMatrix2.preConcat(colorMatrix);
                sDisabledFColorFilter = new ColorMatrixColorFilter(colorMatrix2);
            }
            colorFilter = sDisabledFColorFilter;
        } else {
            colorFilter = null;
        }
        paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public FastBitmapDrawable(Bitmap bitmap, int i, boolean z) {
        this.mPaint = new Paint(3);
        this.mDisabledAlpha = 1.0f;
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mBitmap = bitmap;
        this.mIconColor = i;
        setFilterBitmap(true);
        if (this.mIsDisabled != z) {
            this.mIsDisabled = z;
            updateFilter();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FastBitmapDrawable newIcon(Context context, BitmapInfo bitmapInfo) {
        FastBitmapDrawable fastBitmapDrawable;
        FastBitmapDrawable fastBitmapDrawable2;
        if (bitmapInfo instanceof Factory) {
            fastBitmapDrawable2 = ((Factory) bitmapInfo).newDrawable();
        } else {
            if (bitmapInfo.isLowRes()) {
                fastBitmapDrawable = new PlaceHolderIconDrawable(bitmapInfo, context);
            } else {
                fastBitmapDrawable = new FastBitmapDrawable(bitmapInfo);
            }
            fastBitmapDrawable2 = fastBitmapDrawable;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.disabledIconAlpha});
        float f = obtainStyledAttributes.getFloat(0, 1.0f);
        obtainStyledAttributes.recycle();
        fastBitmapDrawable2.mDisabledAlpha = f;
        return fastBitmapDrawable2;
    }
}
