package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateArchiveFolder {
    public final DefaultLegacyAccountManager accountManager;
    public final K9BackendStorageFactory backendStorageFactory;
    public final CoroutineDispatcher ioDispatcher;
    public final RemoteFolderCreator.Factory remoteFolderCreatorFactory;
    public final DefaultSpecialFolderUpdater$Factory specialFolderUpdaterFactory;

    public CreateArchiveFolder(DefaultLegacyAccountManager defaultLegacyAccountManager, K9BackendStorageFactory k9BackendStorageFactory, RemoteFolderCreator.Factory factory, DefaultSpecialFolderUpdater$Factory defaultSpecialFolderUpdater$Factory) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.backendStorageFactory = k9BackendStorageFactory;
        this.remoteFolderCreatorFactory = factory;
        this.specialFolderUpdaterFactory = defaultSpecialFolderUpdater$Factory;
        this.ioDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
    
        if (r0.invoke(r1, r7) != r11) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$handleRemoteFolderCreationSuccess(net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder r14, long r15, net.thunderbird.feature.account.AccountId r17, net.thunderbird.core.android.account.LegacyAccount r18, com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1 r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            r0 = r19
            r1 = r20
            r14.getClass()
            boolean r2 = r1 instanceof net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder$handleRemoteFolderCreationSuccess$1
            if (r2 == 0) goto L1b
            r2 = r1
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder$handleRemoteFolderCreationSuccess$1 r2 = (net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder$handleRemoteFolderCreationSuccess$1) r2
            int r3 = r2.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r3 & r5
            if (r6 == 0) goto L1b
            int r3 = r3 - r5
            r2.label = r3
        L19:
            r7 = r2
            goto L21
        L1b:
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder$handleRemoteFolderCreationSuccess$1 r2 = new net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder$handleRemoteFolderCreationSuccess$1
            r2.<init>(r14, r1)
            goto L19
        L21:
            java.lang.Object r1 = r7.result
            int r2 = r7.label
            r8 = 3
            r9 = 2
            r3 = 1
            r10 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L55
            if (r2 == r3) goto L46
            if (r2 == r9) goto L3e
            if (r2 != r8) goto L38
            kotlin.ResultKt.throwOnFailure(r1)
            goto Lb0
        L38:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r10
        L3e:
            long r2 = r7.J$0
            kotlin.jvm.functions.Function2 r0 = r7.L$2
            kotlin.ResultKt.throwOnFailure(r1)
            goto L98
        L46:
            long r2 = r7.J$0
            com.eygraber.uri.Uri$Builder r0 = r7.L$3
            kotlin.jvm.functions.Function2 r5 = r7.L$2
            net.thunderbird.core.android.account.LegacyAccount r6 = r7.L$1
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r12 = r5
            r5 = r6
            goto L7d
        L55:
            kotlin.ResultKt.throwOnFailure(r1)
            com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory r1 = r14.specialFolderUpdaterFactory
            r2 = r17
            com.eygraber.uri.Uri$Builder r1 = r1.create(r2)
            net.thunderbird.core.outcome.Outcome$Success r2 = new net.thunderbird.core.outcome.Outcome$Success
            net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success$UpdatingSpecialFolders r5 = net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success.UpdatingSpecialFolders.INSTANCE
            r2.<init>(r5)
            r5 = r18
            r7.L$1 = r5
            r7.L$2 = r0
            r7.L$3 = r1
            r12 = r15
            r7.J$0 = r12
            r7.label = r3
            java.lang.Object r2 = r0.invoke(r2, r7)
            if (r2 != r11) goto L7b
            goto Laf
        L7b:
            r2 = r12
            r12 = r0
        L7d:
            kotlinx.coroutines.CoroutineDispatcher r13 = r14.ioDispatcher
            com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$getOutboxFolderId$4$2 r0 = new com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$getOutboxFolderId$4$2
            r6 = 0
            r4 = r14
            r0.<init>(r1, r2, r4, r5, r6)
            r7.L$1 = r10
            r7.L$2 = r12
            r7.L$3 = r10
            r7.J$0 = r2
            r7.label = r9
            java.lang.Object r0 = kotlinx.coroutines.JobKt.withContext(r13, r0, r7)
            if (r0 != r11) goto L97
            goto Laf
        L97:
            r0 = r12
        L98:
            net.thunderbird.core.outcome.Outcome$Success r1 = new net.thunderbird.core.outcome.Outcome$Success
            net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success$Created r4 = net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success.Created.INSTANCE
            r1.<init>(r4)
            r7.L$1 = r10
            r7.L$2 = r10
            r7.L$3 = r10
            r7.J$0 = r2
            r7.label = r8
            java.lang.Object r0 = r0.invoke(r1, r7)
            if (r0 != r11) goto Lb0
        Laf:
            return r11
        Lb0:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder.access$handleRemoteFolderCreationSuccess(net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder, long, net.thunderbird.feature.account.AccountId, net.thunderbird.core.android.account.LegacyAccount, com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
