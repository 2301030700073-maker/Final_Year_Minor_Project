package androidx.compose.ui.text.android.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.work.OperationKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IndentationFixSpan implements LeadingMarginSpan {
    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int lineForOffset;
        if (layout == null || paint == null || (lineForOffset = layout.getLineForOffset(i6)) != layout.getLineCount() - 1) {
            return;
        }
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(lineForOffset) > 0) {
            float ellipsizedRightPadding = OperationKt.getEllipsizedRightPadding(layout, lineForOffset, paint) + OperationKt.getEllipsizedLeftPadding(layout, lineForOffset, paint);
            if (ellipsizedRightPadding == 0.0f) {
                return;
            }
            canvas.getClass();
            canvas.translate(ellipsizedRightPadding, 0.0f);
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }
}
