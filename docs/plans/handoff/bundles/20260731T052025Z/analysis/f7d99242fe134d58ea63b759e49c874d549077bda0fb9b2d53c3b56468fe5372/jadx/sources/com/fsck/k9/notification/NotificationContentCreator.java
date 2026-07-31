package com.fsck.k9.notification;

import app.k9mail.core.android.common.contact.ContactRepository;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.LocalMessage;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationContentCreator {
    public final ContactRepository contactRepository;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final K9NotificationResourceProvider resourceProvider;

    public NotificationContentCreator(K9NotificationResourceProvider k9NotificationResourceProvider, ContactRepository contactRepository, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager) {
        this.resourceProvider = k9NotificationResourceProvider;
        this.contactRepository = contactRepository;
        this.messageListPreferencesManager = defaultMessageListPreferencesManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fsck.k9.notification.NotificationContent createFromMessage(net.thunderbird.core.android.account.LegacyAccountDto r19, com.fsck.k9.mailstore.LocalMessage r20) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.notification.NotificationContentCreator.createFromMessage(net.thunderbird.core.android.account.LegacyAccountDto, com.fsck.k9.mailstore.LocalMessage):com.fsck.k9.notification.NotificationContent");
    }

    public final String getMessageSubject(LocalMessage localMessage) {
        String str = localMessage.subject;
        if (str == null) {
            str = "";
        }
        if (str.length() != 0) {
            return str;
        }
        String string = this.resourceProvider.context.getString(R.string.general_no_subject);
        string.getClass();
        return string;
    }
}
