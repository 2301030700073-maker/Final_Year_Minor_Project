package androidx.work.impl.constraints;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.model.WorkSpec;
import coil3.RealImageLoader$execute$2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WorkConstraintsTrackerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkConstraintsTracker");

    public static final StandaloneCoroutine listen(Headers.Builder builder, WorkSpec workSpec, CoroutineDispatcher coroutineDispatcher, OnConstraintsStateChangedListener onConstraintsStateChangedListener) {
        builder.getClass();
        coroutineDispatcher.getClass();
        onConstraintsStateChangedListener.getClass();
        return AwaitKt.launch$default(AwaitKt.CoroutineScope(coroutineDispatcher), null, null, new RealImageLoader$execute$2(builder, workSpec, onConstraintsStateChangedListener, null, 7), 3);
    }
}
