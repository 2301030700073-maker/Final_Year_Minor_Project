package com.fsck.k9.job;

import androidx.room.TransactionExecutor;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImpl$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import java.util.Iterator;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9JobManager {
    public final LegacyAccountDtoManager accountManager;
    public final MailSyncWorkerManager mailSyncWorkerManager;
    public final FileLogLimitWorkManager syncDebugFileLogManager;
    public final WorkManagerImpl workManager;

    public K9JobManager(WorkManagerImpl workManagerImpl, LegacyAccountDtoManager legacyAccountDtoManager, MailSyncWorkerManager mailSyncWorkerManager, FileLogLimitWorkManager fileLogLimitWorkManager) {
        this.workManager = workManagerImpl;
        this.accountManager = legacyAccountDtoManager;
        this.mailSyncWorkerManager = mailSyncWorkerManager;
        this.syncDebugFileLogManager = fileLogLimitWorkManager;
    }

    public final void scheduleAllMailJobs() {
        Log.v("scheduling all jobs", new Object[0]);
        Log.v("canceling mail sync job", new Object[0]);
        WorkManagerImpl workManagerImpl = this.workManager;
        SystemClock systemClock = workManagerImpl.mConfiguration.tracer;
        String concat = "CancelWorkByTag_".concat("MailSync");
        TransactionExecutor transactionExecutor = (TransactionExecutor) workManagerImpl.mWorkTaskExecutor.executorServiceOrNull;
        transactionExecutor.getClass();
        OperationKt.launchOperation(systemClock, concat, transactionExecutor, new WorkManagerImpl$$ExternalSyntheticLambda0(workManagerImpl, 1));
        Iterator it = ((Preferences) this.accountManager).getAccounts().iterator();
        while (it.hasNext()) {
            this.mailSyncWorkerManager.scheduleMailSync((LegacyAccountDto) it.next());
        }
    }
}
