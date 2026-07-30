package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.AtomicInt;
import androidx.compose.runtime.SnapshotThreadLocal;
import androidx.compose.runtime.WeakReference;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Snapshot.kt */
/* loaded from: classes.dex */
public abstract class SnapshotKt {
    private static List applyObservers;
    private static final AtomicReference currentGlobalSnapshot;
    private static final SnapshotWeakSet extraStateObjects;
    private static List globalWriteObservers;
    private static int nextSnapshotId;
    private static SnapshotIdSet openSnapshots;
    private static AtomicInt pendingApplyObserverCount;
    private static final SnapshotDoubleIndexHeap pinningTable;
    private static final Snapshot snapshotInitializer;
    private static final Function1 emptyLambda = new Function1() { // from class: androidx.compose.runtime.snapshots.SnapshotKt$emptyLambda$1
        public final void invoke(SnapshotIdSet snapshotIdSet) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((SnapshotIdSet) obj);
            return Unit.INSTANCE;
        }
    };
    private static final SnapshotThreadLocal threadSnapshot = new SnapshotThreadLocal();
    private static final Object lock = new Object();

    public static final int trackPinning(int i, SnapshotIdSet snapshotIdSet) {
        int add;
        int lowest = snapshotIdSet.lowest(i);
        synchronized (getLock()) {
            add = pinningTable.add(lowest);
        }
        return add;
    }

    public static final void releasePinningLocked(int i) {
        pinningTable.remove(i);
    }

    public static final Snapshot currentSnapshot() {
        Snapshot snapshot = (Snapshot) threadSnapshot.get();
        return snapshot == null ? (Snapshot) currentGlobalSnapshot.get() : snapshot;
    }

    static {
        SnapshotIdSet.Companion companion = SnapshotIdSet.Companion;
        openSnapshots = companion.getEMPTY();
        nextSnapshotId = 2;
        pinningTable = new SnapshotDoubleIndexHeap();
        extraStateObjects = new SnapshotWeakSet();
        applyObservers = CollectionsKt.emptyList();
        globalWriteObservers = CollectionsKt.emptyList();
        int i = nextSnapshotId;
        nextSnapshotId = i + 1;
        GlobalSnapshot globalSnapshot = new GlobalSnapshot(i, companion.getEMPTY());
        openSnapshots = openSnapshots.set(globalSnapshot.getId());
        AtomicReference atomicReference = new AtomicReference(globalSnapshot);
        currentGlobalSnapshot = atomicReference;
        snapshotInitializer = (Snapshot) atomicReference.get();
        pendingApplyObserverCount = new AtomicInt(0);
    }

    static /* synthetic */ Snapshot createTransparentSnapshotWithNoParentReadObserver$default(Snapshot snapshot, Function1 function1, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return createTransparentSnapshotWithNoParentReadObserver(snapshot, function1, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Snapshot createTransparentSnapshotWithNoParentReadObserver(Snapshot snapshot, Function1 function1, boolean z) {
        boolean z2 = snapshot instanceof MutableSnapshot;
        if (z2 || snapshot == null) {
            return new TransparentObserverMutableSnapshot(z2 ? (MutableSnapshot) snapshot : null, function1, null, false, z);
        }
        return new TransparentObserverSnapshot(snapshot, function1, false, z);
    }

    static /* synthetic */ Function1 mergedReadObserver$default(Function1 function1, Function1 function12, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return mergedReadObserver(function1, function12, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 mergedReadObserver(final Function1 function1, final Function1 function12, boolean z) {
        if (!z) {
            function12 = null;
        }
        if (function1 == null || function12 == null || function1 == function12) {
            return function1 == null ? function12 : function1;
        }
        return new Function1() { // from class: androidx.compose.runtime.snapshots.SnapshotKt$mergedReadObserver$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m1068invoke(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1068invoke(Object obj) {
                Function1.this.invoke(obj);
                function12.invoke(obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 mergedWriteObserver(final Function1 function1, final Function1 function12) {
        if (function1 == null || function12 == null || function1 == function12) {
            return function1 == null ? function12 : function1;
        }
        return new Function1() { // from class: androidx.compose.runtime.snapshots.SnapshotKt$mergedWriteObserver$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m1069invoke(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1069invoke(Object obj) {
                Function1.this.invoke(obj);
                function12.invoke(obj);
            }
        };
    }

    public static final Object getLock() {
        return lock;
    }

    public static final StateRecord newWritableRecord(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord newWritableRecordLocked;
        synchronized (getLock()) {
            newWritableRecordLocked = newWritableRecordLocked(stateRecord, stateObject, snapshot);
        }
        return newWritableRecordLocked;
    }

    public static final Snapshot getSnapshotInitializer() {
        return snapshotInitializer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object takeNewGlobalSnapshot(Snapshot snapshot, Function1 function1) {
        Object invoke = function1.invoke(openSnapshots.clear(snapshot.getId()));
        synchronized (getLock()) {
            int i = nextSnapshotId;
            nextSnapshotId = i + 1;
            openSnapshots = openSnapshots.clear(snapshot.getId());
            currentGlobalSnapshot.set(new GlobalSnapshot(i, openSnapshots));
            snapshot.dispose();
            openSnapshots = openSnapshots.set(i);
            Unit unit = Unit.INSTANCE;
        }
        return invoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object advanceGlobalSnapshot(Function1 function1) {
        Object obj;
        MutableScatterSet modified$runtime_release;
        Object takeNewGlobalSnapshot;
        Snapshot snapshot = snapshotInitializer;
        Intrinsics.checkNotNull(snapshot, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.GlobalSnapshot");
        synchronized (getLock()) {
            try {
                obj = currentGlobalSnapshot.get();
                modified$runtime_release = ((GlobalSnapshot) obj).getModified$runtime_release();
                if (modified$runtime_release != null) {
                    pendingApplyObserverCount.add(1);
                }
                takeNewGlobalSnapshot = takeNewGlobalSnapshot((Snapshot) obj, function1);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (modified$runtime_release != null) {
            try {
                List list = applyObservers;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ((Function2) list.get(i)).invoke(ScatterSetWrapperKt.wrapIntoSet(modified$runtime_release), obj);
                }
            } finally {
                pendingApplyObserverCount.add(-1);
            }
        }
        synchronized (getLock()) {
            try {
                checkAndOverwriteUnusedRecordsLocked();
                if (modified$runtime_release != null) {
                    Object[] objArr = modified$runtime_release.elements;
                    long[] jArr = modified$runtime_release.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j = jArr[i2];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((255 & j) < 128) {
                                        processForUnusedRecordsLocked((StateObject) objArr[(i2 << 3) + i4]);
                                    }
                                    j >>= 8;
                                }
                                if (i3 != 8) {
                                    break;
                                }
                            }
                            if (i2 == length) {
                                break;
                            }
                            i2++;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return takeNewGlobalSnapshot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void advanceGlobalSnapshot() {
        advanceGlobalSnapshot(new Function1() { // from class: androidx.compose.runtime.snapshots.SnapshotKt$advanceGlobalSnapshot$3
            public final void invoke(SnapshotIdSet snapshotIdSet) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((SnapshotIdSet) obj);
                return Unit.INSTANCE;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Snapshot takeNewSnapshot(final Function1 function1) {
        return (Snapshot) advanceGlobalSnapshot(new Function1() { // from class: androidx.compose.runtime.snapshots.SnapshotKt$takeNewSnapshot$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Snapshot invoke(SnapshotIdSet snapshotIdSet) {
                SnapshotIdSet snapshotIdSet2;
                Snapshot snapshot = (Snapshot) Function1.this.invoke(snapshotIdSet);
                synchronized (SnapshotKt.getLock()) {
                    snapshotIdSet2 = SnapshotKt.openSnapshots;
                    SnapshotKt.openSnapshots = snapshotIdSet2.set(snapshot.getId());
                    Unit unit = Unit.INSTANCE;
                }
                return snapshot;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validateOpen(Snapshot snapshot) {
        int lowestOrDefault;
        if (openSnapshots.get(snapshot.getId())) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Snapshot is not open: id=");
        sb.append(snapshot.getId());
        sb.append(", disposed=");
        sb.append(snapshot.getDisposed$runtime_release());
        sb.append(", applied=");
        MutableSnapshot mutableSnapshot = snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null;
        sb.append(mutableSnapshot != null ? Boolean.valueOf(mutableSnapshot.getApplied$runtime_release()) : "read-only");
        sb.append(", lowestPin=");
        synchronized (getLock()) {
            lowestOrDefault = pinningTable.lowestOrDefault(-1);
        }
        sb.append(lowestOrDefault);
        throw new IllegalStateException(sb.toString().toString());
    }

    private static final boolean valid(int i, int i2, SnapshotIdSet snapshotIdSet) {
        return (i2 == 0 || i2 > i || snapshotIdSet.get(i2)) ? false : true;
    }

    private static final boolean valid(StateRecord stateRecord, int i, SnapshotIdSet snapshotIdSet) {
        return valid(i, stateRecord.getSnapshotId$runtime_release(), snapshotIdSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StateRecord readable(StateRecord stateRecord, int i, SnapshotIdSet snapshotIdSet) {
        StateRecord stateRecord2 = null;
        while (stateRecord != null) {
            if (valid(stateRecord, i, snapshotIdSet) && (stateRecord2 == null || stateRecord2.getSnapshotId$runtime_release() < stateRecord.getSnapshotId$runtime_release())) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.getNext$runtime_release();
        }
        if (stateRecord2 != null) {
            return stateRecord2;
        }
        return null;
    }

    public static final StateRecord readable(StateRecord stateRecord, StateObject stateObject) {
        StateRecord readable;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        Function1 readObserver = current.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        StateRecord readable2 = readable(stateRecord, current.getId(), current.getInvalid$runtime_release());
        if (readable2 != null) {
            return readable2;
        }
        synchronized (getLock()) {
            Snapshot current2 = companion.getCurrent();
            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable$lambda$9");
            readable = readable(firstStateRecord, current2.getId(), current2.getInvalid$runtime_release());
            if (readable == null) {
                readError();
                throw new KotlinNothingValueException();
            }
        }
        return readable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void readError() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    private static final StateRecord usedLocked(StateObject stateObject) {
        int lowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId) - 1;
        SnapshotIdSet empty = SnapshotIdSet.Companion.getEMPTY();
        StateRecord stateRecord = null;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime_release()) {
            if (firstStateRecord.getSnapshotId$runtime_release() == 0) {
                return firstStateRecord;
            }
            if (valid(firstStateRecord, lowestOrDefault, empty)) {
                if (stateRecord != null) {
                    return firstStateRecord.getSnapshotId$runtime_release() < stateRecord.getSnapshotId$runtime_release() ? firstStateRecord : stateRecord;
                }
                stateRecord = firstStateRecord;
            }
        }
        return null;
    }

    private static final boolean overwriteUnusedRecordsLocked(StateObject stateObject) {
        StateRecord stateRecord;
        int lowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId);
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        int i = 0;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime_release()) {
            int snapshotId$runtime_release = firstStateRecord.getSnapshotId$runtime_release();
            if (snapshotId$runtime_release != 0) {
                if (snapshotId$runtime_release >= lowestOrDefault) {
                    i++;
                } else if (stateRecord2 == null) {
                    i++;
                    stateRecord2 = firstStateRecord;
                } else {
                    if (firstStateRecord.getSnapshotId$runtime_release() < stateRecord2.getSnapshotId$runtime_release()) {
                        stateRecord = stateRecord2;
                        stateRecord2 = firstStateRecord;
                    } else {
                        stateRecord = firstStateRecord;
                    }
                    if (stateRecord3 == null) {
                        stateRecord3 = stateObject.getFirstStateRecord();
                        StateRecord stateRecord4 = stateRecord3;
                        while (true) {
                            if (stateRecord3 == null) {
                                stateRecord3 = stateRecord4;
                                break;
                            }
                            if (stateRecord3.getSnapshotId$runtime_release() >= lowestOrDefault) {
                                break;
                            }
                            if (stateRecord4.getSnapshotId$runtime_release() < stateRecord3.getSnapshotId$runtime_release()) {
                                stateRecord4 = stateRecord3;
                            }
                            stateRecord3 = stateRecord3.getNext$runtime_release();
                        }
                    }
                    stateRecord2.setSnapshotId$runtime_release(0);
                    stateRecord2.assign(stateRecord3);
                    stateRecord2 = stateRecord;
                }
            }
        }
        return i > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkAndOverwriteUnusedRecordsLocked() {
        SnapshotWeakSet snapshotWeakSet = extraStateObjects;
        int size$runtime_release = snapshotWeakSet.getSize$runtime_release();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= size$runtime_release) {
                break;
            }
            WeakReference weakReference = snapshotWeakSet.getValues$runtime_release()[i];
            Object obj = weakReference != null ? weakReference.get() : null;
            if (obj != null && overwriteUnusedRecordsLocked((StateObject) obj)) {
                if (i2 != i) {
                    snapshotWeakSet.getValues$runtime_release()[i2] = weakReference;
                    snapshotWeakSet.getHashes$runtime_release()[i2] = snapshotWeakSet.getHashes$runtime_release()[i];
                }
                i2++;
            }
            i++;
        }
        for (int i3 = i2; i3 < size$runtime_release; i3++) {
            snapshotWeakSet.getValues$runtime_release()[i3] = null;
            snapshotWeakSet.getHashes$runtime_release()[i3] = 0;
        }
        if (i2 != size$runtime_release) {
            snapshotWeakSet.setSize$runtime_release(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processForUnusedRecordsLocked(StateObject stateObject) {
        if (overwriteUnusedRecordsLocked(stateObject)) {
            extraStateObjects.add(stateObject);
        }
    }

    public static final StateRecord writableRecord(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord readable;
        if (snapshot.getReadOnly()) {
            snapshot.mo1066recordModified$runtime_release(stateObject);
        }
        int id = snapshot.getId();
        StateRecord readable2 = readable(stateRecord, id, snapshot.getInvalid$runtime_release());
        if (readable2 == null) {
            readError();
            throw new KotlinNothingValueException();
        }
        if (readable2.getSnapshotId$runtime_release() == snapshot.getId()) {
            return readable2;
        }
        synchronized (getLock()) {
            readable = readable(stateObject.getFirstStateRecord(), id, snapshot.getInvalid$runtime_release());
            if (readable == null) {
                readError();
                throw new KotlinNothingValueException();
            }
            if (readable.getSnapshotId$runtime_release() != id) {
                readable = newWritableRecordLocked(readable, stateObject, snapshot);
            }
        }
        Intrinsics.checkNotNull(readable, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord");
        if (readable2.getSnapshotId$runtime_release() != 1) {
            snapshot.mo1066recordModified$runtime_release(stateObject);
        }
        return readable;
    }

    public static final StateRecord overwritableRecord(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot, StateRecord stateRecord2) {
        StateRecord newOverwritableRecordLocked;
        if (snapshot.getReadOnly()) {
            snapshot.mo1066recordModified$runtime_release(stateObject);
        }
        int id = snapshot.getId();
        if (stateRecord2.getSnapshotId$runtime_release() == id) {
            return stateRecord2;
        }
        synchronized (getLock()) {
            newOverwritableRecordLocked = newOverwritableRecordLocked(stateRecord, stateObject);
        }
        newOverwritableRecordLocked.setSnapshotId$runtime_release(id);
        if (stateRecord2.getSnapshotId$runtime_release() != 1) {
            snapshot.mo1066recordModified$runtime_release(stateObject);
        }
        return newOverwritableRecordLocked;
    }

    private static final StateRecord newWritableRecordLocked(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord newOverwritableRecordLocked = newOverwritableRecordLocked(stateRecord, stateObject);
        newOverwritableRecordLocked.assign(stateRecord);
        newOverwritableRecordLocked.setSnapshotId$runtime_release(snapshot.getId());
        return newOverwritableRecordLocked;
    }

    public static final StateRecord newOverwritableRecordLocked(StateRecord stateRecord, StateObject stateObject) {
        StateRecord usedLocked = usedLocked(stateObject);
        if (usedLocked != null) {
            usedLocked.setSnapshotId$runtime_release(Integer.MAX_VALUE);
            return usedLocked;
        }
        StateRecord create = stateRecord.create();
        create.setSnapshotId$runtime_release(Integer.MAX_VALUE);
        create.setNext$runtime_release(stateObject.getFirstStateRecord());
        Intrinsics.checkNotNull(create, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked$lambda$16");
        stateObject.prependStateRecord(create);
        Intrinsics.checkNotNull(create, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked");
        return create;
    }

    public static final void notifyWrite(Snapshot snapshot, StateObject stateObject) {
        snapshot.setWriteCount$runtime_release(snapshot.getWriteCount$runtime_release() + 1);
        Function1 writeObserver$runtime_release = snapshot.getWriteObserver$runtime_release();
        if (writeObserver$runtime_release != null) {
            writeObserver$runtime_release.invoke(stateObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map optimisticMerges(MutableSnapshot mutableSnapshot, MutableSnapshot mutableSnapshot2, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        int i;
        HashMap hashMap;
        long[] jArr2;
        int i2;
        HashMap hashMap2;
        int i3;
        StateRecord readable;
        MutableScatterSet modified$runtime_release = mutableSnapshot2.getModified$runtime_release();
        int id = mutableSnapshot.getId();
        HashMap hashMap3 = null;
        if (modified$runtime_release == null) {
            return null;
        }
        SnapshotIdSet or = mutableSnapshot2.getInvalid$runtime_release().set(mutableSnapshot2.getId()).or(mutableSnapshot2.getPreviousIds$runtime_release());
        Object[] objArr = modified$runtime_release.elements;
        long[] jArr3 = modified$runtime_release.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            HashMap hashMap4 = null;
            int i4 = 0;
            while (true) {
                long j = jArr3[i4];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8;
                    int i6 = 8 - ((~(i4 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((255 & j) < 128) {
                            StateObject stateObject = (StateObject) objArr[(i4 << 3) + i7];
                            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                            StateRecord readable2 = readable(firstStateRecord, id, snapshotIdSet);
                            if (readable2 == null || (readable = readable(firstStateRecord, id, or)) == null || Intrinsics.areEqual(readable2, readable)) {
                                jArr2 = jArr3;
                                i2 = id;
                            } else {
                                jArr2 = jArr3;
                                i2 = id;
                                StateRecord readable3 = readable(firstStateRecord, mutableSnapshot2.getId(), mutableSnapshot2.getInvalid$runtime_release());
                                if (readable3 == null) {
                                    readError();
                                    throw new KotlinNothingValueException();
                                }
                                StateRecord mergeRecords = stateObject.mergeRecords(readable, readable2, readable3);
                                if (mergeRecords == null) {
                                    return null;
                                }
                                if (hashMap4 == null) {
                                    hashMap4 = new HashMap();
                                }
                                hashMap4.put(readable2, mergeRecords);
                                hashMap4 = hashMap4;
                            }
                            hashMap2 = null;
                            i3 = 8;
                        } else {
                            jArr2 = jArr3;
                            i2 = id;
                            hashMap2 = hashMap3;
                            i3 = i5;
                        }
                        j >>= i3;
                        i7++;
                        hashMap3 = hashMap2;
                        i5 = i3;
                        jArr3 = jArr2;
                        id = i2;
                    }
                    jArr = jArr3;
                    i = id;
                    hashMap = hashMap3;
                    if (i6 != i5) {
                        return hashMap4;
                    }
                } else {
                    jArr = jArr3;
                    i = id;
                    hashMap = hashMap3;
                }
                if (i4 == length) {
                    hashMap3 = hashMap4;
                    break;
                }
                i4++;
                hashMap3 = hashMap;
                jArr3 = jArr;
                id = i;
            }
        }
        return hashMap3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void reportReadonlySnapshotWrite() {
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    public static final StateRecord current(StateRecord stateRecord, Snapshot snapshot) {
        StateRecord readable = readable(stateRecord, snapshot.getId(), snapshot.getInvalid$runtime_release());
        if (readable != null) {
            return readable;
        }
        readError();
        throw new KotlinNothingValueException();
    }

    public static final StateRecord current(StateRecord stateRecord) {
        StateRecord readable;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        StateRecord readable2 = readable(stateRecord, current.getId(), current.getInvalid$runtime_release());
        if (readable2 != null) {
            return readable2;
        }
        synchronized (getLock()) {
            Snapshot current2 = companion.getCurrent();
            readable = readable(stateRecord, current2.getId(), current2.getInvalid$runtime_release());
        }
        if (readable != null) {
            return readable;
        }
        readError();
        throw new KotlinNothingValueException();
    }

    public static final SnapshotIdSet addRange(SnapshotIdSet snapshotIdSet, int i, int i2) {
        while (i < i2) {
            snapshotIdSet = snapshotIdSet.set(i);
            i++;
        }
        return snapshotIdSet;
    }
}
