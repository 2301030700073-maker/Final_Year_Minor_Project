package com.fsck.k9.backends;

import com.fsck.k9.mail.store.imap.ImapClientInfo;
import com.fsck.k9.mail.store.imap.ImapStoreConfig;
import net.thunderbird.core.android.account.Expunge;
import net.thunderbird.core.android.account.LegacyAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultImapBackendFactory$createImapStoreConfig$1 implements ImapStoreConfig {
    public final /* synthetic */ LegacyAccount $account;
    public final /* synthetic */ DefaultImapBackendFactory this$0;

    public DefaultImapBackendFactory$createImapStoreConfig$1(LegacyAccount legacyAccount, DefaultImapBackendFactory defaultImapBackendFactory) {
        this.$account = legacyAccount;
        this.this$0 = defaultImapBackendFactory;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public ImapClientInfo clientInfo() {
        DefaultImapBackendFactory defaultImapBackendFactory = this.this$0;
        return new ImapClientInfo(defaultImapBackendFactory.clientInfoAppName, defaultImapBackendFactory.clientInfoAppVersion);
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public String getLogLabel() {
        return this.$account.uuid;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public boolean isExpungeImmediately() {
        return this.$account.expungePolicy == Expunge.EXPUNGE_IMMEDIATELY;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public boolean isSubscribedFoldersOnly() {
        return this.$account.isSubscribedFoldersOnly;
    }

    public DefaultImapBackendFactory$createImapStoreConfig$1(DefaultImapBackendFactory defaultImapBackendFactory, LegacyAccount legacyAccount) {
        this.this$0 = defaultImapBackendFactory;
        this.$account = legacyAccount;
    }
}
