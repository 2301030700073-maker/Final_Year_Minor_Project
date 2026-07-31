package org.wikipedia.edit.richtext;

import android.text.style.TypefaceSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypefaceSpanEx extends TypefaceSpan implements SpanExtents {
    public int end;
    public int start;
    public final SyntaxRule syntaxRule;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TypefaceSpanEx(int r2, org.wikipedia.edit.richtext.SyntaxRule r3) {
        /*
            r1 = this;
            android.graphics.Typeface r0 = android.graphics.Typeface.MONOSPACE
            r0.getClass()
            r1.<init>(r0)
            r1.start = r2
            r1.syntaxRule = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.richtext.TypefaceSpanEx.<init>(int, org.wikipedia.edit.richtext.SyntaxRule):void");
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
}
