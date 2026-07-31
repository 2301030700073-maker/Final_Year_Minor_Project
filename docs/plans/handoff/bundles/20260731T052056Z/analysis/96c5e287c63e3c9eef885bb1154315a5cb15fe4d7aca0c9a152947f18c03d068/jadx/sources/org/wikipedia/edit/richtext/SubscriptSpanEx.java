package org.wikipedia.edit.richtext;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubscriptSpanEx extends MetricAffectingSpan implements SpanExtents {
    public final /* synthetic */ int $r8$classId;
    public int end;
    public int start;
    public SyntaxRule syntaxRule;

    public /* synthetic */ SubscriptSpanEx(int i) {
        this.$r8$classId = i;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final int getEnd() {
        switch (this.$r8$classId) {
        }
        return this.end;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final int getStart() {
        switch (this.$r8$classId) {
        }
        return this.start;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final SyntaxRule getSyntaxRule() {
        switch (this.$r8$classId) {
        }
        return this.syntaxRule;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final void setEnd(int i) {
        switch (this.$r8$classId) {
            case 0:
                this.end = i;
                break;
            default:
                this.end = i;
                break;
        }
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final void setStart(int i) {
        switch (this.$r8$classId) {
            case 0:
                this.start = i;
                break;
            default:
                this.start = i;
                break;
        }
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        int i = this.$r8$classId;
        textPaint.getClass();
        switch (i) {
            case 0:
                textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                textPaint.baselineShift -= (int) (textPaint.ascent() / 4.0f);
                break;
            default:
                textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                textPaint.baselineShift += (int) (textPaint.ascent() / 4.0f);
                break;
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        int i = this.$r8$classId;
        textPaint.getClass();
        switch (i) {
            case 0:
                textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                textPaint.baselineShift -= (int) (textPaint.ascent() / 4.0f);
                break;
            default:
                textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                textPaint.baselineShift += (int) (textPaint.ascent() / 4.0f);
                break;
        }
    }
}
