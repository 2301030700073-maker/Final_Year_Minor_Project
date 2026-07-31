package androidx.room;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InvalidationTracker {
    public final RoomDatabase database;
    public final TriggerBasedInvalidationTracker implementation;
    public final LinkedHashMap observerMap;
    public final ReentrantLock observerMapLock;
    public final Worker$$ExternalSyntheticLambda1 onRefreshCompleted;
    public final Worker$$ExternalSyntheticLambda1 onRefreshScheduled;
    public final Object trackerLock;

    public InvalidationTracker(RoomDatabase roomDatabase, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.database = roomDatabase;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(roomDatabase, linkedHashMap, linkedHashMap2, strArr, roomDatabase.useTempTrackingTable, new InvalidationTracker$implementation$1(1, this, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 0));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new Worker$$ExternalSyntheticLambda1(22, this);
        this.onRefreshCompleted = new Worker$$ExternalSyntheticLambda1(23, this);
        Collections.newSetFromMap(new IdentityHashMap()).getClass();
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.onAllowRefresh = new Worker$$ExternalSyntheticLambda0(4, this);
    }

    public final Object sync$room_runtime(SuspendLambda suspendLambda) {
        Object syncTriggers$room_runtime = this.implementation.syncTriggers$room_runtime(suspendLambda);
        return syncTriggers$room_runtime == CoroutineSingletons.COROUTINE_SUSPENDED ? syncTriggers$room_runtime : Unit.INSTANCE;
    }
}
