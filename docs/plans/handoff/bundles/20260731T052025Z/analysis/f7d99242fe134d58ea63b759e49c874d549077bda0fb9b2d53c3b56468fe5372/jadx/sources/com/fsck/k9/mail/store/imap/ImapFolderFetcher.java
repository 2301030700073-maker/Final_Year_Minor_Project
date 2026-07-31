package com.fsck.k9.mail.store.imap;

import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapFolderFetcher {
    public final String clientInfoAppName;
    public final String clientInfoAppVersion;
    public final ImapStore$Companion imapStoreFactory = ImapStore$Companion.$$INSTANCE;
    public final RealOAuth2TokenProviderFactory oAuth2TokenProviderFactory;
    public final DefaultTrustedSocketFactory trustedSocketFactory;

    public ImapFolderFetcher(DefaultTrustedSocketFactory defaultTrustedSocketFactory, RealOAuth2TokenProviderFactory realOAuth2TokenProviderFactory, String str, String str2) {
        this.trustedSocketFactory = defaultTrustedSocketFactory;
        this.oAuth2TokenProviderFactory = realOAuth2TokenProviderFactory;
        this.clientInfoAppName = str;
        this.clientInfoAppVersion = str2;
    }
}
