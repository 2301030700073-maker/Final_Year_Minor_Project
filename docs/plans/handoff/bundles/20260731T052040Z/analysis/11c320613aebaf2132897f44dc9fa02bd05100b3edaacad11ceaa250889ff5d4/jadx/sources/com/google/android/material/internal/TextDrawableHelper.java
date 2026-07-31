package com.google.android.material.internal;

import android.content.Context;
import android.text.TextPaint;
import com.google.android.material.chip.Chip;
import com.google.android.material.resources.TextAppearance;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextDrawableHelper {
    public final WeakReference delegate;
    public TextAppearance textAppearance;
    public float textHeight;
    public float textWidth;
    public final TextPaint textPaint = new TextPaint(1);
    public final Chip.AnonymousClass1 fontCallback = new Chip.AnonymousClass1(this, 1);
    public boolean textSizeDirty = true;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface TextDrawableDelegate {
        int[] getState();

        boolean onStateChange(int[] iArr);

        void onTextSizeChange();
    }

    public TextDrawableHelper(TextDrawableDelegate textDrawableDelegate) {
        this.delegate = new WeakReference(null);
        this.delegate = new WeakReference(textDrawableDelegate);
    }

    public final void refreshTextDimens(String str) {
        TextPaint textPaint = this.textPaint;
        this.textWidth = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.textHeight = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.textSizeDirty = false;
    }

    public final void setTextAppearance(TextAppearance textAppearance, Context context) {
        if (this.textAppearance != textAppearance) {
            this.textAppearance = textAppearance;
            WeakReference weakReference = this.delegate;
            if (textAppearance != null) {
                TextPaint textPaint = this.textPaint;
                Chip.AnonymousClass1 anonymousClass1 = this.fontCallback;
                textAppearance.updateMeasureState(context, textPaint, anonymousClass1);
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) weakReference.get();
                if (textDrawableDelegate != null) {
                    textPaint.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.updateDrawState(context, textPaint, anonymousClass1);
                this.textSizeDirty = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = (TextDrawableDelegate) weakReference.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.onTextSizeChange();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }
}
