package androidx.work.impl.utils;

import android.content.Context;
import android.os.Build;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.ExecutorsKt;

/* compiled from: WorkForeground.kt */
/* loaded from: classes.dex */
public abstract class WorkForegroundKt {
    private static final String TAG;

    public static final Object workForeground(Context context, WorkSpec workSpec, ListenableWorker listenableWorker, ForegroundUpdater foregroundUpdater, TaskExecutor taskExecutor, Continuation continuation) {
        if (!workSpec.expedited || Build.VERSION.SDK_INT >= 31) {
            return Unit.INSTANCE;
        }
        Executor mainThreadExecutor = taskExecutor.getMainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "taskExecutor.mainThreadExecutor");
        Object withContext = BuildersKt.withContext(ExecutorsKt.from(mainThreadExecutor), new WorkForegroundKt$workForeground$2(listenableWorker, workSpec, foregroundUpdater, context, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkForegroundRunnable");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkForegroundRunnable\")");
        TAG = tagWithPrefix;
    }
}
