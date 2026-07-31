package androidx.compose.ui.platform;

import android.content.ClipData;
import android.os.Build;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
