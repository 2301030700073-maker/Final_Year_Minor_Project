package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012¨\u0006\u0017"}, d2 = {"Lorg/wikipedia/views/CircularProgressBar;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "currentProgress", "", "setCurrentProgress", "(D)V", "", "color", "getProgressColor", "()I", "setProgressColor", "(I)V", "progressColor", "getProgressBackgroundColor", "setProgressBackgroundColor", "progressBackgroundColor", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CircularProgressBar extends View {
    public final RectF circleBounds;
    public double maxProgressValue;
    public final Paint progressBackgroundPaint;
    public final Paint progressPaint;
    public int sweepAngle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        Paint paint = new Paint();
        this.progressPaint = paint;
        Paint paint2 = new Paint();
        this.progressBackgroundPaint = paint2;
        this.circleBounds = new RectF();
        this.maxProgressValue = 100.0d;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CircularProgressBar);
        obtainStyledAttributes.getClass();
        this.maxProgressValue = obtainStyledAttributes.getInt(0, 100);
        Integer valueOf = Integer.valueOf(obtainStyledAttributes.getColor(2, Cache.Companion.getThemedColor(context, R.attr.progressive_color)));
        Integer valueOf2 = Integer.valueOf(obtainStyledAttributes.getColor(1, Cache.Companion.getThemedColor(context, R.attr.placeholder_color)));
        Integer valueOf3 = Integer.valueOf(obtainStyledAttributes.getDimensionPixelSize(3, (int) Okio__OkioKt.dpToPx(RecyclerView.DECELERATION_RATE)));
        obtainStyledAttributes.recycle();
        int intValue = valueOf.intValue();
        int intValue2 = valueOf2.intValue();
        float intValue3 = valueOf3.intValue();
        paint.setStrokeWidth(intValue3);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(intValue);
        paint.setAntiAlias(true);
        paint2.setStrokeWidth(intValue3);
        paint2.setStyle(style);
        paint2.setColor(intValue2);
        paint2.setAntiAlias(true);
    }

    public final int getProgressBackgroundColor() {
        return this.progressBackgroundPaint.getColor();
    }

    public final int getProgressColor() {
        return this.progressPaint.getColor();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        Paint paint = this.progressBackgroundPaint;
        RectF rectF = this.circleBounds;
        canvas.drawArc(rectF, RecyclerView.DECELERATION_RATE, 360.0f, false, paint);
        canvas.drawArc(rectF, 270.0f, this.sweepAngle, true, this.progressPaint);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int strokeWidth = (int) this.progressPaint.getStrokeWidth();
        int i3 = paddingBottom + paddingTop;
        int i4 = paddingLeft + paddingRight;
        if (i3 < i4) {
            i3 = i4;
        }
        int i5 = strokeWidth + i3;
        if (mode == Integer.MIN_VALUE ? i5 <= size : mode != 1073741824) {
            size = i5;
        }
        if (mode2 == Integer.MIN_VALUE ? i5 <= size2 : mode2 != 1073741824) {
            size2 = i5;
        }
        int i6 = (size - paddingLeft) - paddingRight;
        int i7 = (size2 - paddingTop) - paddingBottom;
        if (i7 <= i6) {
            i6 = i7;
        }
        setMeasuredDimension(i6, i6);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        float strokeWidth = this.progressPaint.getStrokeWidth() / 2.0f;
        RectF rectF = this.circleBounds;
        rectF.left = strokeWidth;
        rectF.top = strokeWidth;
        rectF.right = i - strokeWidth;
        rectF.bottom = i2 - strokeWidth;
    }

    public final void setCurrentProgress(double currentProgress) {
        double d = this.maxProgressValue;
        if (currentProgress > d) {
            this.maxProgressValue = currentProgress;
            d = currentProgress;
        }
        this.sweepAngle = (int) ((currentProgress / d) * 360.0d);
        invalidate();
    }

    public final void setProgressBackgroundColor(int i) {
        this.progressBackgroundPaint.setColor(i);
        invalidate();
    }

    public final void setProgressColor(int i) {
        this.progressPaint.setColor(i);
        invalidate();
    }
}
