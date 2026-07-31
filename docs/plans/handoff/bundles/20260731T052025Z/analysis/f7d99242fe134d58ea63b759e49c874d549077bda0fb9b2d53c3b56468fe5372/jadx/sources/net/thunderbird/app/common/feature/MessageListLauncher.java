package net.thunderbird.app.common.feature;

import android.content.Context;
import com.fsck.k9.activity.MessageHomeActivity;
import kotlin.Lazy;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLauncher {
    public final Context context;

    public MessageListLauncher(Context context) {
        this.context = context;
    }

    public final void launch(String str) {
        Context context = this.context;
        if (str != null) {
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            context.startActivity(MessageHomeActivity.Companion.shortcutIntentForAccount(context, str));
        } else {
            Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
            MessageHomeActivity.Companion.launch(context);
        }
    }
}
