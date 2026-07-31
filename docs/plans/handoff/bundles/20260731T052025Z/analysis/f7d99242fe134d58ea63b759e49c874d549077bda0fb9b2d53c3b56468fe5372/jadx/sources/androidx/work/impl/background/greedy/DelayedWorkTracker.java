package androidx.work.impl.background.greedy;

import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import java.util.HashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DelayedWorkTracker {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DelayedWorkTracker");
    public final SystemClock mClock;
    public final GreedyScheduler mImmediateScheduler;
    public final Configuration.Builder mRunnableScheduler;
    public final HashMap mRunnables = new HashMap();

    public DelayedWorkTracker(GreedyScheduler greedyScheduler, Configuration.Builder builder, SystemClock systemClock) {
        this.mImmediateScheduler = greedyScheduler;
        this.mRunnableScheduler = builder;
        this.mClock = systemClock;
    }
}
