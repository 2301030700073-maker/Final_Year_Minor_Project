package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.Layout;
import android.text.SegmentFinder;
import androidx.compose.ui.text.android.selection.Api34SegmentFinder;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import kotlin.jvm.functions.Function2;

/* compiled from: TextLayout.android.kt */
/* loaded from: classes.dex */
public final class AndroidLayoutApi34 {
    public static final AndroidLayoutApi34 INSTANCE = new AndroidLayoutApi34();

    private AndroidLayoutApi34() {
    }

    public final int[] getRangeForRect$ui_text_release(TextLayout textLayout, RectF rectF, int i, final Function2 function2) {
        SegmentFinder m;
        int[] rangeForRect;
        if (i == 1) {
            m = Api34SegmentFinder.INSTANCE.toAndroidSegmentFinder$ui_text_release(new WordSegmentFinder(textLayout.getText(), textLayout.getWordIterator()));
        } else {
            AndroidLayoutApi34$$ExternalSyntheticApiModelOutline1.m();
            m = AndroidLayoutApi34$$ExternalSyntheticApiModelOutline2.m(AndroidLayoutApi34$$ExternalSyntheticApiModelOutline0.m(textLayout.getText(), textLayout.getTextPaint()));
        }
        rangeForRect = textLayout.getLayout().getRangeForRect(rectF, m, new Layout.TextInclusionStrategy() { // from class: androidx.compose.ui.text.android.AndroidLayoutApi34$$ExternalSyntheticLambda4
            @Override // android.text.Layout.TextInclusionStrategy
            public final boolean isSegmentInside(RectF rectF2, RectF rectF3) {
                boolean rangeForRect$lambda$0;
                rangeForRect$lambda$0 = AndroidLayoutApi34.getRangeForRect$lambda$0(Function2.this, rectF2, rectF3);
                return rangeForRect$lambda$0;
            }
        });
        return rangeForRect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getRangeForRect$lambda$0(Function2 function2, RectF rectF, RectF rectF2) {
        return ((Boolean) function2.invoke(rectF, rectF2)).booleanValue();
    }
}
