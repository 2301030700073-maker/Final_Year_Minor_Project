package com.google.android.material.internal;

import android.text.TextPaint;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.resources.TextAppearance;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextDrawableHelper {
    public final WeakReference delegate;
    public TextAppearance textAppearance;
    public float textWidth;
    public final TextPaint textPaint = new TextPaint(1);
    public final Chip.AnonymousClass1 fontCallback = new Chip.AnonymousClass1(1, this);
    public boolean textSizeDirty = true;

    public TextDrawableHelper(ChipDrawable chipDrawable) {
        this.delegate = new WeakReference(null);
        this.delegate = new WeakReference(chipDrawable);
    }

    public final float getTextWidth(String str) {
        if (!this.textSizeDirty) {
            return this.textWidth;
        }
        TextPaint textPaint = this.textPaint;
        this.textWidth = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.textSizeDirty = false;
        return this.textWidth;
    }
}
