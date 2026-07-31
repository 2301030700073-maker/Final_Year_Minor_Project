package com.fsck.k9.backends;

import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.store.pop3.Pop3Store;
import com.fsck.k9.mail.transport.smtp.SmtpTransport;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import com.fsck.k9.mailstore.LocalStore;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.backend.api.BackendFactory;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultPop3BackendFactory implements BackendFactory {
    public final DefaultLegacyAccountManager accountManager;
    public final K9BackendStorageFactory backendStorageFactory;
    public final DefaultTrustedSocketFactory trustedSocketFactory;

    public DefaultPop3BackendFactory(DefaultLegacyAccountManager defaultLegacyAccountManager, K9BackendStorageFactory k9BackendStorageFactory, DefaultTrustedSocketFactory defaultTrustedSocketFactory) {
        this.accountManager = defaultLegacyAccountManager;
        this.backendStorageFactory = k9BackendStorageFactory;
        this.trustedSocketFactory = defaultTrustedSocketFactory;
    }

    @Override // net.thunderbird.backend.api.BackendFactory
    public final Backend createBackend(AccountId accountId) {
        accountId.getClass();
        LegacyAccount account = this.accountManager.getAccount(accountId.value.toString());
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
            return null;
        }
        String str = account.profile.name;
        Dispatcher createBackendStorage$1 = this.backendStorageFactory.createBackendStorage$1(accountId);
        ServerSettings serverSettings = account.incomingServerSettings;
        DefaultTrustedSocketFactory defaultTrustedSocketFactory = this.trustedSocketFactory;
        return new LocalStore.AnonymousClass7(str, createBackendStorage$1, new Pop3Store(serverSettings, defaultTrustedSocketFactory), new SmtpTransport(account.outgoingServerSettings, defaultTrustedSocketFactory, null));
    }
}
