package androidx.compose.ui.platform;

import android.view.View;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
final class AndroidComposeViewForceDarkModeQ {
    public static final AndroidComposeViewForceDarkModeQ INSTANCE = new AndroidComposeViewForceDarkModeQ();

    private AndroidComposeViewForceDarkModeQ() {
    }

    public final void disallowForceDark(View view) {
        view.setForceDarkAllowed(false);
    }
}
