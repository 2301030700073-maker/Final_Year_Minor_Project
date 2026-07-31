package androidx.compose.ui.text.android.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.sqlite.SQLite;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlaceholderSpan extends ReplacementSpan {
    public Paint.FontMetricsInt fontMetrics;
    public final float height;
    public final float heightAsSpInPx;
    public int heightPx;
    public final int heightUnit;
    public boolean isLaidOut;
    public final int verticalAlign;
    public final float width;
    public final float widthAsSpInPx;
    public int widthPx;
    public final int widthUnit;

    public PlaceholderSpan(float f, int i, float f2, int i2, Density density, int i3) {
        float mo176toPxR2X_6o = i == 0 ? density.mo176toPxR2X_6o(SQLite.pack(f, 4294967296L)) : 0.0f;
        float mo176toPxR2X_6o2 = i2 == 0 ? density.mo176toPxR2X_6o(SQLite.pack(f2, 4294967296L)) : 0.0f;
        this.width = f;
        this.widthUnit = i;
        this.height = f2;
        this.heightUnit = i2;
        this.widthAsSpInPx = mo176toPxR2X_6o;
        this.heightAsSpInPx = mo176toPxR2X_6o2;
        this.verticalAlign = i3;
    }

    public final Paint.FontMetricsInt getFontMetrics() {
        Paint.FontMetricsInt fontMetricsInt = this.fontMetrics;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fontMetrics");
        throw null;
    }

    public final int getHeightPx() {
        if (!this.isLaidOut) {
            InlineClassHelperKt.throwIllegalStateException("PlaceholderSpan is not laid out yet.");
        }
        return this.heightPx;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float f;
        float f2;
        this.isLaidOut = true;
        float textSize = paint.getTextSize();
        this.fontMetrics = paint.getFontMetricsInt();
        if (getFontMetrics().descent <= getFontMetrics().ascent) {
            InlineClassHelperKt.throwIllegalArgumentException("Invalid fontMetrics: line height can not be negative.");
        }
        int i3 = this.widthUnit;
        if (i3 == 0) {
            f = this.widthAsSpInPx;
        } else {
            if (i3 != 1) {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Unsupported unit.");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return 0;
            }
            f = this.width * textSize;
        }
        this.widthPx = (int) Math.ceil(f);
        int i4 = this.heightUnit;
        if (i4 == 0) {
            f2 = this.heightAsSpInPx;
        } else {
            if (i4 != 1) {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Unsupported unit.");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return 0;
            }
            f2 = this.height * textSize;
        }
        this.heightPx = (int) Math.ceil(f2);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = getFontMetrics().ascent;
            fontMetricsInt.descent = getFontMetrics().descent;
            fontMetricsInt.leading = getFontMetrics().leading;
            switch (this.verticalAlign) {
                case 0:
                    if (fontMetricsInt.ascent > (-getHeightPx())) {
                        fontMetricsInt.ascent = -getHeightPx();
                        break;
                    }
                    break;
                case 1:
                case 4:
                    if (getHeightPx() + fontMetricsInt.ascent > fontMetricsInt.descent) {
                        fontMetricsInt.descent = getHeightPx() + fontMetricsInt.ascent;
                        break;
                    }
                    break;
                case 2:
                case 5:
                    if (fontMetricsInt.ascent > fontMetricsInt.descent - getHeightPx()) {
                        fontMetricsInt.ascent = fontMetricsInt.descent - getHeightPx();
                        break;
                    }
                    break;
                case 3:
                case 6:
                    if (fontMetricsInt.descent - fontMetricsInt.ascent < getHeightPx()) {
                        int heightPx = fontMetricsInt.ascent - ((getHeightPx() - (fontMetricsInt.descent - fontMetricsInt.ascent)) / 2);
                        fontMetricsInt.ascent = heightPx;
                        fontMetricsInt.descent = getHeightPx() + heightPx;
                        break;
                    }
                    break;
                default:
                    InlineClassHelperKt.throwIllegalArgumentException("Unknown verticalAlign.");
                    break;
            }
            fontMetricsInt.top = Math.min(getFontMetrics().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(getFontMetrics().bottom, fontMetricsInt.descent);
        }
        return getWidthPx();
    }

    public final int getWidthPx() {
        if (!this.isLaidOut) {
            InlineClassHelperKt.throwIllegalStateException("PlaceholderSpan is not laid out yet.");
        }
        return this.widthPx;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
    }
}
