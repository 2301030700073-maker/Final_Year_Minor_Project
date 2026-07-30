package androidx.compose.ui.text.font;

import android.content.Context;

/* compiled from: AndroidFontResolveInterceptor.android.kt */
/* loaded from: classes.dex */
public final class FontWeightAdjustmentHelperApi31 {
    public static final FontWeightAdjustmentHelperApi31 INSTANCE = new FontWeightAdjustmentHelperApi31();

    private FontWeightAdjustmentHelperApi31() {
    }

    public final int fontWeightAdjustment(Context context) {
        int i;
        i = context.getResources().getConfiguration().fontWeightAdjustment;
        return i;
    }
}
