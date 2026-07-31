package app.k9mail.legacy.mailstore;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.util.List;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.FolderType;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFolderRepository {
    public final DefaultLegacyAccountManager accountManager;
    public final CoroutineDispatcher ioDispatcher;
    public final MessageStoreManager messageStoreManager;
    public final DefaultOutboxFolderManager outboxFolderManager;

    public DefaultFolderRepository(DefaultLegacyAccountManager defaultLegacyAccountManager, MessageStoreManager messageStoreManager, DefaultOutboxFolderManager defaultOutboxFolderManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.messageStoreManager = messageStoreManager;
        this.outboxFolderManager = defaultOutboxFolderManager;
        this.ioDispatcher = defaultIoScheduler;
    }

    public static FolderType getFolderType(ConnectionPool connectionPool, LegacyAccount legacyAccount, long j) {
        if (connectionPool.getId() == j) {
            return FolderType.OUTBOX;
        }
        long id = connectionPool.getId();
        legacyAccount.getClass();
        Long l = legacyAccount.inboxFolderId;
        if (l != null && id == l.longValue()) {
            return FolderType.INBOX;
        }
        Long l2 = legacyAccount.sentFolderId;
        if (l2 != null && id == l2.longValue()) {
            return FolderType.SENT;
        }
        Long l3 = legacyAccount.trashFolderId;
        if (l3 != null && id == l3.longValue()) {
            return FolderType.TRASH;
        }
        Long l4 = legacyAccount.draftsFolderId;
        if (l4 != null && id == l4.longValue()) {
            return FolderType.DRAFTS;
        }
        Long l5 = legacyAccount.archiveFolderId;
        if (l5 != null && id == l5.longValue()) {
            return FolderType.ARCHIVE;
        }
        Long l6 = legacyAccount.spamFolderId;
        return (l6 != null && id == l6.longValue()) ? FolderType.SPAM : FolderType.REGULAR;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getAccountById(net.thunderbird.feature.account.AccountId r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof app.k9mail.legacy.mailstore.DefaultFolderRepository$getAccountById$1
            if (r0 == 0) goto L13
            r0 = r6
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getAccountById$1 r0 = (app.k9mail.legacy.mailstore.DefaultFolderRepository$getAccountById$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getAccountById$1 r0 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$getAccountById$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            net.thunderbird.feature.account.AccountId r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager r4 = r4.accountManager
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1 r4 = r4.getById(r5)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r4) goto L44
            return r4
        L44:
            net.thunderbird.core.android.account.LegacyAccount r6 = (net.thunderbird.core.android.account.LegacyAccount) r6
            if (r6 == 0) goto L49
            return r6
        L49:
            java.lang.String r4 = "Account not found: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r5, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.legacy.mailstore.DefaultFolderRepository.getAccountById(net.thunderbird.feature.account.AccountId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r10 == r5) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getFolder(net.thunderbird.feature.account.AccountId r7, long r8, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolder$1
            if (r0 == 0) goto L13
            r0 = r10
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolder$1 r0 = (app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolder$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolder$1 r0 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolder$1
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L40
            if (r1 == r4) goto L38
            if (r1 != r3) goto L32
            long r7 = r0.J$0
            app.k9mail.legacy.mailstore.ListenableMessageStore r9 = r0.L$2
            net.thunderbird.core.android.account.LegacyAccount r0 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r0
            goto L6f
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L38:
            long r8 = r0.J$0
            net.thunderbird.feature.account.AccountId r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L50
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r7
            r0.J$0 = r8
            r0.label = r4
            java.lang.Object r10 = r6.getAccountById(r7, r0)
            if (r10 != r5) goto L50
            goto L6a
        L50:
            net.thunderbird.core.android.account.LegacyAccount r10 = (net.thunderbird.core.android.account.LegacyAccount) r10
            app.k9mail.legacy.mailstore.MessageStoreManager r1 = r6.messageStoreManager
            app.k9mail.legacy.mailstore.ListenableMessageStore r1 = r1.getMessageStore(r7)
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r1
            r0.J$0 = r8
            r0.label = r3
            com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager r2 = r6.outboxFolderManager
            java.lang.Object r7 = r2.getOutboxFolderId(r7, r0)
            if (r7 != r5) goto L6b
        L6a:
            return r5
        L6b:
            r2 = r10
            r10 = r7
            r7 = r8
            r9 = r1
        L6f:
            java.lang.Number r10 = (java.lang.Number) r10
            long r3 = r10.longValue()
            app.k9mail.legacy.mailstore.DefaultFolderRepository$$ExternalSyntheticLambda0 r0 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$$ExternalSyntheticLambda0
            r5 = 0
            r1 = r6
            r0.<init>(r1, r2, r3, r5)
            r9.getClass()
            com.fsck.k9.mailstore.LocalStore$1 r6 = r9.messageStore
            java.lang.Object r6 = r6.val$folders
            com.fsck.k9.storage.messages.K9MessageStore r6 = (com.fsck.k9.storage.messages.K9MessageStore) r6
            java.lang.Object r6 = r6.getFolder(r7, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.legacy.mailstore.DefaultFolderRepository.getFolder(net.thunderbird.feature.account.AccountId, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r10 == r5) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getFolderDetails(net.thunderbird.feature.account.AccountId r7, long r8, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolderDetails$1
            if (r0 == 0) goto L13
            r0 = r10
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolderDetails$1 r0 = (app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolderDetails$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolderDetails$1 r0 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$getFolderDetails$1
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L40
            if (r1 == r4) goto L38
            if (r1 != r3) goto L32
            long r7 = r0.J$0
            app.k9mail.legacy.mailstore.ListenableMessageStore r9 = r0.L$2
            net.thunderbird.core.android.account.LegacyAccount r0 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r0
            goto L6f
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L38:
            long r8 = r0.J$0
            net.thunderbird.feature.account.AccountId r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L50
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r7
            r0.J$0 = r8
            r0.label = r4
            java.lang.Object r10 = r6.getAccountById(r7, r0)
            if (r10 != r5) goto L50
            goto L6a
        L50:
            net.thunderbird.core.android.account.LegacyAccount r10 = (net.thunderbird.core.android.account.LegacyAccount) r10
            app.k9mail.legacy.mailstore.MessageStoreManager r1 = r6.messageStoreManager
            app.k9mail.legacy.mailstore.ListenableMessageStore r1 = r1.getMessageStore(r7)
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r1
            r0.J$0 = r8
            r0.label = r3
            com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager r2 = r6.outboxFolderManager
            java.lang.Object r7 = r2.getOutboxFolderId(r7, r0)
            if (r7 != r5) goto L6b
        L6a:
            return r5
        L6b:
            r2 = r10
            r10 = r7
            r7 = r8
            r9 = r1
        L6f:
            java.lang.Number r10 = (java.lang.Number) r10
            long r3 = r10.longValue()
            app.k9mail.legacy.mailstore.DefaultFolderRepository$$ExternalSyntheticLambda0 r0 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$$ExternalSyntheticLambda0
            r5 = 1
            r1 = r6
            r0.<init>(r1, r2, r3, r5)
            r9.getClass()
            com.fsck.k9.mailstore.LocalStore$1 r6 = r9.messageStore
            java.lang.Object r6 = r6.val$folders
            com.fsck.k9.storage.messages.K9MessageStore r6 = (com.fsck.k9.storage.messages.K9MessageStore) r6
            java.lang.Object r6 = r6.getFolder(r7, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.legacy.mailstore.DefaultFolderRepository.getFolderDetails(net.thunderbird.feature.account.AccountId, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final List getPushFolders(AccountId accountId) {
        accountId.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(accountId);
        return SequencesKt.toList(new TakeWhileSequence(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, ((K9MessageStore) messageStore.messageStore.val$folders).getFolders(new UriKt$$ExternalSyntheticBUOutline0(6))), true, new KoinModuleKt$$ExternalSyntheticLambda0(21)), new KoinModuleKt$$ExternalSyntheticLambda0(22), 2));
    }

    public final List getRemoteFolders(AccountId accountId) {
        accountId.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(accountId);
        return ((K9MessageStore) messageStore.messageStore.val$folders).getFolders(new UriKt$$ExternalSyntheticBUOutline0(5));
    }
}
