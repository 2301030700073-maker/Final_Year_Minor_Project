package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SkewXSpan extends MetricAffectingSpan {
    public final /* synthetic */ int $r8$classId;
    public final float skewX;

    public /* synthetic */ SkewXSpan(float f, int i) {
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
