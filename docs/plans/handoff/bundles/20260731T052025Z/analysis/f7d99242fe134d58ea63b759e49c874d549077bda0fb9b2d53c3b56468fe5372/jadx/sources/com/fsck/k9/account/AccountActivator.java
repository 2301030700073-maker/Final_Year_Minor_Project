package com.fsck.k9.account;

import android.content.Context;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountActivator {
    public final Context context;
    public final MessagingController messagingController;
    public final Preferences preferences;

    public AccountActivator(Context context, Preferences preferences, MessagingController messagingController) {
        this.context = context;
        this.preferences = preferences;
        this.messagingController = messagingController;
    }
}
