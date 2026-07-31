package com.fsck.k9.controller.push;

import androidx.lifecycle.BlockRunner$cancel$1;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.backend.imap.BackendIdleRefreshManager;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.backend.imap.ImapBackendPusher$start$1;
import com.fsck.k9.backend.imap.ImapFolderPusher;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountPushController {
    public final AccountId accountId;
    public final BackendManager backendManager;
    public volatile ImapBackendPusher backendPusher;
    public final LocalStore.AnonymousClass7 backendPusherCallback;
    public final ContextScope coroutineScope;
    public final DefaultFolderRepository folderRepository;
    public final Logger logger;

    public AccountPushController(BackendManager backendManager, DefaultFolderRepository defaultFolderRepository, LocalStore.AnonymousClass7 anonymousClass7, AccountId accountId, Logger logger) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.backendManager = backendManager;
        this.folderRepository = defaultFolderRepository;
        this.backendPusherCallback = anonymousClass7;
        this.accountId = accountId;
        this.logger = logger;
        this.coroutineScope = JobKt.CoroutineScope(defaultIoScheduler);
    }

    public final void reconnect() {
        Sink$CC.verbose$default(this.logger, "AccountPushController", null, new AccountPushController$$ExternalSyntheticLambda0(this, 2), 2);
        ImapBackendPusher imapBackendPusher = this.backendPusher;
        if (imapBackendPusher != null) {
            Log.v("ImapBackendPusher.reconnect()", new Object[0]);
            synchronized (imapBackendPusher.lock) {
                try {
                    Iterator it = imapBackendPusher.pushFolders.values().iterator();
                    while (it.hasNext()) {
                        ((ImapFolderPusher) it.next()).stop();
                    }
                    imapBackendPusher.pushFolders.clear();
                    Iterator it2 = imapBackendPusher.pushFolderSleeping.values().iterator();
                    while (it2.hasNext()) {
                        ((BackendIdleRefreshManager.BackendIdleRefreshTimer) it2.next()).cancel();
                    }
                    imapBackendPusher.pushFolderSleeping.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            imapBackendPusher.imapStore.closeAllConnections();
            imapBackendPusher.updateFolders$1();
        }
    }

    public final void start() {
        Continuation continuation = null;
        Sink$CC.verbose$default(this.logger, "AccountPushController", null, new AccountPushController$$ExternalSyntheticLambda0(this, 1), 2);
        ImapBackendPusher createPusher = this.backendManager.getBackend(this.accountId).createPusher(this.backendPusherCallback);
        ContextScope contextScope = createPusher.coroutineScope;
        JobKt.launch$default(contextScope, null, null, new ImapBackendPusher$start$1(createPusher, continuation, 0), 3);
        JobKt.launch$default(contextScope, null, null, new ImapBackendPusher$start$1(createPusher, continuation, 1), 3);
        this.backendPusher = createPusher;
        JobKt.launch$default(this.coroutineScope, null, null, new BlockRunner$cancel$1(this, continuation, 14), 3);
    }

    public final void stop() {
        Sink$CC.verbose$default(this.logger, "AccountPushController", null, new AccountPushController$$ExternalSyntheticLambda0(this, 0), 2);
        JobKt.cancel(this.coroutineScope, (CancellationException) null);
        ImapBackendPusher imapBackendPusher = this.backendPusher;
        if (imapBackendPusher != null) {
            Log.v("ImapBackendPusher.stop()", new Object[0]);
            JobKt.cancel(imapBackendPusher.coroutineScope, (CancellationException) null);
            synchronized (imapBackendPusher.lock) {
                try {
                    Iterator it = imapBackendPusher.pushFolders.values().iterator();
                    while (it.hasNext()) {
                        ((ImapFolderPusher) it.next()).stop();
                    }
                    imapBackendPusher.pushFolders.clear();
                    Iterator it2 = imapBackendPusher.pushFolderSleeping.values().iterator();
                    while (it2.hasNext()) {
                        ((BackendIdleRefreshManager.BackendIdleRefreshTimer) it2.next()).cancel();
                    }
                    imapBackendPusher.pushFolderSleeping.clear();
                    imapBackendPusher.currentFolderServerIds = EmptySet.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.backendPusher = null;
    }
}
