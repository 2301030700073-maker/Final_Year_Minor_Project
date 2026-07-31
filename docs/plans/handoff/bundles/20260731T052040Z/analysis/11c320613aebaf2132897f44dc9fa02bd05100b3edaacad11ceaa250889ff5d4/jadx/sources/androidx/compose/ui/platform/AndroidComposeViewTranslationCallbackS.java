package androidx.compose.ui.platform;

import android.view.View;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeViewTranslationCallbackS {
    public static final AndroidComposeViewTranslationCallbackS INSTANCE = new AndroidComposeViewTranslationCallbackS();

    public final void clearViewTranslationCallback(View view) {
        view.clearViewTranslationCallback();
    }

    public final void setViewTranslationCallback(View view) {
        view.setViewTranslationCallback(AndroidComposeViewTranslationCallback.INSTANCE);
    }
}
