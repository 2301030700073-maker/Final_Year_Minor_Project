package com.fsck.k9.ui.messageview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.fsck.k9.R;
import com.fsck.k9.helper.ClipboardManager;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LinkTextHandler extends Handler {
    public final ClipboardManager clipboardManager;
    public final Context context;

    public LinkTextHandler(Context context, ClipboardManager clipboardManager) {
        this.context = context;
        this.clipboardManager = clipboardManager;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        message.getClass();
        String string = message.getData().getString("title");
        String obj = string != null ? StringsKt.trim(string).toString() : null;
        if (obj == null) {
            obj = "";
        }
        if (obj.length() == 0) {
            return;
        }
        String string2 = this.context.getString(R.string.webview_contextmenu_link_text_clipboard_label);
        string2.getClass();
        this.clipboardManager.setText(string2, obj);
    }
}
