package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;

/* compiled from: LayoutIntrinsics.android.kt */
/* loaded from: classes.dex */
public final class LayoutIntrinsics {
    private BoringLayout.Metrics _boringMetrics;
    private float _maxIntrinsicWidth = Float.NaN;
    private float _minIntrinsicWidth = Float.NaN;
    private boolean boringMetricsIsInit;
    private final CharSequence charSequence;
    private final int textDirectionHeuristic;
    private final TextPaint textPaint;

    public LayoutIntrinsics(CharSequence charSequence, TextPaint textPaint, int i) {
        this.charSequence = charSequence;
        this.textPaint = textPaint;
        this.textDirectionHeuristic = i;
    }

    public final BoringLayout.Metrics getBoringMetrics() {
        if (!this.boringMetricsIsInit) {
            this._boringMetrics = BoringLayoutFactory.INSTANCE.measure(this.charSequence, this.textPaint, TextLayout_androidKt.getTextDirectionHeuristic(this.textDirectionHeuristic));
            this.boringMetricsIsInit = true;
        }
        return this._boringMetrics;
    }

    public final float getMinIntrinsicWidth() {
        if (!Float.isNaN(this._minIntrinsicWidth)) {
            return this._minIntrinsicWidth;
        }
        float minIntrinsicWidth = LayoutIntrinsics_androidKt.minIntrinsicWidth(this.charSequence, this.textPaint);
        this._minIntrinsicWidth = minIntrinsicWidth;
        return minIntrinsicWidth;
    }

    public final float getMaxIntrinsicWidth() {
        boolean shouldIncreaseMaxIntrinsic;
        if (!Float.isNaN(this._maxIntrinsicWidth)) {
            return this._maxIntrinsicWidth;
        }
        BoringLayout.Metrics boringMetrics = getBoringMetrics();
        float f = boringMetrics != null ? boringMetrics.width : -1;
        if (f < 0.0f) {
            CharSequence charSequence = this.charSequence;
            f = (float) Math.ceil(Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.textPaint));
        }
        shouldIncreaseMaxIntrinsic = LayoutIntrinsics_androidKt.shouldIncreaseMaxIntrinsic(f, this.charSequence, this.textPaint);
        if (shouldIncreaseMaxIntrinsic) {
            f += 0.5f;
        }
        this._maxIntrinsicWidth = f;
        return f;
    }
}
