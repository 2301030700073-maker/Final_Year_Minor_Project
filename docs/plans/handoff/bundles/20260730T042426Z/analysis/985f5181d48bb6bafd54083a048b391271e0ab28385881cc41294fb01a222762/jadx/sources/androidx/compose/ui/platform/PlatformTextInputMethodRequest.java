package androidx.compose.ui.platform;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* compiled from: PlatformTextInputMethodRequest.android.kt */
/* loaded from: classes.dex */
public interface PlatformTextInputMethodRequest {
    InputConnection createInputConnection(EditorInfo editorInfo);
}
