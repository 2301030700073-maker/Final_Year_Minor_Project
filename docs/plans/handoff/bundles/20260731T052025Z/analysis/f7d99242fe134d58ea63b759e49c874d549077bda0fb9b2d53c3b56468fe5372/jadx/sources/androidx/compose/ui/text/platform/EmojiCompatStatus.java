package androidx.compose.ui.text.platform;

import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.Fragment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmojiCompatStatus {
    public static final Fragment.AnonymousClass7 delegate;

    static {
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        anonymousClass7.this$0 = EmojiCompat.isConfigured() ? anonymousClass7.getFontLoadState() : null;
        delegate = anonymousClass7;
    }
}
