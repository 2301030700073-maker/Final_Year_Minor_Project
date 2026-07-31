package androidx.compose.ui.text.android.selection;

import android.text.TextPaint;
import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphemeClusterSegmentFinderApi29 extends IntOffsetKt {
    public final CharSequence text;
    public final TextPaint textPaint;

    public GraphemeClusterSegmentFinderApi29(CharSequence charSequence, TextPaint textPaint) {
        this.text = charSequence;
        this.textPaint = textPaint;
    }

    @Override // androidx.compose.ui.unit.IntOffsetKt
    public final int next(int i) {
        CharSequence charSequence = this.text;
        return this.textPaint.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 0);
    }

    @Override // androidx.compose.ui.unit.IntOffsetKt
    public final int previous(int i) {
        CharSequence charSequence = this.text;
        return this.textPaint.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 2);
    }
}
