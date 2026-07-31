package androidx.compose.ui.text.input;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
