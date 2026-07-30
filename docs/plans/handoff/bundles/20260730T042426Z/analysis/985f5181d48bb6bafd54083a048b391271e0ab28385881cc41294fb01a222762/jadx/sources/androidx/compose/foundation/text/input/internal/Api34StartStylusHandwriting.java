package androidx.compose.foundation.text.input.internal;

import android.view.View;

/* compiled from: InputMethodManager.android.kt */
/* loaded from: classes.dex */
public final class Api34StartStylusHandwriting {
    public static final Api34StartStylusHandwriting INSTANCE = new Api34StartStylusHandwriting();

    private Api34StartStylusHandwriting() {
    }

    public final void startStylusHandwriting(android.view.inputmethod.InputMethodManager inputMethodManager, View view) {
        inputMethodManager.startStylusHandwriting(view);
    }
}
