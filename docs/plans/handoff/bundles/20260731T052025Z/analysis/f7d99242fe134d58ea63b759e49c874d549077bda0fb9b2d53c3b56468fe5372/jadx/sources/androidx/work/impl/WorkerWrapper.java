package androidx.work.impl;

import android.content.Context;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.SystemClock;
import androidx.work.WorkInfo;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public WorkerWrapper(TooltipPopup tooltipPopup) {
        WorkSpec workSpec = (WorkSpec) tooltipPopup.mTmpAnchorPos;
        this.workSpec = workSpec;
        this.appContext = (Context) tooltipPopup.mContext;
        String str = workSpec.id;
        this.workSpecId = str;
        this.workTaskExecutor = (Dispatcher) tooltipPopup.mMessageView;
        Configuration configuration = (Configuration) tooltipPopup.mContentView;
        this.configuration = configuration;
        this.clock = configuration.clock;
        this.foregroundProcessor = (Processor) tooltipPopup.mLayoutParams;
        WorkDatabase workDatabase = (WorkDatabase) tooltipPopup.mTmpDisplayFrame;
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        ArrayList arrayList = (ArrayList) tooltipPopup.mTmpAppPos;
        this.tags = arrayList;
        this.workDescription = CameraDevices$CC.m(CameraDevices$CC.m31m("Work [ id=", str, ", tags={ "), CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62), " } ]");
        this.workerJob = JobKt.Job$default();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0228, code lost:
    
        if (r0 == r1) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runWorker(androidx.work.impl.WorkerWrapper r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.access$runWorker(androidx.work.impl.WorkerWrapper, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void reschedule(int i) {
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        WorkInfo.State state = WorkInfo.State.ENQUEUED;
        String str = this.workSpecId;
        workSpecDao_Impl.setState(state, str);
        this.clock.getClass();
        workSpecDao_Impl.setLastEnqueueTime(System.currentTimeMillis(), str);
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(str, this.workSpec.nextScheduleTimeOverrideGeneration);
        workSpecDao_Impl.markWorkSpecScheduled(-1L, str);
        workSpecDao_Impl.setStopReason(str, i);
    }

    public final void resetPeriodic() {
        this.clock.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
        String str = this.workSpecId;
        workSpecDao_Impl.setLastEnqueueTime(currentTimeMillis, str);
        workSpecDao_Impl.setState(WorkInfo.State.ENQUEUED, str);
        RoomDatabase roomDatabase = workSpecDao_Impl.__db;
        ((Number) DBUtil.performBlocking(roomDatabase, false, true, new IconKt$$ExternalSyntheticLambda1(str, 18))).intValue();
        workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(str, this.workSpec.nextScheduleTimeOverrideGeneration);
        DBUtil.performBlocking(roomDatabase, false, true, new IconKt$$ExternalSyntheticLambda1(str, 19));
        workSpecDao_Impl.markWorkSpecScheduled(-1L, str);
    }

    public final void setFailed(ListenableWorker.Result result) {
        result.getClass();
        String str = this.workSpecId;
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(str);
        while (true) {
            boolean isEmpty = mutableListOf.isEmpty();
            WorkSpecDao_Impl workSpecDao_Impl = this.workSpecDao;
            if (isEmpty) {
                Data data = ((ListenableWorker.Result.Failure) result).mOutputData;
                data.getClass();
                workSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride(str, this.workSpec.nextScheduleTimeOverrideGeneration);
                DBUtil.performBlocking(workSpecDao_Impl.__db, false, true, new DI$$ExternalSyntheticLambda0(8, data, str));
                return;
            }
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            if (workSpecDao_Impl.getState(str2) != WorkInfo.State.CANCELLED) {
                workSpecDao_Impl.setState(WorkInfo.State.FAILED, str2);
            }
            mutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Resolution {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Failed extends Resolution {
            public final ListenableWorker.Result result = new ListenableWorker.Result.Failure();
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Finished extends Resolution {
            public final ListenableWorker.Result result;

            public Finished(ListenableWorker.Result result) {
                this.result = result;
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
