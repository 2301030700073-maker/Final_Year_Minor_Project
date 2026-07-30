package androidx.work.impl.constraints;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* compiled from: WorkConstraintsTracker.kt */
/* loaded from: classes.dex */
public abstract class WorkConstraintsTrackerKt {
    private static final long DefaultNetworkRequestTimeoutMs;
    private static final String TAG;

    public static final Job listen(WorkConstraintsTracker workConstraintsTracker, WorkSpec spec, CoroutineDispatcher dispatcher, OnConstraintsStateChangedListener listener) {
        CompletableJob Job$default;
        Intrinsics.checkNotNullParameter(workConstraintsTracker, "<this>");
        Intrinsics.checkNotNullParameter(spec, "spec");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Job$default = JobKt__JobKt.Job$default(null, 1, null);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(dispatcher.plus(Job$default)), null, null, new WorkConstraintsTrackerKt$listen$1(workConstraintsTracker, spec, listener, null), 3, null);
        return Job$default;
    }

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkConstraintsTracker");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkConstraintsTracker\")");
        TAG = tagWithPrefix;
        DefaultNetworkRequestTimeoutMs = 1000L;
    }

    public static final NetworkRequestConstraintController NetworkRequestConstraintController(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return new NetworkRequestConstraintController((ConnectivityManager) systemService, 0L, 2, null);
    }
}
