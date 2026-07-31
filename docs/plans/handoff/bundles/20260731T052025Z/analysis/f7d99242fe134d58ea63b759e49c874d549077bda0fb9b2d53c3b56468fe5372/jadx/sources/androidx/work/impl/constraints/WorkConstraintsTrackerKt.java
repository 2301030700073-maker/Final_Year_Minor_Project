package androidx.work.impl.constraints;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.model.WorkSpec;
import com.fsck.k9.Preferences$getAccountFlow$1;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WorkConstraintsTrackerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkConstraintsTracker");

    public static final StandaloneCoroutine listen(Headers.Builder builder, WorkSpec workSpec, CoroutineDispatcher coroutineDispatcher, OnConstraintsStateChangedListener onConstraintsStateChangedListener) {
        builder.getClass();
        coroutineDispatcher.getClass();
        onConstraintsStateChangedListener.getClass();
        return JobKt.launch$default(JobKt.CoroutineScope(coroutineDispatcher), null, null, new Preferences$getAccountFlow$1(builder, workSpec, onConstraintsStateChangedListener, (Continuation) null, 13), 3);
    }
}
