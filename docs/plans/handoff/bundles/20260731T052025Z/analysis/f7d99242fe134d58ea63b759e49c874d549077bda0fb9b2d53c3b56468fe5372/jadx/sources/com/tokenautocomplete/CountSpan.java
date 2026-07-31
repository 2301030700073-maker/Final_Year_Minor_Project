package com.tokenautocomplete;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CountSpan extends CharacterStyle {
    public String countText;

    public final void setCount(int i) {
        if (i > 0) {
            this.countText = String.format(Locale.getDefault(), " +%d", Integer.valueOf(i));
        } else {
            this.countText = "";
        }
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
    }
}
