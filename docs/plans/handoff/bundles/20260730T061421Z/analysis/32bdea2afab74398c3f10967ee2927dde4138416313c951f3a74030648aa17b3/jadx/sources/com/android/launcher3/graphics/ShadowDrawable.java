package com.android.launcher3.graphics;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.android.launcher3.R$styleable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class ShadowDrawable extends Drawable {
    public final Paint mPaint;
    public final ShadowDrawableState mState;

    public class ShadowDrawableState extends Drawable.ConstantState {
        public int mChangingConfigurations;
        public Drawable.ConstantState mChildState;
        public int mDarkTintColor;
        public int mIntrinsicHeight;
        public int mIntrinsicWidth;
        public boolean mIsDark;
        public Bitmap mLastDrawnBitmap;
        public int mShadowColor;
        public int mShadowSize;

        public ShadowDrawableState(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ShadowDrawable(this);
        }
    }

    public static /* synthetic */ void a(Bitmap bitmap, int[] iArr, Paint paint, Drawable drawable, Canvas canvas) {
        canvas.drawBitmap(bitmap, iArr[0], iArr[1], paint);
        drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(new int[]{R.attr.isWorkspaceDarkText});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        ShadowDrawableState shadowDrawableState = this.mState;
        if (shadowDrawableState.mIsDark != z) {
            shadowDrawableState.mIsDark = z;
            shadowDrawableState.mLastDrawnBitmap = null;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Objects.requireNonNull(this.mState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        ShadowDrawableState shadowDrawableState = this.mState;
        if (shadowDrawableState.mLastDrawnBitmap == null) {
            Drawable mutate = shadowDrawableState.mChildState.newDrawable().mutate();
            ShadowDrawableState shadowDrawableState2 = this.mState;
            int i = shadowDrawableState2.mShadowSize;
            mutate.setBounds(i, i, shadowDrawableState2.mIntrinsicWidth - i, shadowDrawableState2.mIntrinsicHeight - i);
            ShadowDrawableState shadowDrawableState3 = this.mState;
            mutate.setTint(shadowDrawableState3.mIsDark ? shadowDrawableState3.mDarkTintColor : -1);
            ShadowDrawableState shadowDrawableState4 = this.mState;
            if (shadowDrawableState4.mIsDark) {
                int i2 = shadowDrawableState4.mIntrinsicWidth;
                int i3 = shadowDrawableState4.mIntrinsicHeight;
                GraphicsUtils.noteNewBitmapCreated();
                Picture picture = new Picture();
                mutate.draw(picture.beginRecording(i2, i3));
                picture.endRecording();
                shadowDrawableState4.mLastDrawnBitmap = Bitmap.createBitmap(picture);
            } else {
                Paint paint = new Paint(3);
                paint.setMaskFilter(new BlurMaskFilter(this.mState.mShadowSize, BlurMaskFilter.Blur.NORMAL));
                int[] iArr = new int[2];
                ShadowDrawableState shadowDrawableState5 = this.mState;
                int i4 = shadowDrawableState5.mIntrinsicWidth;
                int i5 = shadowDrawableState5.mIntrinsicHeight;
                GraphicsUtils.noteNewBitmapCreated();
                Bitmap createBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
                mutate.draw(new Canvas(createBitmap));
                Bitmap extractAlpha = createBitmap.extractAlpha(paint, iArr);
                paint.setMaskFilter(null);
                paint.setColor(this.mState.mShadowColor);
                ShadowDrawableState shadowDrawableState6 = this.mState;
                int i6 = shadowDrawableState6.mIntrinsicWidth;
                int i7 = shadowDrawableState6.mIntrinsicHeight;
                GraphicsUtils.noteNewBitmapCreated();
                Picture picture2 = new Picture();
                a(extractAlpha, iArr, paint, mutate, picture2.beginRecording(i6, i7));
                picture2.endRecording();
                shadowDrawableState6.mLastDrawnBitmap = Bitmap.createBitmap(picture2);
            }
        }
        canvas.drawBitmap(this.mState.mLastDrawnBitmap, (Rect) null, bounds, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mState.mIntrinsicHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mState.mIntrinsicWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int[] iArr = R$styleable.ShadowDrawable;
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        try {
            Drawable drawable = obtainAttributes.getDrawable(0);
            if (drawable == null) {
                throw new XmlPullParserException("missing src attribute");
            }
            this.mState.mShadowColor = obtainAttributes.getColor(1, -16777216);
            this.mState.mShadowSize = obtainAttributes.getDimensionPixelSize(2, 0);
            this.mState.mDarkTintColor = obtainAttributes.getColor(3, -16777216);
            this.mState.mIntrinsicHeight = (this.mState.mShadowSize * 2) + drawable.getIntrinsicHeight();
            this.mState.mIntrinsicWidth = (this.mState.mShadowSize * 2) + drawable.getIntrinsicWidth();
            this.mState.mChangingConfigurations = drawable.getChangingConfigurations();
            this.mState.mChildState = drawable.getConstantState();
        } finally {
            obtainAttributes.recycle();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public ShadowDrawable() {
        this(new ShadowDrawableState(null));
    }

    public ShadowDrawable(ShadowDrawableState shadowDrawableState) {
        this.mPaint = new Paint(3);
        this.mState = shadowDrawableState;
    }
}
