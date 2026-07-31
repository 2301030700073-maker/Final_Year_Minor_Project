package androidx.work.impl.workers;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(this.mAppContext);
        WorkDatabase workDatabase = instance$1.mWorkDatabase;
        workDatabase.getClass();
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        WorkNameDao_Impl workNameDao = workDatabase.workNameDao();
        WorkTagDao_Impl workTagDao = workDatabase.workTagDao();
        SystemIdInfoDao_Impl systemIdInfoDao = workDatabase.systemIdInfoDao();
        instance$1.mConfiguration.clock.getClass();
        List list = (List) DBUtil.performBlocking(workSpecDao.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(System.currentTimeMillis() - 86400000, 0));
        RoomDatabase roomDatabase = workSpecDao.__db;
        List list2 = (List) DBUtil.performBlocking(roomDatabase, true, false, new Data$$ExternalSyntheticLambda0(11));
        List list3 = (List) DBUtil.performBlocking(roomDatabase, true, false, new Data$$ExternalSyntheticLambda0(16));
        if (!list.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
            String str = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger.info(str, "Recently completed work:\n\n");
            Logger$LogcatLogger.get().info(str, DiagnosticsWorkerKt.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list));
        }
        if (!list2.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
            String str2 = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger2.info(str2, "Running work:\n\n");
            Logger$LogcatLogger.get().info(str2, DiagnosticsWorkerKt.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list2));
        }
        if (!list3.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger3 = Logger$LogcatLogger.get();
            String str3 = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger3.info(str3, "Enqueued work:\n\n");
            Logger$LogcatLogger.get().info(str3, DiagnosticsWorkerKt.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list3));
        }
        return new ListenableWorker.Result.Success();
    }
}
