package androidx.compose.ui.text.platform;

import androidx.emoji2.text.EmojiCompat;
import androidx.paging.HintHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmojiCompatStatus {
    public static final HintHandler delegate;

    static {
        HintHandler hintHandler = new HintHandler(11, false);
        hintHandler.state = EmojiCompat.isConfigured() ? hintHandler.getFontLoadState() : null;
        delegate = hintHandler;
    }
}
