package androidx.work.impl.constraints;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.model.WorkSpec;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WorkConstraintsTrackerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkConstraintsTracker");

    public static final StandaloneCoroutine listen(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, CoroutineDispatcher coroutineDispatcher, OnConstraintsStateChangedListener onConstraintsStateChangedListener) {
        workConstraintsTracker.getClass();
        coroutineDispatcher.getClass();
        onConstraintsStateChangedListener.getClass();
        return JobKt.launch$default(JobKt.CoroutineScope(coroutineDispatcher), null, null, new WorkConstraintsTrackerKt$listen$1(workConstraintsTracker, workSpec, onConstraintsStateChangedListener, null), 3);
    }
}
