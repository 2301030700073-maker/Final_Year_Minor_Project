package androidx.compose.ui.text.android;

import android.os.Build;
import android.text.BoringLayout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutIntrinsics {
    public BoringLayout.Metrics _boringMetrics;
    public CharSequence _charSequenceForIntrinsicWidth;
    public float _maxIntrinsicWidth = Float.NaN;
    public float _minIntrinsicWidth = Float.NaN;
    public boolean boringMetricsIsInit;
    public final CharSequence charSequence;
    public final int textDirectionHeuristic;
    public final TextPaint textPaint;

    public LayoutIntrinsics(CharSequence charSequence, TextPaint textPaint, int i) {
        this.charSequence = charSequence;
        this.textPaint = textPaint;
        this.textDirectionHeuristic = i;
    }

    public final BoringLayout.Metrics getBoringMetrics() {
        if (!this.boringMetricsIsInit) {
            TextDirectionHeuristic textDirectionHeuristic = TextLayout_androidKt.getTextDirectionHeuristic(this.textDirectionHeuristic);
            int i = Build.VERSION.SDK_INT;
            CharSequence charSequence = this.charSequence;
            TextPaint textPaint = this.textPaint;
            this._boringMetrics = i >= 33 ? BoringLayoutFactory33.isBoring(charSequence, textPaint, textDirectionHeuristic) : !textDirectionHeuristic.isRtl(charSequence, 0, charSequence.length()) ? BoringLayout.isBoring(charSequence, textPaint, null) : null;
            this.boringMetricsIsInit = true;
        }
        return this._boringMetrics;
    }

    public final CharSequence getCharSequenceForIntrinsicWidth() {
        CharSequence charSequence = this._charSequenceForIntrinsicWidth;
        if (charSequence != null) {
            charSequence.getClass();
            return charSequence;
        }
        CharSequence charSequence2 = this.charSequence;
        if (charSequence2 instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence2;
            if (StaticLayoutFactory.hasSpan(spanned, CharacterStyle.class)) {
                CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(0, charSequence2.length(), CharacterStyle.class);
                if (characterStyleArr != null && characterStyleArr.length != 0) {
                    SpannableString spannableString = null;
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        if (!(characterStyle instanceof MetricAffectingSpan)) {
                            if (spannableString == null) {
                                spannableString = new SpannableString(charSequence2);
                            }
                            spannableString.removeSpan(characterStyle);
                        }
                    }
                    if (spannableString != null) {
                        charSequence2 = spannableString;
                    }
                }
            }
        }
        this._charSequenceForIntrinsicWidth = charSequence2;
        return charSequence2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (androidx.compose.ui.text.android.StaticLayoutFactory.hasSpan(r2, androidx.compose.ui.text.android.style.LetterSpacingSpanEm.class) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        if (r3.getLetterSpacing() == androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float getMaxIntrinsicWidth() {
        /*
            r6 = this;
            float r0 = r6._maxIntrinsicWidth
            boolean r0 = java.lang.Float.isNaN(r0)
            if (r0 != 0) goto Lb
            float r6 = r6._maxIntrinsicWidth
            return r6
        Lb:
            android.text.BoringLayout$Metrics r0 = r6.getBoringMetrics()
            if (r0 == 0) goto L14
            int r0 = r0.width
            goto L15
        L14:
            r0 = -1
        L15:
            float r0 = (float) r0
            r1 = 0
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            android.text.TextPaint r3 = r6.textPaint
            if (r2 >= 0) goto L34
            java.lang.CharSequence r0 = r6.getCharSequenceForIntrinsicWidth()
            int r0 = r0.length()
            java.lang.CharSequence r2 = r6.getCharSequenceForIntrinsicWidth()
            r4 = 0
            float r0 = android.text.Layout.getDesiredWidth(r2, r4, r0, r3)
            double r4 = (double) r0
            double r4 = java.lang.Math.ceil(r4)
            float r0 = (float) r4
        L34:
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 != 0) goto L39
            goto L5d
        L39:
            java.lang.CharSequence r2 = r6.charSequence
            boolean r4 = r2 instanceof android.text.Spanned
            if (r4 == 0) goto L51
            android.text.Spanned r2 = (android.text.Spanned) r2
            java.lang.Class<androidx.compose.ui.text.android.style.LetterSpacingSpanPx> r4 = androidx.compose.ui.text.android.style.LetterSpacingSpanPx.class
            boolean r4 = androidx.compose.ui.text.android.StaticLayoutFactory.hasSpan(r2, r4)
            if (r4 != 0) goto L5a
            java.lang.Class<androidx.compose.ui.text.android.style.LetterSpacingSpanEm> r4 = androidx.compose.ui.text.android.style.LetterSpacingSpanEm.class
            boolean r2 = androidx.compose.ui.text.android.StaticLayoutFactory.hasSpan(r2, r4)
            if (r2 != 0) goto L5a
        L51:
            float r2 = r3.getLetterSpacing()
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 != 0) goto L5a
            goto L5d
        L5a:
            r1 = 1056964608(0x3f000000, float:0.5)
            float r0 = r0 + r1
        L5d:
            r6._maxIntrinsicWidth = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.LayoutIntrinsics.getMaxIntrinsicWidth():float");
    }
}
