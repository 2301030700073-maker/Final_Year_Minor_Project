package org.wikipedia.edit.richtext;

import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ColorSpanEx extends ForegroundColorSpan implements SpanExtents {
    public final int backColor;
    public int end;
    public int start;
    public final SyntaxRule syntaxRule;

    public ColorSpanEx(int i, int i2, int i3, SyntaxRule syntaxRule) {
        super(i);
        this.backColor = i2;
        this.start = i3;
        this.syntaxRule = syntaxRule;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final int getEnd() {
        return this.end;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final int getStart() {
        return this.start;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final SyntaxRule getSyntaxRule() {
        return this.syntaxRule;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final void setEnd(int i) {
        this.end = i;
    }

    @Override // org.wikipedia.edit.richtext.SpanExtents
    public final void setStart(int i) {
        this.start = i;
    }

    @Override // android.text.style.ForegroundColorSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        textPaint.bgColor = this.backColor;
        super.updateDrawState(textPaint);
    }
}
