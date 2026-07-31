package net.thunderbird.app.common.feature.mail.message.list;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyUpdateSortCriteria {
    public final DefaultLegacyAccountManager accountManager;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;

    public LegacyUpdateSortCriteria(Logger logger, DefaultLegacyAccountManager defaultLegacyAccountManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.accountManager = defaultLegacyAccountManager;
        this.ioDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x014e, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r8, r0, r6) == r12) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateAccountSortCriteria(net.thunderbird.feature.account.AccountId r56, net.thunderbird.feature.mail.message.list.domain.model.SortCriteria r57, kotlin.coroutines.jvm.internal.ContinuationImpl r58) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria.updateAccountSortCriteria(net.thunderbird.feature.account.AccountId, net.thunderbird.feature.mail.message.list.domain.model.SortCriteria, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateUnifiedAccountSortCriteria(net.thunderbird.feature.mail.message.list.domain.model.SortCriteria r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1
            if (r0 == 0) goto L13
            r0 = r6
            net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1 r0 = (net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1 r0 = new net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L26
            kotlin.ResultKt.throwOnFailure(r6)
            goto L72
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            net.thunderbird.feature.mail.message.list.domain.model.SortType r6 = r5.primary
            net.thunderbird.feature.mail.message.list.domain.model.SortType r5 = r5.secondary
            kotlin.Pair r6 = kotlinx.atomicfu.AtomicFU.toDomainSortType(r6)
            java.lang.Object r1 = r6.first
            net.thunderbird.core.android.account.SortType r1 = (net.thunderbird.core.android.account.SortType) r1
            java.lang.Object r6 = r6.second
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            com.fsck.k9.K9.setSortType(r1)
            com.fsck.k9.K9.setSortAscending(r1, r6)
            if (r5 == 0) goto L5e
            kotlin.Pair r5 = kotlinx.atomicfu.AtomicFU.toDomainSortType(r5)
            java.lang.Object r6 = r5.first
            net.thunderbird.core.android.account.SortType r6 = (net.thunderbird.core.android.account.SortType) r6
            java.lang.Object r5 = r5.second
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            com.fsck.k9.K9.setSortAscending(r6, r5)
        L5e:
            com.fsck.k9.Core$restoreNotifications$1 r5 = new com.fsck.k9.Core$restoreNotifications$1
            r6 = 2
            r1 = 5
            r5.<init>(r6, r3, r1)
            r0.label = r2
            kotlinx.coroutines.CoroutineDispatcher r4 = r4.ioDispatcher
            java.lang.Object r4 = kotlinx.coroutines.JobKt.withContext(r4, r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L72
            return r5
        L72:
            net.thunderbird.core.outcome.Outcome$Success r4 = new net.thunderbird.core.outcome.Outcome$Success
            net.thunderbird.feature.mail.message.list.domain.UpdateSortCriteriaOutcome$Success r5 = net.thunderbird.feature.mail.message.list.domain.UpdateSortCriteriaOutcome$Success.INSTANCE
            r4.<init>(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria.updateUnifiedAccountSortCriteria(net.thunderbird.feature.mail.message.list.domain.model.SortCriteria, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
