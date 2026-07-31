package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
