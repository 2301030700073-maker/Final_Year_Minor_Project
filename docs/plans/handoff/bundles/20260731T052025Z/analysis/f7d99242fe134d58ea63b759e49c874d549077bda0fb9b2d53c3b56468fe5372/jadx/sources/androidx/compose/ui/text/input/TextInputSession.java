package androidx.compose.ui.text.input;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextInputSession {
    public final PlatformTextInputService platformTextInputService;
    public final TextInputService textInputService;

    public TextInputSession(TextInputService textInputService, PlatformTextInputService platformTextInputService) {
        this.textInputService = textInputService;
        this.platformTextInputService = platformTextInputService;
    }

    public final void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        if (Intrinsics.areEqual((TextInputSession) this.textInputService._currentInputSession.get(), this)) {
            this.platformTextInputService.updateState(textFieldValue, textFieldValue2);
        }
    }
}
