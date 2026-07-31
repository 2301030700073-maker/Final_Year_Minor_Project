package androidx.work.impl.background.greedy;

import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import coil3.memory.MemoryCacheService;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DelayedWorkTracker {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DelayedWorkTracker");
    public final GreedyScheduler mImmediateScheduler;
    public final MemoryCacheService mRunnableScheduler;
    public final HashMap mRunnables = new HashMap();

    public DelayedWorkTracker(GreedyScheduler greedyScheduler, MemoryCacheService memoryCacheService, SystemClock systemClock) {
        this.mImmediateScheduler = greedyScheduler;
        this.mRunnableScheduler = memoryCacheService;
    }
}
