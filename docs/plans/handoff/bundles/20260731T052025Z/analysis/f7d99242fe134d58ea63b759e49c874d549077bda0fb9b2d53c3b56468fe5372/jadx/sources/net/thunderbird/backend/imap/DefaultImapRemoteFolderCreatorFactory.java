package net.thunderbird.backend.imap;

import com.fsck.k9.backend.imap.ImapBackend;
import com.fsck.k9.mail.store.imap.RealImapStore;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.backend.api.BackendFactory;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultImapRemoteFolderCreatorFactory implements RemoteFolderCreator.Factory {
    public final BackendFactory backendFactory;
    public final Logger logger;

    public DefaultImapRemoteFolderCreatorFactory(Logger logger, BackendFactory backendFactory) {
        this.logger = logger;
        this.backendFactory = backendFactory;
    }

    @Override // net.thunderbird.backend.api.folder.RemoteFolderCreator.Factory
    public final Object create(AccountId accountId, ContinuationImpl continuationImpl) {
        RealImapStore realImapStore = ((ImapBackend) this.backendFactory.createBackend(accountId)).imapStore;
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return new ImapRemoteFolderCreator(this.logger, realImapStore, DefaultIoScheduler.INSTANCE);
    }
}
