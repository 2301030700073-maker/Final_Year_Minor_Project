package org.wikipedia.richtext;

import android.text.TextPaint;
import android.text.style.URLSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class URLSpanNoUnderline extends URLSpan {
    public final int color;

    public URLSpanNoUnderline(int i, String str) {
        super(str);
        this.color = i;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        int i = this.color;
        if (i != -1) {
            textPaint.setColor(i);
        }
    }
}
