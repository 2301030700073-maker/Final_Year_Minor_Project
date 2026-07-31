package androidx.work.impl;

import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.SystemClock;
import androidx.work.WorkInfo$State;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import okhttp3.Dispatcher;
import org.jsoup.Jsoup;
import org.koin.core.Koin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkerWrapper {
    public final Context appContext;
    public final SystemClock clock;
    public final Configuration configuration;
    public final DependencyDao_Impl dependencyDao;
    public final Processor foregroundProcessor;
    public final ArrayList tags;
    public final WorkDatabase workDatabase;
    public final String workDescription;
    public final WorkSpec workSpec;
    public final WorkSpecDao_Impl workSpecDao;
    public final String workSpecId;
    public final Dispatcher workTaskExecutor;
    public final JobImpl workerJob;

    public WorkerWrapper(Koin koin) {
        WorkSpec workSpec = (WorkSpec) koin.propertyRegistry;
        this.workSpec = workSpec;
        this.appContext = (Context) koin.optionRegistry;
        String str = workSpec.id;
        this.workSpecId = str;
        this.workTaskExecutor = (Dispatcher) koin.resolver;
        Configuration configuration = (Configuration) koin.logger;
        this.configuration = configuration;
        this.clock = configuration.clock;
        this.foregroundProcessor = (Processor) koin.scopeRegistry;
        WorkDatabase workDatabase = (WorkDatabase) koin.instanceRegistry;
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        ArrayList arrayList = (ArrayList) koin.extensionManager;
        this.tags = arrayList;
        this.workDescription = Modifier.CC.m(Modifier.CC.m180m("Work [ id=", str, ", tags={ "), CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62), " } ]");
        this.workerJob = JobKt.Job$default();
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x022e, code lost:
    
        if (r0 == r1) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runWorker(final androidx.work.impl.WorkerWrapper r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.access$runWorker(androidx.work.impl.WorkerWrapper, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void reschedule(int i) {
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        WorkInfo$State workInfo$State = WorkInfo$State.ENQUEUED;
        String str = this.workSpecId;
        workSpecDao_Impl.setState(workInfo$State, str);
        this.clock.getClass();
        workSpecDao_Impl.setLastEnqueueTime(str, System.currentTimeMillis());
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
        workSpecDao_Impl.markWorkSpecScheduled(str, -1L);
        workSpecDao_Impl.setStopReason(str, i);
    }

    public final void resetPeriodic() {
        this.clock.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        String str = this.workSpecId;
        workSpecDao_Impl.setLastEnqueueTime(str, currentTimeMillis);
        workSpecDao_Impl.setState(WorkInfo$State.ENQUEUED, str);
        RoomDatabase roomDatabase = workSpecDao_Impl.__db;
        ((Number) DBUtil.performBlocking(roomDatabase, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 14))).intValue();
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
        DBUtil.performBlocking(roomDatabase, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 15));
        workSpecDao_Impl.markWorkSpecScheduled(str, -1L);
    }

    public final void setFailed(ListenableWorker.Result result) {
        result.getClass();
        String str = this.workSpecId;
        ArrayList mutableListOf = Jsoup.mutableListOf(str);
        while (true) {
            boolean isEmpty = mutableListOf.isEmpty();
            WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
            if (isEmpty) {
                Data data = ((ListenableWorker.Result.Failure) result).mOutputData;
                data.getClass();
                workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
                DBUtil.performBlocking(workSpecDao_Impl.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(data, str, 7));
                return;
            }
            String str2 = (String) CollectionsKt__MutableCollectionsKt.removeLast(mutableListOf);
            if (workSpecDao_Impl.getState(str2) != WorkInfo$State.CANCELLED) {
                workSpecDao_Impl.setState(WorkInfo$State.FAILED, str2);
            }
            mutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Resolution {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class Failed extends Resolution {
            public final ListenableWorker.Result result = new ListenableWorker.Result.Failure();
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class Finished extends Resolution {
            public final ListenableWorker.Result result;

            public Finished(ListenableWorker.Result result) {
                this.result = result;
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ResetWorkerStatus extends Resolution {
            public final int reason;

            public ResetWorkerStatus(int i) {
                this.reason = i;
            }

            public /* synthetic */ ResetWorkerStatus() {
                this(-256);
            }
        }
    }
}
