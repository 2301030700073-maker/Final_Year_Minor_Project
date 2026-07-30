package com.android.launcher3.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class ShiftedBitmapDrawable extends Drawable {
    public final Bitmap mBitmap;
    public final Drawable.ConstantState mConstantState;
    public final Paint mPaint = new Paint(2);
    public float mShiftX;
    public float mShiftY;

    public class MyConstantState extends Drawable.ConstantState {
        public final Bitmap mBitmap;
        public float mShiftX;
        public float mShiftY;

        public MyConstantState(Bitmap bitmap, float f, float f2) {
            this.mBitmap = bitmap;
            this.mShiftX = f;
            this.mShiftY = f2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ShiftedBitmapDrawable(this.mBitmap, this.mShiftX, this.mShiftY);
        }
    }

    public ShiftedBitmapDrawable(Bitmap bitmap, float f, float f2) {
        this.mBitmap = bitmap;
        this.mShiftX = f;
        this.mShiftY = f2;
        this.mConstantState = new MyConstantState(this.mBitmap, this.mShiftX, this.mShiftY);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawBitmap(this.mBitmap, this.mShiftX, this.mShiftY, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mConstantState;
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
        this.mPaint.setColorFilter(colorFilter);
    }
}
