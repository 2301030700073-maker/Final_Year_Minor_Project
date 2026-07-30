package androidx.compose.ui.text.android.style;

import android.graphics.Paint;

/* compiled from: LineHeightStyleSpan.android.kt */
/* loaded from: classes.dex */
public abstract class LineHeightStyleSpan_androidKt {
    public static final int lineHeight(Paint.FontMetricsInt fontMetricsInt) {
        return fontMetricsInt.descent - fontMetricsInt.ascent;
    }
}
