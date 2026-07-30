package c.b.a.b.a.a.a.a.c;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.text.style.ReplacementSpan;

/* renamed from: c.b.a.b.a.a.a.a.c.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0362a extends ReplacementSpan {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f2430a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2431b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2432c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2433d;
    public final boolean e;

    public C0362a(String str, RectF rectF, int i, boolean z, int i2, int i3) {
        this.f2430a = rectF;
        this.f2431b = i;
        this.e = z;
        this.f2432c = i2;
        this.f2433d = i3;
    }

    public static C0362a a(String str, RectF rectF, int i, boolean z, int i2, int i3) {
        return new C0362a(str, rectF, i, z, i2, i3);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (C0372k.f2475a) {
            paint.setColor(Color.argb(50, 100, 100, this.f2431b * 10));
            canvas.drawRect((int) f, i3, r2 + ((int) this.f2430a.width()), i5, paint);
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            int i3 = (int) (-this.f2430a.height());
            fontMetricsInt.ascent = i3;
            fontMetricsInt.top = i3;
            fontMetricsInt.leading = 0;
            fontMetricsInt.descent = 0;
            fontMetricsInt.bottom = 0;
        }
        return (int) this.f2430a.width();
    }
}
