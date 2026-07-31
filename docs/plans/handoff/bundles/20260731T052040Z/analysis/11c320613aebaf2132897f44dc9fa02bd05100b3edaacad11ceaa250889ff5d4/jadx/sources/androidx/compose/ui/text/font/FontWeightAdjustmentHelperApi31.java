package androidx.compose.ui.text.font;

import android.content.Context;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FontWeightAdjustmentHelperApi31 {
    public static final FontWeightAdjustmentHelperApi31 INSTANCE = new FontWeightAdjustmentHelperApi31();

    public final int fontWeightAdjustment(Context context) {
        int i;
        i = context.getResources().getConfiguration().fontWeightAdjustment;
        return i;
    }
}
