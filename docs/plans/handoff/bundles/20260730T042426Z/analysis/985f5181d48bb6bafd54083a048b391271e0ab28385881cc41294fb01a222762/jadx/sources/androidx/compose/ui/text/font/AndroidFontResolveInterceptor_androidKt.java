package androidx.compose.ui.text.font;

import android.content.Context;

/* compiled from: AndroidFontResolveInterceptor.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidFontResolveInterceptor_androidKt {
    public static final AndroidFontResolveInterceptor AndroidFontResolveInterceptor(Context context) {
        return new AndroidFontResolveInterceptor(FontWeightAdjustmentHelper.INSTANCE.getFontWeightAdjustment(context));
    }
}
