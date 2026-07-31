package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
