package androidx.compose.ui.text.android.selection;

import android.text.TextPaint;
import androidx.room.Room;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GraphemeClusterSegmentFinderApi29 extends Room {
    public final CharSequence text;
    public final TextPaint textPaint;

    public GraphemeClusterSegmentFinderApi29(CharSequence charSequence, TextPaint textPaint) {
        super(7);
        this.text = charSequence;
        this.textPaint = textPaint;
    }

    @Override // androidx.room.Room
    public final int next(int i) {
        CharSequence charSequence = this.text;
        return this.textPaint.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 0);
    }

    @Override // androidx.room.Room
    public final int previous(int i) {
        CharSequence charSequence = this.text;
        return this.textPaint.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 2);
    }
}
