package androidx.compose.ui.autofill;

import android.view.View;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AutofillApi27Helper {
    public static void notifyViewVisibilityChanged(View view, android.view.autofill.AutofillManager autofillManager, int i, boolean z) {
        autofillManager.notifyViewVisibilityChanged(view, i, z);
    }
}
