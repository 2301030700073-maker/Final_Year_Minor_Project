package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import io.noties.markwon.core.MarkwonTheme;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BulletListItemSpan implements LeadingMarginSpan {
    public static final boolean IS_NOUGAT;
    public final int level;
    public final MarkwonTheme theme;
    public final Paint paint = ObjectsPool.PAINT;
    public final RectF circle = ObjectsPool.RECT_F;
    public final Rect rectangle = ObjectsPool.RECT;

    static {
        int i = Build.VERSION.SDK_INT;
        IS_NOUGAT = 24 == i || 25 == i;
    }

    public BulletListItemSpan(MarkwonTheme markwonTheme, int i) {
        this.theme = markwonTheme;
        this.level = i;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int i8;
        int i9;
        RectF rectF = this.circle;
        Rect rect = this.rectangle;
        if (z && (charSequence instanceof Spanned) && ((Spanned) charSequence).getSpanStart(this) == i6) {
            Paint paint2 = this.paint;
            paint2.set(paint);
            MarkwonTheme markwonTheme = this.theme;
            markwonTheme.getClass();
            int i10 = markwonTheme.blockMargin;
            paint2.setColor(paint2.getColor());
            int i11 = markwonTheme.bulletListItemStrokeWidth;
            if (i11 != 0) {
                paint2.setStrokeWidth(i11);
            }
            int save = canvas.save();
            try {
                int min = Math.min(i10, (int) ((paint2.descent() - paint2.ascent()) + 0.5f)) / 2;
                int i12 = (i10 - min) / 2;
                boolean z2 = IS_NOUGAT;
                int i13 = this.level;
                if (z2) {
                    int width = i2 < 0 ? i - (layout.getWidth() - (i10 * i13)) : (i10 * i13) - i;
                    int i14 = (i12 * i2) + i;
                    int i15 = (i2 * min) + i14;
                    int i16 = i2 * width;
                    i8 = Math.min(i14, i15) + i16;
                    i9 = Math.max(i14, i15) + i16;
                } else {
                    if (i2 <= 0) {
                        i -= i10;
                    }
                    i8 = i + i12;
                    i9 = i8 + min;
                }
                int descent = (i4 + ((int) (((paint2.descent() + paint2.ascent()) / 2.0f) + 0.5f))) - (min / 2);
                int i17 = min + descent;
                if (i13 != 0 && i13 != 1) {
                    rect.set(i8, descent, i9, i17);
                    paint2.setStyle(Paint.Style.FILL);
                    canvas.drawRect(rect, paint2);
                    canvas.restoreToCount(save);
                }
                rectF.set(i8, descent, i9, i17);
                paint2.setStyle(i13 == 0 ? Paint.Style.FILL : Paint.Style.STROKE);
                canvas.drawOval(rectF, paint2);
                canvas.restoreToCount(save);
            } catch (Throwable th) {
                canvas.restoreToCount(save);
                throw th;
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return this.theme.blockMargin;
    }
}
