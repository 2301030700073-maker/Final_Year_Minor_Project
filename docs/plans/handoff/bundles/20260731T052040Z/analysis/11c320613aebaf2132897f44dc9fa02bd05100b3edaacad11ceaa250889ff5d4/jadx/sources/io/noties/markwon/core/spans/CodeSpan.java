package io.noties.markwon.core.spans;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import io.noties.markwon.core.MarkwonTheme;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CodeSpan extends MetricAffectingSpan {
    public final /* synthetic */ int $r8$classId;
    public final Object theme;

    public /* synthetic */ CodeSpan(Object obj, int i) {
        this.$r8$classId = i;
        this.theme = obj;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        int i = this.$r8$classId;
        Object obj = this.theme;
        switch (i) {
            case 0:
                MarkwonTheme markwonTheme = (MarkwonTheme) obj;
                markwonTheme.getClass();
                textPaint.setTypeface(Typeface.MONOSPACE);
                textPaint.setTextSize(textPaint.getTextSize() * 0.87f);
                markwonTheme.getClass();
                textPaint.bgColor = CharsKt.applyAlpha(textPaint.getColor(), 25);
                break;
            case 1:
                textPaint.setFontFeatureSettings((String) obj);
                break;
            default:
                textPaint.setTypeface((Typeface) obj);
                break;
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        int i = this.$r8$classId;
        Object obj = this.theme;
        switch (i) {
            case 0:
                ((MarkwonTheme) obj).getClass();
                textPaint.setTypeface(Typeface.MONOSPACE);
                textPaint.setTextSize(textPaint.getTextSize() * 0.87f);
                break;
            case 1:
                textPaint.setFontFeatureSettings((String) obj);
                break;
            default:
                textPaint.setTypeface((Typeface) obj);
                break;
        }
    }
}
