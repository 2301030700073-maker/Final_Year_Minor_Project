package androidx.compose.ui.text.platform;

import androidx.emoji2.text.EmojiCompat;
import coil3.memory.MemoryCacheService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EmojiCompatStatus {
    public static final MemoryCacheService delegate;

    static {
        MemoryCacheService memoryCacheService = new MemoryCacheService();
        memoryCacheService.imageLoader = EmojiCompat.isConfigured() ? memoryCacheService.getFontLoadState() : null;
        delegate = memoryCacheService;
    }
}
