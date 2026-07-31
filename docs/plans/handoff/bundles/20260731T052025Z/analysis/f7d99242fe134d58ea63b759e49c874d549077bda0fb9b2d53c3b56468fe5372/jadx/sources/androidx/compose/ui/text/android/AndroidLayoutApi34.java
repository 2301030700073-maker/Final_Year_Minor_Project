package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.GraphemeClusterSegmentFinder;
import android.text.Layout;
import android.text.SegmentFinder;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.platform.WeakCache;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidLayoutApi34 {
    public static int[] getRangeForRect$ui_text(TextLayout textLayout, RectF rectF, int i, final ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0) {
        SegmentFinder graphemeClusterSegmentFinder;
        if (i == 1) {
            final WeakCache weakCache = new WeakCache(9, textLayout.layout.getText(), textLayout.getWordIterator());
            graphemeClusterSegmentFinder = new SegmentFinder() { // from class: androidx.compose.ui.text.android.selection.Api34SegmentFinder$toAndroidSegmentFinder$1
                public final int nextEndBoundary(int i2) {
                    return WeakCache.this.nextEndBoundary(i2);
                }

                public final int nextStartBoundary(int i2) {
                    return WeakCache.this.nextStartBoundary(i2);
                }

                public final int previousEndBoundary(int i2) {
                    return WeakCache.this.previousEndBoundary(i2);
                }

                public final int previousStartBoundary(int i2) {
                    return WeakCache.this.previousStartBoundary(i2);
                }
            };
        } else {
            graphemeClusterSegmentFinder = new GraphemeClusterSegmentFinder(textLayout.layout.getText(), textLayout.textPaint);
        }
        return textLayout.layout.getRangeForRect(rectF, graphemeClusterSegmentFinder, new Layout.TextInclusionStrategy() { // from class: androidx.compose.ui.text.android.AndroidLayoutApi34$$ExternalSyntheticLambda0
            @Override // android.text.Layout.TextInclusionStrategy
            public final boolean isSegmentInside(RectF rectF2, RectF rectF3) {
                return ((Boolean) ComposerKt$$ExternalSyntheticLambda0.this.invoke(rectF2, rectF3)).booleanValue();
            }
        });
    }
}
