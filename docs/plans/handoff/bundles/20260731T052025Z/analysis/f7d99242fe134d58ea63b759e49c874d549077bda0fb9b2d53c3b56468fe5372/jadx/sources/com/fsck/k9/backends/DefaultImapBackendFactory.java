package com.fsck.k9.backends;

import android.content.Context;
import androidx.core.util.DebugUtils;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.backend.imap.ImapBackend;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mail.transport.smtp.SmtpTransport;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.power.AndroidPowerManager;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.backend.api.BackendFactory;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultImapBackendFactory implements BackendFactory {
    public final DefaultLegacyAccountManager accountManager;
    public final K9BackendStorageFactory backendStorageFactory;
    public final String clientInfoAppName;
    public final String clientInfoAppVersion;
    public final Context context;
    public final IdleRefreshManager idleRefreshManager;
    public final AndroidPowerManager powerManager;
    public final DefaultTrustedSocketFactory trustedSocketFactory;

    public DefaultImapBackendFactory(DefaultLegacyAccountManager defaultLegacyAccountManager, AndroidPowerManager androidPowerManager, IdleRefreshManager idleRefreshManager, K9BackendStorageFactory k9BackendStorageFactory, DefaultTrustedSocketFactory defaultTrustedSocketFactory, Context context, String str, String str2) {
        this.accountManager = defaultLegacyAccountManager;
        this.powerManager = androidPowerManager;
        this.idleRefreshManager = idleRefreshManager;
        this.backendStorageFactory = k9BackendStorageFactory;
        this.trustedSocketFactory = defaultTrustedSocketFactory;
        this.context = context;
        this.clientInfoAppName = str;
        this.clientInfoAppVersion = str2;
    }

    @Override // net.thunderbird.backend.api.BackendFactory
    public final Backend createBackend(AccountId accountId) {
        accountId.getClass();
        String obj = accountId.value.toString();
        DefaultLegacyAccountManager defaultLegacyAccountManager = this.accountManager;
        LegacyAccount account = defaultLegacyAccountManager.getAccount(obj);
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
            return null;
        }
        AccountId accountId2 = account.id;
        String str = account.profile.name;
        Dispatcher createBackendStorage$1 = this.backendStorageFactory.createBackendStorage$1(accountId);
        ServerSettings serverSettings = account.incomingServerSettings;
        ServerSettings copy$default = ServerSettings.copy$default(serverSettings, null, null, MapsKt__MapsKt.mapOf(new Pair("autoDetectNamespace", String.valueOf(DebugUtils.getAutoDetectNamespace(serverSettings))), new Pair("pathPrefix", DebugUtils.getPathPrefix(serverSettings)), new Pair("useCompression", String.valueOf(account.useCompression)), new Pair("sendClientInfo", String.valueOf(account.isSendClientInfoEnabled))), 255);
        AuthType authType = copy$default.authenticationType;
        Context context = this.context;
        AuthType authType2 = AuthType.XOAUTH2;
        LocalFolder.AnonymousClass12 anonymousClass12 = authType == authType2 ? new LocalFolder.AnonymousClass12(context, new AccountAuthStateStorage(defaultLegacyAccountManager, accountId2)) : null;
        DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$1 = new DefaultImapBackendFactory$createImapStoreConfig$1(account, this);
        DefaultTrustedSocketFactory defaultTrustedSocketFactory = this.trustedSocketFactory;
        RealImapStore realImapStore = new RealImapStore(copy$default, defaultImapBackendFactory$createImapStoreConfig$1, defaultTrustedSocketFactory, anonymousClass12);
        DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$12 = new DefaultImapBackendFactory$createImapStoreConfig$1(this, account);
        ServerSettings serverSettings2 = account.outgoingServerSettings;
        return new ImapBackend(str, createBackendStorage$1, realImapStore, this.powerManager, this.idleRefreshManager, defaultImapBackendFactory$createImapStoreConfig$12, new SmtpTransport(serverSettings2, defaultTrustedSocketFactory, serverSettings2.authenticationType == authType2 ? new LocalFolder.AnonymousClass12(context, new AccountAuthStateStorage(defaultLegacyAccountManager, accountId2)) : null));
    }
}
