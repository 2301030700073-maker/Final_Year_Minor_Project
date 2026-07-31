package androidx.room;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher$fetch$2;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InvalidationTracker {
    public final RoomDatabase database;
    public final TriggerBasedInvalidationTracker implementation;
    public final LinkedHashMap observerMap;
    public final ReentrantLock observerMapLock;
    public final UtilsKt$$ExternalSyntheticLambda0 onRefreshCompleted;
    public final UtilsKt$$ExternalSyntheticLambda0 onRefreshScheduled;
    public final Object trackerLock;

    public InvalidationTracker(RoomDatabase roomDatabase, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.database = roomDatabase;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(roomDatabase, linkedHashMap, linkedHashMap2, strArr, roomDatabase.useTempTrackingTable, new NetworkFetcher$fetch$2(1, this, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 2));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new UtilsKt$$ExternalSyntheticLambda0(this, 8);
        this.onRefreshCompleted = new UtilsKt$$ExternalSyntheticLambda0(this, 9);
        Collections.newSetFromMap(new IdentityHashMap()).getClass();
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.onAllowRefresh = new Worker$$ExternalSyntheticLambda0(this, 13);
    }
}
