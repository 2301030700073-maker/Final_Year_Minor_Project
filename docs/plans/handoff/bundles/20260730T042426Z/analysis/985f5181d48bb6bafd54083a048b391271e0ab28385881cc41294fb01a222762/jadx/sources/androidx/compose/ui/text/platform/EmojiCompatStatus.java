package androidx.compose.ui.text.platform;

import androidx.compose.runtime.State;

/* compiled from: EmojiCompatStatus.android.kt */
/* loaded from: classes.dex */
public final class EmojiCompatStatus implements EmojiCompatStatusDelegate {
    public static final EmojiCompatStatus INSTANCE = new EmojiCompatStatus();
    private static EmojiCompatStatusDelegate delegate = new DefaultImpl();
    public static final int $stable = 8;

    private EmojiCompatStatus() {
    }

    @Override // androidx.compose.ui.text.platform.EmojiCompatStatusDelegate
    public State getFontLoaded() {
        return delegate.getFontLoaded();
    }
}
