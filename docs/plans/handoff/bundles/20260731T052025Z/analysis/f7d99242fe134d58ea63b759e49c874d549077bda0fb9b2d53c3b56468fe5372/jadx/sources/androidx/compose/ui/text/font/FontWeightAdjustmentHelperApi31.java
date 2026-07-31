package androidx.compose.ui.text.font;

import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontWeightAdjustmentHelperApi31 {
    public static final FontWeightAdjustmentHelperApi31 INSTANCE = new FontWeightAdjustmentHelperApi31();

    public final int fontWeightAdjustment(Context context) {
        int i;
        i = context.getResources().getConfiguration().fontWeightAdjustment;
        return i;
    }
}
