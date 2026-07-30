package androidx.compose.ui.platform;

import android.view.View;
import kotlin.coroutines.Continuation;

/* compiled from: PlatformTextInputSession.android.kt */
/* loaded from: classes.dex */
public interface PlatformTextInputSession {
    View getView();

    Object startInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, Continuation continuation);
}
