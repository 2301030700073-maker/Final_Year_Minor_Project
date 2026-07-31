package androidx.compose.ui.text.input;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextInputService {
    public final AtomicReference _currentInputSession = new AtomicReference(null);
    public final PlatformTextInputService platformTextInputService;

    public TextInputService(PlatformTextInputService platformTextInputService) {
        this.platformTextInputService = platformTextInputService;
    }
}
