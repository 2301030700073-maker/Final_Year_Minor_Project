package org.wikipedia.diff;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.LineBackgroundSpan;
import okio.Okio__OkioKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmptyLineSpan implements LineBackgroundSpan {
    public final int fillColor;
    public final int strokeColor;

    public EmptyLineSpan(int i, int i2) {
        this.fillColor = i;
        this.strokeColor = i2;
    }

    @Override // android.text.style.LineBackgroundSpan
    public final void drawBackground(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, int i8) {
        canvas.getClass();
        paint.getClass();
        charSequence.getClass();
        int color = paint.getColor();
        Paint.Style style = paint.getStyle();
        float dpToPx = Okio__OkioKt.dpToPx(0.5f);
        float dpToPx2 = Okio__OkioKt.dpToPx(8.0f);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.fillColor);
        float f = i + dpToPx;
        float f2 = i3 + dpToPx;
        float f3 = i2 - dpToPx;
        float f4 = (dpToPx2 / 2.0f) + i5;
        canvas.drawRoundRect(f, f2, f3, f4, dpToPx2, dpToPx2, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(this.strokeColor);
        canvas.drawRoundRect(f, f2, f3, f4, dpToPx2, dpToPx2, paint);
        paint.setStyle(style);
        paint.setColor(color);
    }
}
