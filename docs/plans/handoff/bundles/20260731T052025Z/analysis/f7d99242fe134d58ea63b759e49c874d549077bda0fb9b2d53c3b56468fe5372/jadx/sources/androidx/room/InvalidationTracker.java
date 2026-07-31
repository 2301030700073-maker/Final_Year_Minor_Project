package androidx.room;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.work.impl.WorkDatabase_Impl;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InvalidationTracker {
    public final WorkDatabase_Impl database;
    public final TriggerBasedInvalidationTracker implementation;
    public final LinkedHashMap observerMap;
    public final ReentrantLock observerMapLock;
    public final TextKt$$ExternalSyntheticLambda4 onRefreshCompleted;
    public final TextKt$$ExternalSyntheticLambda4 onRefreshScheduled;
    public final Object trackerLock;

    public InvalidationTracker(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.database = workDatabase_Impl;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(workDatabase_Impl, linkedHashMap, linkedHashMap2, strArr, workDatabase_Impl.useTempTrackingTable, new InvalidationTracker$implementation$1(1, this, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 0));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new TextKt$$ExternalSyntheticLambda4(26, this);
        this.onRefreshCompleted = new TextKt$$ExternalSyntheticLambda4(27, this);
        Collections.newSetFromMap(new IdentityHashMap()).getClass();
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.onAllowRefresh = new ImageLoader$Builder$$ExternalSyntheticLambda1(18, this);
    }

    public final Object sync$room_runtime_release(SuspendLambda suspendLambda) {
        Object syncTriggers$room_runtime_release;
        WorkDatabase_Impl workDatabase_Impl = this.database;
        return ((!workDatabase_Impl.inCompatibilityMode$room_runtime_release() || workDatabase_Impl.isOpenInternal()) && (syncTriggers$room_runtime_release = this.implementation.syncTriggers$room_runtime_release(suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? syncTriggers$room_runtime_release : Unit.INSTANCE;
    }
}
