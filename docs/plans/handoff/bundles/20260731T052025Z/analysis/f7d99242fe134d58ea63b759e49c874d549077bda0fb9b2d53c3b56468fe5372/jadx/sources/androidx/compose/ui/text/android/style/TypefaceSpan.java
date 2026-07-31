package androidx.compose.ui.text.android.style;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TypefaceSpan extends MetricAffectingSpan {
    public final /* synthetic */ int $r8$classId;
    public final Object typeface;

    public /* synthetic */ TypefaceSpan(int i, Object obj) {
        this.$r8$classId = i;
        this.typeface = obj;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        int i = this.$r8$classId;
        Object obj = this.typeface;
        switch (i) {
            case 0:
                textPaint.setTypeface((Typeface) obj);
                break;
            default:
                textPaint.setFontFeatureSettings((String) obj);
                break;
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        int i = this.$r8$classId;
        Object obj = this.typeface;
        switch (i) {
            case 0:
                textPaint.setTypeface((Typeface) obj);
                break;
            default:
                textPaint.setFontFeatureSettings((String) obj);
                break;
        }
    }
}
