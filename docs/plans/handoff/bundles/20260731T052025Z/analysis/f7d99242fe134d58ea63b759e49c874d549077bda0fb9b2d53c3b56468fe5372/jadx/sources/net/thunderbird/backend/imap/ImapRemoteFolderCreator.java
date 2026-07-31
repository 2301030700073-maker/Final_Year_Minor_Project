package net.thunderbird.backend.imap;

import com.fsck.k9.mail.store.imap.RealImapStore;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.core.logging.Logger;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapRemoteFolderCreator implements RemoteFolderCreator {
    public final RealImapStore imapStore;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;

    public ImapRemoteFolderCreator(Logger logger, RealImapStore realImapStore, CoroutineDispatcher coroutineDispatcher) {
        coroutineDispatcher.getClass();
        this.logger = logger;
        this.imapStore = realImapStore;
        this.ioDispatcher = coroutineDispatcher;
    }

    @Override // net.thunderbird.backend.api.folder.RemoteFolderCreator
    /* renamed from: create-rwpFgxY */
    public final Object mo1024createrwpFgxY(String str, AsyncCache$getOrLoad$2 asyncCache$getOrLoad$2) {
        return JobKt.withContext(this.ioDispatcher, new InterruptibleKt$runInterruptible$2(this, str, null, 14), asyncCache$getOrLoad$2);
    }
}
