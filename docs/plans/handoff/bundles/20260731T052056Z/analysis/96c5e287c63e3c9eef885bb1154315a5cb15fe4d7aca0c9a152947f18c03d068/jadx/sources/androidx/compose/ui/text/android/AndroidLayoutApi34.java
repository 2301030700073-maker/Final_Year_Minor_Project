package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.GraphemeClusterSegmentFinder;
import android.text.Layout;
import android.text.SegmentFinder;
import androidx.cardview.widget.CardView;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidLayoutApi34 {
    public static int[] getRangeForRect$ui_text(TextLayout textLayout, RectF rectF, int i, final HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0) {
        SegmentFinder graphemeClusterSegmentFinder;
        if (i == 1) {
            final CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(19, textLayout.layout.getText(), textLayout.getWordIterator());
            graphemeClusterSegmentFinder = new SegmentFinder() { // from class: androidx.compose.ui.text.android.selection.Api34SegmentFinder$toAndroidSegmentFinder$1
                public final int nextEndBoundary(int i2) {
                    return CardView.AnonymousClass1.this.nextEndBoundary(i2);
                }

                public final int nextStartBoundary(int i2) {
                    return CardView.AnonymousClass1.this.nextStartBoundary(i2);
                }

                public final int previousEndBoundary(int i2) {
                    return CardView.AnonymousClass1.this.previousEndBoundary(i2);
                }

                public final int previousStartBoundary(int i2) {
                    return CardView.AnonymousClass1.this.previousStartBoundary(i2);
                }
            };
        } else {
            graphemeClusterSegmentFinder = new GraphemeClusterSegmentFinder(textLayout.layout.getText(), textLayout.textPaint);
        }
        return textLayout.layout.getRangeForRect(rectF, graphemeClusterSegmentFinder, new Layout.TextInclusionStrategy() { // from class: androidx.compose.ui.text.android.AndroidLayoutApi34$$ExternalSyntheticLambda2
            @Override // android.text.Layout.TextInclusionStrategy
            public final boolean isSegmentInside(RectF rectF2, RectF rectF3) {
                return ((Boolean) HintHandler$$ExternalSyntheticLambda0.this.invoke(rectF2, rectF3)).booleanValue();
            }
        });
    }
}
