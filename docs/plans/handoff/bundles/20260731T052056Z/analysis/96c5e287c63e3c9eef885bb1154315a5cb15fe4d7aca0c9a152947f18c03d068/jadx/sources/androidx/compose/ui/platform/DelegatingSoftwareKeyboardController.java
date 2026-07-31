package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {
    public final TextInputService textInputService;

    public DelegatingSoftwareKeyboardController(TextInputService textInputService) {
        this.textInputService = textInputService;
    }

    public final void hide() {
        this.textInputService.platformTextInputService.hideSoftwareKeyboard();
    }

    public final void show() {
        TextInputService textInputService = this.textInputService;
        if (((TextInputSession) textInputService._currentInputSession.get()) != null) {
            textInputService.platformTextInputService.showSoftwareKeyboard();
        }
    }
}
