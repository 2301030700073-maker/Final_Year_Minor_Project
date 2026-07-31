package com.fsck.k9.ui.messagelist;

import com.fsck.k9.mailstore.DefaultMessageListRepository;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLiveDataFactory {
    public final DefaultLegacyAccountManager accountManager;
    public final MessageListLoader messageListLoader;
    public final DefaultMessageListRepository messageListRepository;

    public MessageListLiveDataFactory(MessageListLoader messageListLoader, DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultMessageListRepository defaultMessageListRepository) {
        this.messageListLoader = messageListLoader;
        this.accountManager = defaultLegacyAccountManager;
        this.messageListRepository = defaultMessageListRepository;
    }
}
