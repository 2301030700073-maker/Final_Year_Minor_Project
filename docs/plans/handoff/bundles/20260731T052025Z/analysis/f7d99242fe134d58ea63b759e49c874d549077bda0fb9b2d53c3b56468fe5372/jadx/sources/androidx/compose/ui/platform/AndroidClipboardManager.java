package androidx.compose.ui.platform;

import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidClipboardManager implements ClipboardManager {
    public android.content.ClipboardManager _clipboardManager;
    public final Context context;

    public AndroidClipboardManager(Context context) {
        this.context = context;
    }

    public final android.content.ClipboardManager getClipboardManager() {
        android.content.ClipboardManager clipboardManager = this._clipboardManager;
        if (clipboardManager != null) {
            return clipboardManager;
        }
        Object systemService = this.context.getSystemService("clipboard");
        systemService.getClass();
        android.content.ClipboardManager clipboardManager2 = (android.content.ClipboardManager) systemService;
        this._clipboardManager = clipboardManager2;
        return clipboardManager2;
    }
}
