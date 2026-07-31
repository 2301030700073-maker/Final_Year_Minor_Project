package de.hdodenhof.circleimageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.chip.Chip;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class CircleImageView extends ImageView {
    public Bitmap mBitmap;
    public int mBitmapHeight;
    public final Paint mBitmapPaint;
    public BitmapShader mBitmapShader;
    public int mBitmapWidth;
    public int mBorderColor;
    public boolean mBorderOverlay;
    public final Paint mBorderPaint;
    public float mBorderRadius;
    public final RectF mBorderRect;
    public int mBorderWidth;
    public int mCircleBackgroundColor;
    public final Paint mCircleBackgroundPaint;
    public ColorFilter mColorFilter;
    public boolean mDisableCircularTransformation;
    public float mDrawableRadius;
    public final RectF mDrawableRect;
    public boolean mReady;
    public boolean mSetupPending;
    public final Matrix mShaderMatrix;
    public static final ImageView.ScaleType SCALE_TYPE = ImageView.ScaleType.CENTER_CROP;
    public static final Bitmap.Config BITMAP_CONFIG = Bitmap.Config.ARGB_8888;

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawableRect = new RectF();
        this.mBorderRect = new RectF();
        this.mShaderMatrix = new Matrix();
        this.mBitmapPaint = new Paint();
        this.mBorderPaint = new Paint();
        this.mCircleBackgroundPaint = new Paint();
        this.mBorderColor = -16777216;
        this.mBorderWidth = 0;
        this.mCircleBackgroundColor = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CircleImageView, i, 0);
        this.mBorderWidth = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mBorderColor = obtainStyledAttributes.getColor(0, -16777216);
        this.mBorderOverlay = obtainStyledAttributes.getBoolean(1, false);
        this.mCircleBackgroundColor = obtainStyledAttributes.getColor(3, 0);
        obtainStyledAttributes.recycle();
        init();
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public int getBorderWidth() {
        return this.mBorderWidth;
    }

    public int getCircleBackgroundColor() {
        return this.mCircleBackgroundColor;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return SCALE_TYPE;
    }

    public final void init() {
        super.setScaleType(SCALE_TYPE);
        this.mReady = true;
        setOutlineProvider(new Chip.AnonymousClass2(this, 1));
        if (this.mSetupPending) {
            setup();
            this.mSetupPending = false;
        }
    }

    public final void initializeBitmap() {
        Bitmap bitmap = null;
        if (this.mDisableCircularTransformation) {
            this.mBitmap = null;
        } else {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    try {
                        boolean z = drawable instanceof ColorDrawable;
                        Bitmap.Config config = BITMAP_CONFIG;
                        Bitmap createBitmap = z ? Bitmap.createBitmap(2, 2, config) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), config);
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        bitmap = createBitmap;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.mBitmap = bitmap;
        }
        setup();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mDisableCircularTransformation) {
            super.onDraw(canvas);
            return;
        }
        if (this.mBitmap == null) {
            return;
        }
        int i = this.mCircleBackgroundColor;
        RectF rectF = this.mDrawableRect;
        if (i != 0) {
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.mDrawableRadius, this.mCircleBackgroundPaint);
        }
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.mDrawableRadius, this.mBitmapPaint);
        if (this.mBorderWidth > 0) {
            RectF rectF2 = this.mBorderRect;
            canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), this.mBorderRadius, this.mBorderPaint);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setup();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mDisableCircularTransformation) {
            return super.onTouchEvent(motionEvent);
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (!this.mBorderRect.isEmpty()) {
            if (Math.pow(y - r2.centerY(), 2.0d) + Math.pow(x - r2.centerX(), 2.0d) > Math.pow(this.mBorderRadius, 2.0d)) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            UriKt$$ExternalSyntheticBUOutline0.m("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(int i) {
        if (i == this.mBorderColor) {
            return;
        }
        this.mBorderColor = i;
        this.mBorderPaint.setColor(i);
        invalidate();
    }

    public void setBorderOverlay(boolean z) {
        if (z == this.mBorderOverlay) {
            return;
        }
        this.mBorderOverlay = z;
        setup();
    }

    public void setBorderWidth(int i) {
        if (i == this.mBorderWidth) {
            return;
        }
        this.mBorderWidth = i;
        setup();
    }

    public void setCircleBackgroundColor(int i) {
        if (i == this.mCircleBackgroundColor) {
            return;
        }
        this.mCircleBackgroundColor = i;
        this.mCircleBackgroundPaint.setColor(i);
        invalidate();
    }

    public void setCircleBackgroundColorResource(int i) {
        setCircleBackgroundColor(getContext().getResources().getColor(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.mColorFilter) {
            return;
        }
        this.mColorFilter = colorFilter;
        Paint paint = this.mBitmapPaint;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.mDisableCircularTransformation == z) {
            return;
        }
        this.mDisableCircularTransformation = z;
        initializeBitmap();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        initializeBitmap();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        initializeBitmap();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        initializeBitmap();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        initializeBitmap();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        setup();
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        setup();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == SCALE_TYPE) {
            return;
        }
        Regex$$ExternalSyntheticBUOutline0.m$3(scaleType, " not supported.", "ScaleType ");
    }

    public final void setup() {
        float width;
        float height;
        int i;
        if (!this.mReady) {
            this.mSetupPending = true;
            return;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            return;
        }
        if (this.mBitmap == null) {
            invalidate();
            return;
        }
        Bitmap bitmap = this.mBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.mBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Paint paint = this.mBitmapPaint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        paint.setShader(this.mBitmapShader);
        Paint.Style style = Paint.Style.STROKE;
        Paint paint2 = this.mBorderPaint;
        paint2.setStyle(style);
        paint2.setAntiAlias(true);
        paint2.setColor(this.mBorderColor);
        paint2.setStrokeWidth(this.mBorderWidth);
        Paint.Style style2 = Paint.Style.FILL;
        Paint paint3 = this.mCircleBackgroundPaint;
        paint3.setStyle(style2);
        paint3.setAntiAlias(true);
        paint3.setColor(this.mCircleBackgroundColor);
        this.mBitmapHeight = this.mBitmap.getHeight();
        this.mBitmapWidth = this.mBitmap.getWidth();
        int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float paddingLeft = ((r1 - min) / 2.0f) + getPaddingLeft();
        float paddingTop = ((r2 - min) / 2.0f) + getPaddingTop();
        float f = min;
        RectF rectF = new RectF(paddingLeft, paddingTop, paddingLeft + f, f + paddingTop);
        RectF rectF2 = this.mBorderRect;
        rectF2.set(rectF);
        this.mBorderRadius = Math.min((rectF2.height() - this.mBorderWidth) / 2.0f, (rectF2.width() - this.mBorderWidth) / 2.0f);
        RectF rectF3 = this.mDrawableRect;
        rectF3.set(rectF2);
        if (!this.mBorderOverlay && (i = this.mBorderWidth) > 0) {
            float f2 = i - 1.0f;
            rectF3.inset(f2, f2);
        }
        this.mDrawableRadius = Math.min(rectF3.height() / 2.0f, rectF3.width() / 2.0f);
        if (paint != null) {
            paint.setColorFilter(this.mColorFilter);
        }
        Matrix matrix = this.mShaderMatrix;
        matrix.set(null);
        float f3 = 0.0f;
        if (rectF3.height() * this.mBitmapWidth > rectF3.width() * this.mBitmapHeight) {
            width = rectF3.height() / this.mBitmapHeight;
            height = 0.0f;
            f3 = (rectF3.width() - (this.mBitmapWidth * width)) * 0.5f;
        } else {
            width = rectF3.width() / this.mBitmapWidth;
            height = (rectF3.height() - (this.mBitmapHeight * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate(((int) (f3 + 0.5f)) + rectF3.left, ((int) (height + 0.5f)) + rectF3.top);
        this.mBitmapShader.setLocalMatrix(matrix);
        invalidate();
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context) {
        super(context);
        this.mDrawableRect = new RectF();
        this.mBorderRect = new RectF();
        this.mShaderMatrix = new Matrix();
        this.mBitmapPaint = new Paint();
        this.mBorderPaint = new Paint();
        this.mCircleBackgroundPaint = new Paint();
        this.mBorderColor = -16777216;
        this.mBorderWidth = 0;
        this.mCircleBackgroundColor = 0;
        init();
    }
}
