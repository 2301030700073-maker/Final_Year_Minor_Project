package androidx.work.impl.workers;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/workers/DiagnosticsWorker;", "Landroidx/work/Worker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "parameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result.Success doWork() {
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(this.mAppContext);
        WorkDatabase workDatabase = instance$1.mWorkDatabase;
        workDatabase.getClass();
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        WorkNameDao_Impl workNameDao = workDatabase.workNameDao();
        WorkTagDao_Impl workTagDao = workDatabase.workTagDao();
        SystemIdInfoDao_Impl systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemClock systemClock = instance$1.mConfiguration.clock;
        List list = (List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda28(System.currentTimeMillis() - 86400000, 0));
        RoomDatabase roomDatabase = workSpecDao.__db;
        List list2 = (List) ExceptionsKt.performBlocking(roomDatabase, true, false, new Data$$ExternalSyntheticLambda0(9));
        List list3 = (List) ExceptionsKt.performBlocking(roomDatabase, true, false, new Data$$ExternalSyntheticLambda0(14));
        if (!list.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
            String str = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger.info(str, "Recently completed work:\n\n");
            Logger$LogcatLogger.get().info(str, DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list));
        }
        if (!list2.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
            String str2 = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger2.info(str2, "Running work:\n\n");
            Logger$LogcatLogger.get().info(str2, DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list2));
        }
        if (!list3.isEmpty()) {
            Logger$LogcatLogger logger$LogcatLogger3 = Logger$LogcatLogger.get();
            String str3 = DiagnosticsWorkerKt.TAG;
            logger$LogcatLogger3.info(str3, "Enqueued work:\n\n");
            Logger$LogcatLogger.get().info(str3, DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, list3));
        }
        return ListenableWorker.Result.success();
    }
}
