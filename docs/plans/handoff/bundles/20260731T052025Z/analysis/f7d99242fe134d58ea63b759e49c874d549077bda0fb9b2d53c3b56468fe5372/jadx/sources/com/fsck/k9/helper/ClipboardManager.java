package com.fsck.k9.helper;

import android.content.ClipData;
import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClipboardManager {
    public final Context context;

    public ClipboardManager(Context context) {
        this.context = context;
    }

    public final void setText(String str, String str2) {
        str.getClass();
        str2.getClass();
        Object systemService = this.context.getSystemService("clipboard");
        systemService.getClass();
        ((android.content.ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(str, str2));
    }
}
