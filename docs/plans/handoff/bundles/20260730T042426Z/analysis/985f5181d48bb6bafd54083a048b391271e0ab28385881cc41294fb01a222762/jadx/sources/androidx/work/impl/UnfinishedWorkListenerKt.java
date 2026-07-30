package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.utils.ProcessUtils;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: UnfinishedWorkListener.kt */
/* loaded from: classes.dex */
public abstract class UnfinishedWorkListenerKt {
    private static final long MAX_DELAY_MS;
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("UnfinishedWorkListener");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"UnfinishedWorkListener\")");
        TAG = tagWithPrefix;
        MAX_DELAY_MS = TimeUnit.HOURS.toMillis(1L);
    }

    public static final void maybeLaunchUnfinishedWorkListener(CoroutineScope coroutineScope, Context appContext, Configuration configuration, WorkDatabase db) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(db, "db");
        if (ProcessUtils.isDefaultProcess(appContext, configuration)) {
            FlowKt.launchIn(FlowKt.onEach(FlowKt.distinctUntilChanged(FlowKt.conflate(FlowKt.retryWhen(db.workSpecDao().hasUnfinishedWorkFlow(), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(null)))), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2(appContext, null)), coroutineScope);
        }
    }
}
