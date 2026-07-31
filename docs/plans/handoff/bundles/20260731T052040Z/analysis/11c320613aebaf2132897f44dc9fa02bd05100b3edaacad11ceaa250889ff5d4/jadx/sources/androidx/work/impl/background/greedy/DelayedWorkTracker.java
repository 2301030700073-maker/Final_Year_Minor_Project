package androidx.work.impl.background.greedy;

import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import coil3.memory.MemoryCacheService;
import java.util.HashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DelayedWorkTracker {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DelayedWorkTracker");
    public final SystemClock mClock;
    public final GreedyScheduler mImmediateScheduler;
    public final MemoryCacheService mRunnableScheduler;
    public final HashMap mRunnables = new HashMap();

    public DelayedWorkTracker(GreedyScheduler greedyScheduler, MemoryCacheService memoryCacheService, SystemClock systemClock) {
        this.mImmediateScheduler = greedyScheduler;
        this.mRunnableScheduler = memoryCacheService;
        this.mClock = systemClock;
    }
}
