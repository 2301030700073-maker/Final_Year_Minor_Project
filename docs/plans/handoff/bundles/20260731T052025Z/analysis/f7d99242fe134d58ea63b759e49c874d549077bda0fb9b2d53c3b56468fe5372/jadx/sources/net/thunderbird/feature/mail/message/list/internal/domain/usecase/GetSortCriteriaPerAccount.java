package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.feature.mail.message.MailMessageModuleKt$mailMessageModule$1$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetSortCriteriaPerAccount {
    public final DefaultLegacyAccountManager accountManager;
    public final MailMessageModuleKt$mailMessageModule$1$3$1 getDefaultSortCriteria;
    public final CoroutineDispatcher ioDispatcher;

    public GetSortCriteriaPerAccount(DefaultLegacyAccountManager defaultLegacyAccountManager, MailMessageModuleKt$mailMessageModule$1$3$1 mailMessageModuleKt$mailMessageModule$1$3$1) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.getDefaultSortCriteria = mailMessageModuleKt$mailMessageModule$1$3$1;
        this.ioDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0053, code lost:
    
        if (r13 == r7) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable invoke(kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount.invoke(kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }
}
