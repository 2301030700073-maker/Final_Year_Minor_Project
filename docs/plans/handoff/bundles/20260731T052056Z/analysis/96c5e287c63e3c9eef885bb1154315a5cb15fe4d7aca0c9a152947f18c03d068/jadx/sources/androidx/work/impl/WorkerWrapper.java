package androidx.work.impl;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.WorkInfo;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.JobImpl;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkerWrapper {
    public final Context appContext;
    public final Configuration configuration;
    public final DependencyDao_Impl dependencyDao;
    public final Processor foregroundProcessor;
    public final ArrayList tags;
    public final WorkDatabase workDatabase;
    public final String workDescription;
    public final WorkSpec workSpec;
    public final WorkSpecDao_Impl workSpecDao;
    public final String workSpecId;
    public final WorkManagerTaskExecutor workTaskExecutor;
    public final JobImpl workerJob;

    public WorkerWrapper(GsonBuilder gsonBuilder) {
        WorkSpec workSpec = (WorkSpec) gsonBuilder.hierarchyFactories;
        this.workSpec = workSpec;
        this.appContext = (Context) gsonBuilder.reflectionFilters;
        String str = workSpec.id;
        this.workSpecId = str;
        this.workTaskExecutor = (WorkManagerTaskExecutor) gsonBuilder.longSerializationPolicy;
        this.configuration = (Configuration) gsonBuilder.excluder;
        this.foregroundProcessor = (Processor) gsonBuilder.fieldNamingPolicy;
        WorkDatabase workDatabase = (WorkDatabase) gsonBuilder.instanceCreators;
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        ArrayList arrayList = (ArrayList) gsonBuilder.factories;
        this.tags = arrayList;
        this.workDescription = Animation.CC.m(Animation.CC.m21m("Work [ id=", str, ", tags={ "), CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62), " } ]");
        this.workerJob = AwaitKt.Job$default();
    }

    public final void reschedule(int i) {
        WorkInfo.State state = WorkInfo.State.ENQUEUED;
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        String str = this.workSpecId;
        workSpecDao_Impl.setState(state, str);
        workSpecDao_Impl.setLastEnqueueTime(str, System.currentTimeMillis());
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
        workSpecDao_Impl.markWorkSpecScheduled(str, -1L);
        workSpecDao_Impl.setStopReason(i, str);
    }

    public final void resetPeriodic() {
        long currentTimeMillis = System.currentTimeMillis();
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        String str = this.workSpecId;
        workSpecDao_Impl.setLastEnqueueTime(str, currentTimeMillis);
        workSpecDao_Impl.setState(WorkInfo.State.ENQUEUED, str);
        RoomDatabase roomDatabase = workSpecDao_Impl.__db;
        ((Number) ExceptionsKt.performBlocking(roomDatabase, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(17, str))).intValue();
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
        ExceptionsKt.performBlocking(roomDatabase, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(18, str));
        workSpecDao_Impl.markWorkSpecScheduled(str, -1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runWorker(kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.runWorker(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void setFailed(ListenableWorker.Result result) {
        String str = this.workSpecId;
        ArrayList mutableListOf = Room.mutableListOf(str);
        while (true) {
            boolean isEmpty = mutableListOf.isEmpty();
            WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
            if (isEmpty) {
                Data data = ((ListenableWorker.Result.Failure) result).mOutputData;
                data.getClass();
                workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(this.workSpec.nextScheduleTimeOverrideGeneration, str);
                ExceptionsKt.performBlocking(workSpecDao_Impl.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(4, data, str));
                return;
            }
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            if (workSpecDao_Impl.getState(str2) != WorkInfo.State.CANCELLED) {
                workSpecDao_Impl.setState(WorkInfo.State.FAILED, str2);
            }
            mutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Resolution {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Failed extends Resolution {
            public final ListenableWorker.Result result = new ListenableWorker.Result.Failure();
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Finished extends Resolution {
            public final ListenableWorker.Result result;

            public Finished(ListenableWorker.Result result) {
                this.result = result;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
