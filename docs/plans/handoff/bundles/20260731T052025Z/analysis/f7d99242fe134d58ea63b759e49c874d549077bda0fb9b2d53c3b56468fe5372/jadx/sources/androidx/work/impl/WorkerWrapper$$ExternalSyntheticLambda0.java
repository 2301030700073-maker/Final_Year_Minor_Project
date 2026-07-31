package androidx.work.impl;

import android.content.res.AssetFileDescriptor;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.room.util.DBUtil;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import coil3.decode.StaticImageDecoderKt;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerWrapper$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WorkerWrapper$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        AssetFileDescriptor imageDecoderSourceOrNull$lambda$0;
        int i = this.$r8$classId;
        WorkInfo.State state = WorkInfo.State.ENQUEUED;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                WorkerWrapper workerWrapper = (WorkerWrapper) obj;
                WorkSpec workSpec = workerWrapper.workSpec;
                WorkInfo.State state2 = workSpec.state;
                String str = workSpec.workerClassName;
                if (state2 != state) {
                    String str2 = WorkerWrapperKt.TAG;
                    Logger$LogcatLogger.get().debug(str2, str + " is not in ENQUEUED state. Nothing more to do");
                    return Boolean.TRUE;
                }
                if (workSpec.isPeriodic() || (workSpec.state == state && workSpec.runAttemptCount > 0)) {
                    workerWrapper.clock.getClass();
                    if (System.currentTimeMillis() < workSpec.calculateNextRunTime()) {
                        Logger$LogcatLogger.get().debug(WorkerWrapperKt.TAG, "Delaying execution for " + str + " because it is being executed before schedule.");
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            case 1:
                WorkerWrapper workerWrapper2 = (WorkerWrapper) obj;
                WorkSpecDao_Impl workSpecDao_Impl = workerWrapper2.workSpecDao;
                String str3 = workerWrapper2.workSpecId;
                boolean z = false;
                if (workSpecDao_Impl.getState(str3) == state) {
                    workSpecDao_Impl.setState(WorkInfo.State.RUNNING, str3);
                    ((Number) DBUtil.performBlocking(workSpecDao_Impl.__db, false, true, new IconKt$$ExternalSyntheticLambda1(str3, 21))).intValue();
                    workSpecDao_Impl.setStopReason(str3, -256);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                imageDecoderSourceOrNull$lambda$0 = StaticImageDecoderKt.toImageDecoderSourceOrNull$lambda$0((AssetFileDescriptor) obj);
                return imageDecoderSourceOrNull$lambda$0;
        }
    }
}
