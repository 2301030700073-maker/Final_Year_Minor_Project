package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewStructure;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
final class AndroidComposeViewAssistHelperMethodsO {
    public static final AndroidComposeViewAssistHelperMethodsO INSTANCE = new AndroidComposeViewAssistHelperMethodsO();

    private AndroidComposeViewAssistHelperMethodsO() {
    }

    public final void setClassName(ViewStructure viewStructure, View view) {
        viewStructure.setClassName(view.getAccessibilityClassName().toString());
    }
}
