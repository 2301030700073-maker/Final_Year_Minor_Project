package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import androidx.core.graphics.drawable.DrawableCompat;
import com.android.contacts.ContactPhotoManager;

/* loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    private static final float ARROW_HEAD_ANGLE = (float) Math.toRadians(45.0d);
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private float mMaxCutForBarSize;
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private final Paint mPaint = new Paint();
    private final Path mPath = new Path();
    private boolean mVerticalMirror = false;
    private int mDirection = 2;

    private static float lerp(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public DrawerArrowDrawable(Context context) {
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeJoin(Paint.Join.MITER);
        this.mPaint.setStrokeCap(Paint.Cap.BUTT);
        this.mPaint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.DrawerArrowToggle, R$attr.drawerArrowStyle, R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(obtainStyledAttributes.getColor(R$styleable.DrawerArrowToggle_color, 0));
        setBarThickness(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_thickness, ContactPhotoManager.OFFSET_DEFAULT));
        setSpinEnabled(obtainStyledAttributes.getBoolean(R$styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_gapBetweenBars, ContactPhotoManager.OFFSET_DEFAULT)));
        this.mSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_barLength, ContactPhotoManager.OFFSET_DEFAULT));
        this.mArrowHeadLength = Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowHeadLength, ContactPhotoManager.OFFSET_DEFAULT));
        this.mArrowShaftLength = obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowShaftLength, ContactPhotoManager.OFFSET_DEFAULT);
        obtainStyledAttributes.recycle();
    }

    public void setColor(int i) {
        if (i != this.mPaint.getColor()) {
            this.mPaint.setColor(i);
            invalidateSelf();
        }
    }

    public void setBarThickness(float f) {
        if (this.mPaint.getStrokeWidth() != f) {
            this.mPaint.setStrokeWidth(f);
            this.mMaxCutForBarSize = (float) ((f / 2.0f) * Math.cos(ARROW_HEAD_ANGLE));
            invalidateSelf();
        }
    }

    public void setGapSize(float f) {
        if (f != this.mBarGap) {
            this.mBarGap = f;
            invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean z) {
        if (this.mSpin != z) {
            this.mSpin = z;
            invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean z) {
        if (this.mVerticalMirror != z) {
            this.mVerticalMirror = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i = this.mDirection;
        boolean z = false;
        if (i != 0 && (i == 1 || (i == 3 ? DrawableCompat.getLayoutDirection(this) == 0 : DrawableCompat.getLayoutDirection(this) == 1))) {
            z = true;
        }
        float f = this.mArrowHeadLength;
        float lerp = lerp(this.mBarLength, (float) Math.sqrt(f * f * 2.0f), this.mProgress);
        float lerp2 = lerp(this.mBarLength, this.mArrowShaftLength, this.mProgress);
        float round = Math.round(lerp(ContactPhotoManager.OFFSET_DEFAULT, this.mMaxCutForBarSize, this.mProgress));
        float lerp3 = lerp(ContactPhotoManager.OFFSET_DEFAULT, ARROW_HEAD_ANGLE, this.mProgress);
        float lerp4 = lerp(z ? ContactPhotoManager.OFFSET_DEFAULT : -180.0f, z ? 180.0f : ContactPhotoManager.OFFSET_DEFAULT, this.mProgress);
        double d = lerp;
        double d2 = lerp3;
        boolean z2 = z;
        float round2 = Math.round(Math.cos(d2) * d);
        float round3 = Math.round(d * Math.sin(d2));
        this.mPath.rewind();
        float lerp5 = lerp(this.mBarGap + this.mPaint.getStrokeWidth(), -this.mMaxCutForBarSize, this.mProgress);
        float f2 = (-lerp2) / 2.0f;
        this.mPath.moveTo(f2 + round, ContactPhotoManager.OFFSET_DEFAULT);
        this.mPath.rLineTo(lerp2 - (round * 2.0f), ContactPhotoManager.OFFSET_DEFAULT);
        this.mPath.moveTo(f2, lerp5);
        this.mPath.rLineTo(round2, round3);
        this.mPath.moveTo(f2, -lerp5);
        this.mPath.rLineTo(round2, -round3);
        this.mPath.close();
        canvas.save();
        float strokeWidth = this.mPaint.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), ((((int) (height - (2.0f * r5))) / 4) * 2) + (strokeWidth * 1.5f) + this.mBarGap);
        if (this.mSpin) {
            canvas.rotate(lerp4 * (this.mVerticalMirror ^ z2 ? -1 : 1));
        } else if (z2) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mSize;
    }

    public void setProgress(float f) {
        if (this.mProgress != f) {
            this.mProgress = f;
            invalidateSelf();
        }
    }
}
