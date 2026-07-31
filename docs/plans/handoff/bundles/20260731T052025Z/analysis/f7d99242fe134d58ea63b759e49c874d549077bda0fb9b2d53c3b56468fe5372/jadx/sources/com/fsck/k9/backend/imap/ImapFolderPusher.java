package com.fsck.k9.backend.imap;

import androidx.work.Configuration;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mail.store.imap.RealImapFolderIdler;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.power.AndroidPowerManager;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapFolderPusher {
    public final String accountName;
    public final ImapBackendPusher callback;
    public volatile RealImapFolderIdler folderIdler;
    public final String folderServerId;
    public final IdleRefreshManager idleRefreshManager;
    public final Configuration.Builder idleRefreshTimeoutProvider;
    public final RealImapStore imapStore;
    public final AndroidPowerManager powerManager;
    public volatile boolean stopPushing;

    public ImapFolderPusher(RealImapStore realImapStore, AndroidPowerManager androidPowerManager, IdleRefreshManager idleRefreshManager, ImapBackendPusher imapBackendPusher, String str, String str2, Configuration.Builder builder) {
        realImapStore.getClass();
        androidPowerManager.getClass();
        idleRefreshManager.getClass();
        str.getClass();
        str2.getClass();
        builder.getClass();
        this.imapStore = realImapStore;
        this.powerManager = androidPowerManager;
        this.idleRefreshManager = idleRefreshManager;
        this.callback = imapBackendPusher;
        this.accountName = str;
        this.folderServerId = str2;
        this.idleRefreshTimeoutProvider = builder;
    }

    public final void refresh() {
        Log.v("Refreshing ImapFolderPusher for %s / %s", this.accountName, this.folderServerId);
        RealImapFolderIdler realImapFolderIdler = this.folderIdler;
        if (realImapFolderIdler != null) {
            synchronized (realImapFolderIdler) {
                Log.v("%s.refresh()", realImapFolderIdler.logTag);
                realImapFolderIdler.endIdle();
            }
        }
    }

    public final void stop() {
        Log.v("Stopping ImapFolderPusher for %s / %s", this.accountName, this.folderServerId);
        this.stopPushing = true;
        RealImapFolderIdler realImapFolderIdler = this.folderIdler;
        if (realImapFolderIdler != null) {
            synchronized (realImapFolderIdler) {
                Log.v("%s.stop()", realImapFolderIdler.logTag);
                realImapFolderIdler.stopIdle = true;
                realImapFolderIdler.endIdle();
            }
        }
    }
}
