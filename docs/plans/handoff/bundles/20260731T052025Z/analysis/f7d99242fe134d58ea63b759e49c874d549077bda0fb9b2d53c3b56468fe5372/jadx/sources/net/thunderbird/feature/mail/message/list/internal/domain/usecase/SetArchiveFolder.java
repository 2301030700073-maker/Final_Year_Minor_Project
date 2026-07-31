package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SetArchiveFolder {
    public final DefaultLegacyAccountManager accountManager;
    public final K9BackendStorageFactory backendStorageFactory;
    public final CoroutineDispatcher ioDispatcher;
    public final DefaultSpecialFolderUpdater$Factory specialFolderUpdaterFactory;

    public SetArchiveFolder(DefaultLegacyAccountManager defaultLegacyAccountManager, K9BackendStorageFactory k9BackendStorageFactory, DefaultSpecialFolderUpdater$Factory defaultSpecialFolderUpdater$Factory) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.backendStorageFactory = k9BackendStorageFactory;
        this.specialFolderUpdaterFactory = defaultSpecialFolderUpdater$Factory;
        this.ioDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0086, code lost:
    
        if (r1 == r11) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(net.thunderbird.feature.account.AccountId r14, net.thunderbird.feature.mail.folder.api.RemoteFolder r15, kotlin.coroutines.jvm.internal.ContinuationImpl r16) {
        /*
            r13 = this;
            r1 = r16
            boolean r2 = r1 instanceof net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder$invoke$1
            if (r2 == 0) goto L16
            r2 = r1
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder$invoke$1 r2 = (net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder$invoke$1) r2
            int r3 = r2.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r3 & r5
            if (r6 == 0) goto L16
            int r3 = r3 - r5
            r2.label = r3
        L14:
            r7 = r2
            goto L1c
        L16:
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder$invoke$1 r2 = new net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder$invoke$1
            r2.<init>(r13, r1)
            goto L14
        L1c:
            java.lang.Object r1 = r7.result
            int r2 = r7.label
            kotlinx.coroutines.CoroutineDispatcher r8 = r13.ioDispatcher
            r3 = 1
            r9 = 2
            r10 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L44
            if (r2 == r3) goto L39
            if (r2 != r9) goto L33
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            goto L89
        L31:
            r0 = move-exception
            goto L8c
        L33:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r10
        L39:
            net.thunderbird.feature.mail.folder.api.RemoteFolder r0 = r7.L$1
            net.thunderbird.feature.account.AccountId r2 = r7.L$0
            kotlin.ResultKt.throwOnFailure(r1)
            r12 = r2
            r2 = r0
            r0 = r12
            goto L5c
        L44:
            kotlin.ResultKt.throwOnFailure(r1)
            net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1 r1 = new net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1
            r2 = 4
            r1.<init>(r13, r14, r10, r2)
            r7.L$0 = r14
            r7.L$1 = r15
            r7.label = r3
            java.lang.Object r1 = kotlinx.coroutines.JobKt.withContext(r8, r1, r7)
            if (r1 != r11) goto L5a
            goto L88
        L5a:
            r0 = r14
            r2 = r15
        L5c:
            r5 = r1
            net.thunderbird.core.android.account.LegacyAccount r5 = (net.thunderbird.core.android.account.LegacyAccount) r5
            if (r5 != 0) goto L69
            net.thunderbird.core.outcome.Outcome$Failure r0 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Error$AccountNotFound r1 = net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Error.AccountNotFound.INSTANCE
            r0.<init>(r1, r10)
            return r0
        L69:
            com.fsck.k9.mailstore.K9BackendStorageFactory r1 = r13.backendStorageFactory
            okhttp3.Dispatcher r1 = r1.createBackendStorage$1(r0)
            com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory r3 = r13.specialFolderUpdaterFactory
            com.eygraber.uri.Uri$Builder r3 = r3.create(r0)
            androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2 r0 = new androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            r6 = 0
            r4 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            r7.L$0 = r10     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            r7.L$1 = r10     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            r7.label = r9     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            java.lang.Object r1 = kotlinx.coroutines.JobKt.withContext(r8, r0, r7)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            if (r1 != r11) goto L89
        L88:
            return r11
        L89:
            net.thunderbird.core.outcome.Outcome r1 = (net.thunderbird.core.outcome.Outcome) r1     // Catch: net.thunderbird.core.common.exception.MessagingException -> L31
            return r1
        L8c:
            net.thunderbird.core.outcome.Outcome$Failure r1 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Error$UnhandledError r2 = new net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Error$UnhandledError
            r2.<init>(r0)
            r1.<init>(r2, r10)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder.invoke(net.thunderbird.feature.account.AccountId, net.thunderbird.feature.mail.folder.api.RemoteFolder, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
