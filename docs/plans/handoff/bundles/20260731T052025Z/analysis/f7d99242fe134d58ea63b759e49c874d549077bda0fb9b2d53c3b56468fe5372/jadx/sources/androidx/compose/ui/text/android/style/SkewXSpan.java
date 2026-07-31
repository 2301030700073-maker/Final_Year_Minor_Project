package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SkewXSpan extends MetricAffectingSpan {
    public final /* synthetic */ int $r8$classId;
    public final float skewX;

    public /* synthetic */ SkewXSpan(int i, float f) {
        this.$r8$classId = i;
        this.skewX = f;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        int i = this.$r8$classId;
        float f = this.skewX;
        switch (i) {
            case 0:
                textPaint.setTextSkewX(textPaint.getTextSkewX() + f);
                break;
            default:
                textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * f);
                break;
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        int i = this.$r8$classId;
        float f = this.skewX;
        switch (i) {
            case 0:
                textPaint.setTextSkewX(textPaint.getTextSkewX() + f);
                break;
            default:
                textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * f);
                break;
        }
    }
}
