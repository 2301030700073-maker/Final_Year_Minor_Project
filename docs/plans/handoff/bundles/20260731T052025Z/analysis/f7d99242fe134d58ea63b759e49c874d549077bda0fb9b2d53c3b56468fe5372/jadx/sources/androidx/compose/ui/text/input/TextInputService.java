package androidx.compose.ui.text.input;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextInputService {
    public final AtomicReference _currentInputSession = new AtomicReference(null);
    public final PlatformTextInputService platformTextInputService;

    public TextInputService(PlatformTextInputService platformTextInputService) {
        this.platformTextInputService = platformTextInputService;
    }
}
