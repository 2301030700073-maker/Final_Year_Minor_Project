package androidx.compose.ui.platform;

import android.content.ClipData;
import android.os.Build;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidClipboard implements Clipboard {
    public final AndroidClipboardManager androidClipboardManager;

    public AndroidClipboard(AndroidClipboardManager androidClipboardManager) {
        this.androidClipboardManager = androidClipboardManager;
    }

    public final void setClipEntry(ClipEntry clipEntry) {
        AndroidClipboardManager androidClipboardManager = this.androidClipboardManager;
        if (clipEntry != null) {
            androidClipboardManager.getClipboardManager().setPrimaryClip(clipEntry.clipData);
        } else if (Build.VERSION.SDK_INT >= 28) {
            Api28ClipboardManagerClipClear.clearPrimaryClip(androidClipboardManager.getClipboardManager());
        } else {
            androidClipboardManager.getClipboardManager().setPrimaryClip(ClipData.newPlainText("", ""));
        }
    }
}
