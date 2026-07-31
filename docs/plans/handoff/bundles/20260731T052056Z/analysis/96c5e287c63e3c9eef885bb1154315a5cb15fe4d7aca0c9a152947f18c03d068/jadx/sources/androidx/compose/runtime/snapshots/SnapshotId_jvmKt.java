package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda7;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SnapshotId_jvmKt {
    public static final Object sync = new Object();
    public static final Object sync$1 = new Object();

    public static final boolean attemptUpdate(StateListStateRecord stateListStateRecord, int i, AbstractPersistentList abstractPersistentList, boolean z) {
        boolean z2;
        synchronized (sync) {
            try {
                int i2 = stateListStateRecord.modification;
                if (i2 == i) {
                    stateListStateRecord.list = abstractPersistentList;
                    z2 = true;
                    if (z) {
                        stateListStateRecord.structuralChange++;
                    }
                    stateListStateRecord.modification = i2 + 1;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public static final int binarySearch(long[] jArr, long j) {
        int length = jArr.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            long j2 = jArr[i2];
            if (j > j2) {
                i = i2 + 1;
            } else {
                if (j >= j2) {
                    return i2;
                }
                length = i2 - 1;
            }
        }
        return -(i + 1);
    }

    public static Snapshot getCurrentThreadSnapshot() {
        return (Snapshot) SnapshotKt.threadSnapshot.get();
    }

    public static final StateListStateRecord getReadable(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.firstStateRecord;
        stateListStateRecord.getClass();
        return (StateListStateRecord) SnapshotKt.readable(stateListStateRecord, snapshotStateList);
    }

    public static final int getStructure(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.firstStateRecord;
        stateListStateRecord.getClass();
        return ((StateListStateRecord) SnapshotKt.current(stateListStateRecord)).structuralChange;
    }

    public static Snapshot makeCurrentNonObservable(Snapshot snapshot) {
        if (snapshot instanceof TransparentObserverMutableSnapshot) {
            TransparentObserverMutableSnapshot transparentObserverMutableSnapshot = (TransparentObserverMutableSnapshot) snapshot;
            if (transparentObserverMutableSnapshot.threadId == Expect_jvmKt.currentThreadId()) {
                transparentObserverMutableSnapshot.readObserver = null;
                return snapshot;
            }
        }
        if (snapshot instanceof TransparentObserverSnapshot) {
            TransparentObserverSnapshot transparentObserverSnapshot = (TransparentObserverSnapshot) snapshot;
            if (transparentObserverSnapshot.threadId == Expect_jvmKt.currentThreadId()) {
                transparentObserverSnapshot.readObserver = null;
                return snapshot;
            }
        }
        Snapshot createTransparentSnapshotWithNoParentReadObserver = SnapshotKt.createTransparentSnapshotWithNoParentReadObserver(snapshot, null, false);
        createTransparentSnapshotWithNoParentReadObserver.makeCurrent();
        return createTransparentSnapshotWithNoParentReadObserver;
    }

    public static final boolean mutateBoolean(SnapshotStateList snapshotStateList, Function1 function1) {
        int i;
        AbstractPersistentList abstractPersistentList;
        Object invoke;
        Snapshot currentSnapshot;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                StateListStateRecord stateListStateRecord = snapshotStateList.firstStateRecord;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.current(stateListStateRecord);
                i = stateListStateRecord2.modification;
                abstractPersistentList = stateListStateRecord2.list;
            }
            abstractPersistentList.getClass();
            PersistentVectorBuilder builder = abstractPersistentList.builder();
            invoke = function1.invoke(builder);
            AbstractPersistentList build = builder.build();
            if (Intrinsics.areEqual(build, abstractPersistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = snapshotStateList.firstStateRecord;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.lock) {
                currentSnapshot = SnapshotKt.currentSnapshot();
                attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord3, snapshotStateList, currentSnapshot), i, build, true);
            }
            SnapshotKt.notifyWrite(currentSnapshot, snapshotStateList);
        } while (!attemptUpdate);
        return ((Boolean) invoke).booleanValue();
    }

    public static Object observe(MainFragment$$ExternalSyntheticLambda7 mainFragment$$ExternalSyntheticLambda7, Function0 function0) {
        Snapshot transparentObserverMutableSnapshot;
        Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
        if (snapshot instanceof TransparentObserverMutableSnapshot) {
            TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
            if (transparentObserverMutableSnapshot2.threadId == Expect_jvmKt.currentThreadId()) {
                Function1 function1 = transparentObserverMutableSnapshot2.readObserver;
                Function1 function12 = transparentObserverMutableSnapshot2.writeObserver;
                try {
                    ((TransparentObserverMutableSnapshot) snapshot).readObserver = SnapshotKt.mergedReadObserver(mainFragment$$ExternalSyntheticLambda7, function1, true);
                    ((TransparentObserverMutableSnapshot) snapshot).writeObserver = function12;
                    return function0.invoke();
                } finally {
                    transparentObserverMutableSnapshot2.readObserver = function1;
                    transparentObserverMutableSnapshot2.writeObserver = function12;
                }
            }
        }
        if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
            transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, mainFragment$$ExternalSyntheticLambda7, null, true, false);
        } else {
            transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(mainFragment$$ExternalSyntheticLambda7);
        }
        try {
            Snapshot makeCurrent = transparentObserverMutableSnapshot.makeCurrent();
            try {
                Object invoke = function0.invoke();
                Snapshot.restoreCurrent(makeCurrent);
                transparentObserverMutableSnapshot.dispose();
                return invoke;
            } catch (Throwable th) {
                Snapshot.restoreCurrent(makeCurrent);
                throw th;
            }
        } catch (Throwable th2) {
            transparentObserverMutableSnapshot.dispose();
            throw th2;
        }
    }

    public static YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 registerApplyObserver(HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0) {
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus((Collection) SnapshotKt.applyObservers, (Object) hintHandler$$ExternalSyntheticLambda0);
        }
        return new YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(hintHandler$$ExternalSyntheticLambda0);
    }

    public static void restoreNonObservable(Snapshot snapshot, Snapshot snapshot2, Function1 function1) {
        if (snapshot != snapshot2) {
            snapshot2.getClass();
            Snapshot.restoreCurrent(snapshot);
            snapshot2.dispose();
        } else if (snapshot instanceof TransparentObserverMutableSnapshot) {
            ((TransparentObserverMutableSnapshot) snapshot).readObserver = function1;
        } else if (snapshot instanceof TransparentObserverSnapshot) {
            ((TransparentObserverSnapshot) snapshot).readObserver = function1;
        } else {
            Gson$$ExternalSyntheticBUOutline0.m$8("Non-transparent snapshot was reused: ", snapshot);
        }
    }

    public static void sendApplyNotifications() {
        boolean z;
        synchronized (SnapshotKt.lock) {
            MutableScatterSet mutableScatterSet = SnapshotKt.globalSnapshot.modified;
            z = false;
            if (mutableScatterSet != null) {
                if (mutableScatterSet.isNotEmpty()) {
                    z = true;
                }
            }
        }
        if (z) {
            SnapshotKt.advanceGlobalSnapshot();
        }
    }

    public static final void unsupported() {
        throw new UnsupportedOperationException();
    }

    public static final void validateRange(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index (" + i + ") is out of bound of [0, " + i2 + ')');
        }
    }

    public abstract void check();
}
