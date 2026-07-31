package org.wikipedia.edit.richtext;

import android.text.style.RelativeSizeSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RelativeSizeSpanEx extends RelativeSizeSpan implements SpanExtents {
    public int end;
    public int start;
    public SyntaxRule syntaxRule;

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
