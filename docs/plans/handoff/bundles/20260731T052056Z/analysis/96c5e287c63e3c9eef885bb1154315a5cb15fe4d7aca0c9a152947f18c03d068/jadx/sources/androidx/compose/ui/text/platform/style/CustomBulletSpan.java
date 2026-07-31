package androidx.compose.ui.text.platform.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.unit.Density;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomBulletSpan implements LeadingMarginSpan {
    public final float bulletHeightPx;
    public final float bulletWidthPx;
    public final int diff;
    public final int minimumRequiredIndent;

    public CustomBulletSpan(float f, float f2, float f3, Density density, float f4) {
        this.bulletWidthPx = f;
        this.bulletHeightPx = f2;
        int roundToInt = UnsignedKt.roundToInt(f + f3);
        this.minimumRequiredIndent = roundToInt;
        this.diff = UnsignedKt.roundToInt(f4) - roundToInt;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(final Canvas canvas, final Paint paint, int i, final int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        Integer num;
        if (canvas == null) {
            return;
        }
        final float f = (i3 + i5) / 2.0f;
        int i8 = i - this.minimumRequiredIndent;
        if (i8 < 0) {
            i8 = 0;
        }
        final int i9 = i8;
        charSequence.getClass();
        if (((Spanned) charSequence).getSpanStart(this) != i6 || paint == null) {
            return;
        }
        Paint.Style style = paint.getStyle();
        paint.setStyle(Paint.Style.FILL);
        final long floatToRawIntBits = (Float.floatToRawIntBits(this.bulletWidthPx) << 32) | (Float.floatToRawIntBits(this.bulletHeightPx) & 4294967295L);
        Function0 function0 = new Function0(this) { // from class: androidx.compose.ui.text.platform.style.CustomBulletSpan$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                long j = floatToRawIntBits;
                float m396getMinDimensionimpl = Size.m396getMinDimensionimpl(j) / 2.0f;
                long floatToRawIntBits2 = (Float.floatToRawIntBits(m396getMinDimensionimpl) << 32) | (Float.floatToRawIntBits(m396getMinDimensionimpl) & 4294967295L);
                Rect m793Recttz77jQw = UtilsKt.m793Recttz77jQw(0L, j);
                RoundRect roundRect = new RoundRect(m793Recttz77jQw.left, m793Recttz77jQw.top, m793Recttz77jQw.right, m793Recttz77jQw.bottom, floatToRawIntBits2, floatToRawIntBits2, floatToRawIntBits2, floatToRawIntBits2);
                new Outline$Rounded(roundRect);
                float f2 = i9;
                Canvas canvas2 = canvas;
                Paint paint2 = paint;
                float f3 = f;
                if (RegexKt.isSimple(roundRect)) {
                    float intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits2 >> 32));
                    canvas2.drawRoundRect(f2, f3 - (roundRect.getHeight() / 2.0f), (roundRect.getWidth() * i2) + f2, (roundRect.getHeight() / 2.0f) + f3, intBitsToFloat, intBitsToFloat, paint2);
                } else {
                    AndroidPath Path = AndroidPath_androidKt.Path();
                    Modifier.CC.addRoundRect$default(Path, roundRect);
                    canvas2.save();
                    canvas2.translate(f2, f3 - (roundRect.getHeight() / 2.0f));
                    canvas2.drawPath(Path.internalPath, paint2);
                    canvas2.restore();
                }
                return Unit.INSTANCE;
            }
        };
        if (Float.isNaN(Float.NaN)) {
            num = null;
        } else {
            num = Integer.valueOf(paint.getAlpha());
            paint.setAlpha((int) Math.rint(Double.NaN));
        }
        function0.invoke();
        if (num != null) {
            paint.setAlpha(num.intValue());
        }
        paint.setStyle(style);
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        int i = this.diff;
        if (i >= 0) {
            return 0;
        }
        return Math.abs(i);
    }
}
