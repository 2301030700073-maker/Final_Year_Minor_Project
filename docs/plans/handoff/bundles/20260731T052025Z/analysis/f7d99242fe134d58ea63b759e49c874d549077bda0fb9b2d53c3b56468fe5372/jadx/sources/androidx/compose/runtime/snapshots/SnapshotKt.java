package androidx.compose.runtime.snapshots;

import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.collection.MutableScatterSet;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.WeakReference;
import androidx.core.view.MenuHostHelper;
import de.cketti.changelog.XmlParser;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SnapshotKt {
    public static List applyObservers;
    public static final XmlParser extraStateObjects;
    public static final GlobalSnapshot globalSnapshot;
    public static List globalWriteObservers;
    public static long nextSnapshotId;
    public static SnapshotIdSet openSnapshots;
    public static final AtomicInt pendingApplyObserverCount;
    public static final SupportedOutputSizesSorter pinningTable;
    public static final TextKt$$ExternalSyntheticLambda1 emptyLambda = new TextKt$$ExternalSyntheticLambda1(25);
    public static final MenuHostHelper threadSnapshot = new MenuHostHelper(18);
    public static final Object lock = new Object();

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], java.io.Serializable] */
    static {
        SnapshotIdSet snapshotIdSet = SnapshotIdSet.EMPTY;
        openSnapshots = snapshotIdSet;
        nextSnapshotId = 2L;
        SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter();
        supportedOutputSizesSorter.mCameraInfoInternal = new long[16];
        supportedOutputSizesSorter.mFullFovRatio = new int[16];
        int[] iArr = new int[16];
        int i = 0;
        while (i < 16) {
            int i2 = i + 1;
            iArr[i] = i2;
            i = i2;
        }
        supportedOutputSizesSorter.mSupportedOutputSizesSorterLegacy = iArr;
        pinningTable = supportedOutputSizesSorter;
        XmlParser xmlParser = new XmlParser(8);
        xmlParser.xmlPullParser = new int[16];
        xmlParser.result = new WeakReference[16];
        extraStateObjects = xmlParser;
        EmptyList emptyList = EmptyList.INSTANCE;
        applyObservers = emptyList;
        globalWriteObservers = emptyList;
        long j = nextSnapshotId;
        nextSnapshotId = 1 + j;
        GlobalSnapshot globalSnapshot2 = new GlobalSnapshot(j, snapshotIdSet, null, new TextKt$$ExternalSyntheticLambda1(24));
        openSnapshots = openSnapshots.set(globalSnapshot2.snapshotId);
        globalSnapshot = globalSnapshot2;
        pendingApplyObserverCount = new AtomicInt(0);
    }

    public static final HashMap access$optimisticMerges(long j, MutableSnapshot mutableSnapshot, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        SnapshotIdSet snapshotIdSet2;
        long[] jArr2;
        SnapshotIdSet snapshotIdSet3;
        int i;
        int i2;
        StateRecord readable;
        MutableScatterSet modified$runtime = mutableSnapshot.getModified$runtime();
        if (modified$runtime != null) {
            long snapshotId = mutableSnapshot.getSnapshotId();
            SnapshotIdSet or = mutableSnapshot.getInvalid$runtime().set(snapshotId).or(mutableSnapshot.previousIds);
            Object[] objArr = modified$runtime.elements;
            long[] jArr3 = modified$runtime.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i3 = 0;
                HashMap hashMap = null;
                while (true) {
                    long j2 = jArr3[i3];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i4 = 8;
                        int i5 = 8 - ((~(i3 - length)) >>> 31);
                        int i6 = 0;
                        while (i6 < i5) {
                            if ((j2 & 255) < 128) {
                                StateObject stateObject = (StateObject) objArr[(i3 << 3) + i6];
                                StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                                jArr2 = jArr3;
                                i = i4;
                                i2 = i6;
                                StateRecord readable2 = readable(firstStateRecord, j, snapshotIdSet);
                                if (readable2 == null || (readable = readable(firstStateRecord, snapshotId, or)) == null || readable2.equals(readable)) {
                                    snapshotIdSet3 = or;
                                } else {
                                    snapshotIdSet3 = or;
                                    StateRecord readable3 = readable(firstStateRecord, snapshotId, mutableSnapshot.getInvalid$runtime());
                                    if (readable3 == null) {
                                        readError();
                                        throw null;
                                    }
                                    StateRecord mergeRecords = stateObject.mergeRecords(readable, readable2, readable3);
                                    if (mergeRecords == null) {
                                        return null;
                                    }
                                    if (hashMap == null) {
                                        hashMap = new HashMap();
                                    }
                                    hashMap.put(readable2, mergeRecords);
                                    hashMap = hashMap;
                                }
                            } else {
                                jArr2 = jArr3;
                                snapshotIdSet3 = or;
                                i = i4;
                                i2 = i6;
                            }
                            j2 >>= i;
                            i6 = i2 + 1;
                            i4 = i;
                            jArr3 = jArr2;
                            or = snapshotIdSet3;
                        }
                        jArr = jArr3;
                        snapshotIdSet2 = or;
                        if (i5 != i4) {
                            return hashMap;
                        }
                    } else {
                        jArr = jArr3;
                        snapshotIdSet2 = or;
                    }
                    if (i3 == length) {
                        return hashMap;
                    }
                    i3++;
                    jArr3 = jArr;
                    or = snapshotIdSet2;
                }
            }
        }
        return null;
    }

    public static final void access$validateOpen(Snapshot snapshot) {
        long j;
        if (openSnapshots.get(snapshot.getSnapshotId())) {
            return;
        }
        StringBuilder sb = new StringBuilder("Snapshot is not open: snapshotId=");
        sb.append(snapshot.getSnapshotId());
        sb.append(", disposed=");
        sb.append(snapshot.disposed);
        sb.append(", applied=");
        MutableSnapshot mutableSnapshot = snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null;
        sb.append(mutableSnapshot != null ? Boolean.valueOf(mutableSnapshot.applied) : "read-only");
        sb.append(", lowestPin=");
        synchronized (lock) {
            SupportedOutputSizesSorter supportedOutputSizesSorter = pinningTable;
            j = supportedOutputSizesSorter.mSensorOrientation > 0 ? ((long[]) supportedOutputSizesSorter.mCameraInfoInternal)[0] : -1L;
        }
        sb.append(j);
        throw new IllegalStateException(sb.toString().toString());
    }

    public static final SnapshotIdSet addRange(SnapshotIdSet snapshotIdSet, long j, long j2) {
        while (Intrinsics.compare(j, j2) < 0) {
            snapshotIdSet = snapshotIdSet.set(j);
            j++;
        }
        return snapshotIdSet;
    }

    public static final Object advanceGlobalSnapshot(Function1 function1) {
        MutableScatterSet mutableScatterSet;
        Object resetGlobalSnapshotLocked;
        GlobalSnapshot globalSnapshot2 = globalSnapshot;
        synchronized (lock) {
            try {
                mutableScatterSet = globalSnapshot2.modified;
                if (mutableScatterSet != null) {
                    pendingApplyObserverCount.addAndGet(1);
                }
                resetGlobalSnapshotLocked = resetGlobalSnapshotLocked(globalSnapshot2, function1);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (mutableScatterSet != null) {
            try {
                List list = applyObservers;
                ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ((Function2) list.get(i)).invoke(scatterSetWrapper, globalSnapshot2);
                }
            } finally {
                pendingApplyObserverCount.addAndGet(-1);
            }
        }
        synchronized (lock) {
            checkAndOverwriteUnusedRecordsLocked();
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
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
            }
        }
        return resetGlobalSnapshotLocked;
    }

    public static final void checkAndOverwriteUnusedRecordsLocked() {
        XmlParser xmlParser = extraStateObjects;
        int i = xmlParser.lastVersionCode;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            WeakReference weakReference = ((WeakReference[]) xmlParser.result)[i2];
            Object obj = weakReference != null ? weakReference.get() : null;
            if (obj != null && overwriteUnusedRecordsLocked((StateObject) obj)) {
                if (i3 != i2) {
                    ((WeakReference[]) xmlParser.result)[i3] = weakReference;
                    int[] iArr = (int[]) xmlParser.xmlPullParser;
                    iArr[i3] = iArr[i2];
                }
                i3++;
            }
            i2++;
        }
        for (int i4 = i3; i4 < i; i4++) {
            ((WeakReference[]) xmlParser.result)[i4] = null;
            ((int[]) xmlParser.xmlPullParser)[i4] = 0;
        }
        if (i3 != i) {
            xmlParser.lastVersionCode = i3;
        }
    }

    public static final Snapshot createTransparentSnapshotWithNoParentReadObserver(Snapshot snapshot, Function1 function1, boolean z) {
        boolean z2 = snapshot instanceof MutableSnapshot;
        if (z2 || snapshot == null) {
            return new TransparentObserverMutableSnapshot(z2 ? (MutableSnapshot) snapshot : null, function1, null, false, z);
        }
        return new TransparentObserverSnapshot(snapshot, function1, false, z);
    }

    public static final StateRecord current(StateRecord stateRecord) {
        StateRecord readable;
        Snapshot currentSnapshot = currentSnapshot();
        StateRecord readable2 = readable(stateRecord, currentSnapshot.getSnapshotId(), currentSnapshot.getInvalid$runtime());
        if (readable2 != null) {
            return readable2;
        }
        synchronized (lock) {
            Snapshot currentSnapshot2 = currentSnapshot();
            readable = readable(stateRecord, currentSnapshot2.getSnapshotId(), currentSnapshot2.getInvalid$runtime());
        }
        if (readable != null) {
            return readable;
        }
        readError();
        throw null;
    }

    public static final Snapshot currentSnapshot() {
        Snapshot snapshot = (Snapshot) threadSnapshot.get();
        return snapshot == null ? globalSnapshot : snapshot;
    }

    public static final Function1 mergedReadObserver(Function1 function1, Function1 function12, boolean z) {
        if (!z) {
            function12 = null;
        }
        return (function1 == null || function12 == null || function1 == function12) ? function1 == null ? function12 : function1 : new SnapshotKt$$ExternalSyntheticLambda0(function1, function12, 0);
    }

    public static final Function1 mergedWriteObserver(Function1 function1, Function1 function12) {
        return (function1 == null || function12 == null || function1 == function12) ? function1 == null ? function12 : function1 : new SnapshotKt$$ExternalSyntheticLambda0(function1, function12, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        r3 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.runtime.snapshots.StateRecord newOverwritableRecordLocked(androidx.compose.runtime.snapshots.StateRecord r10, androidx.compose.runtime.snapshots.StateObject r11) {
        /*
            androidx.compose.runtime.snapshots.StateRecord r0 = r11.getFirstStateRecord()
            long r1 = androidx.compose.runtime.snapshots.SnapshotKt.nextSnapshotId
            androidx.camera.core.internal.SupportedOutputSizesSorter r3 = androidx.compose.runtime.snapshots.SnapshotKt.pinningTable
            int r4 = r3.mSensorOrientation
            if (r4 <= 0) goto L14
            java.lang.Object r1 = r3.mCameraInfoInternal
            long[] r1 = (long[]) r1
            r2 = 0
            r2 = r1[r2]
            r1 = r2
        L14:
            r3 = 1
            long r1 = r1 - r3
            r3 = 0
            r4 = r3
        L19:
            if (r0 == 0) goto L4b
            long r5 = r0.snapshotId
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L24
            goto L44
        L24:
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 == 0) goto L48
            int r7 = kotlin.jvm.internal.Intrinsics.compare(r5, r1)
            if (r7 > 0) goto L48
            androidx.compose.runtime.snapshots.SnapshotIdSet r7 = androidx.compose.runtime.snapshots.SnapshotIdSet.EMPTY
            boolean r5 = r7.get(r5)
            if (r5 != 0) goto L48
            if (r4 != 0) goto L3a
            r4 = r0
            goto L48
        L3a:
            long r1 = r0.snapshotId
            long r5 = r4.snapshotId
            int r1 = kotlin.jvm.internal.Intrinsics.compare(r1, r5)
            if (r1 >= 0) goto L46
        L44:
            r3 = r0
            goto L4b
        L46:
            r3 = r4
            goto L4b
        L48:
            androidx.compose.runtime.snapshots.StateRecord r0 = r0.next
            goto L19
        L4b:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r3 == 0) goto L55
            r3.snapshotId = r0
            return r3
        L55:
            androidx.compose.runtime.snapshots.StateRecord r10 = r10.create(r0)
            androidx.compose.runtime.snapshots.StateRecord r0 = r11.getFirstStateRecord()
            r10.next = r0
            r11.prependStateRecord(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked(androidx.compose.runtime.snapshots.StateRecord, androidx.compose.runtime.snapshots.StateObject):androidx.compose.runtime.snapshots.StateRecord");
    }

    public static final StateRecord newWritableRecord(StateRecord stateRecord, DerivedSnapshotState derivedSnapshotState, Snapshot snapshot) {
        StateRecord newOverwritableRecordLocked;
        synchronized (lock) {
            newOverwritableRecordLocked = newOverwritableRecordLocked(stateRecord, derivedSnapshotState);
            newOverwritableRecordLocked.assign(stateRecord);
            newOverwritableRecordLocked.snapshotId = snapshot.getSnapshotId();
        }
        return newOverwritableRecordLocked;
    }

    public static final void notifyWrite(Snapshot snapshot, StateObject stateObject) {
        snapshot.setWriteCount$runtime(snapshot.getWriteCount$runtime() + 1);
        Function1 writeObserver$runtime = snapshot.getWriteObserver$runtime();
        if (writeObserver$runtime != null) {
            writeObserver$runtime.invoke(stateObject);
        }
    }

    public static final StateRecord overwritableRecord(StateRecord stateRecord, StateObjectImpl stateObjectImpl, Snapshot snapshot, StateRecord stateRecord2) {
        StateRecord newOverwritableRecordLocked;
        if (snapshot.getReadOnly()) {
            snapshot.recordModified$runtime(stateObjectImpl);
        }
        long snapshotId = snapshot.getSnapshotId();
        if (stateRecord2.snapshotId == snapshotId) {
            return stateRecord2;
        }
        synchronized (lock) {
            newOverwritableRecordLocked = newOverwritableRecordLocked(stateRecord, stateObjectImpl);
        }
        newOverwritableRecordLocked.snapshotId = snapshotId;
        if (stateRecord2.snapshotId != 1) {
            snapshot.recordModified$runtime(stateObjectImpl);
        }
        return newOverwritableRecordLocked;
    }

    public static final boolean overwriteUnusedRecordsLocked(StateObject stateObject) {
        StateRecord stateRecord;
        long j = nextSnapshotId;
        SupportedOutputSizesSorter supportedOutputSizesSorter = pinningTable;
        if (supportedOutputSizesSorter.mSensorOrientation > 0) {
            j = ((long[]) supportedOutputSizesSorter.mCameraInfoInternal)[0];
        }
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        int i = 0;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.next) {
            long j2 = firstStateRecord.snapshotId;
            if (j2 != 0) {
                if (Intrinsics.compare(j2, j) >= 0) {
                    i++;
                } else if (stateRecord2 == null) {
                    i++;
                    stateRecord2 = firstStateRecord;
                } else {
                    if (Intrinsics.compare(firstStateRecord.snapshotId, stateRecord2.snapshotId) < 0) {
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
                            if (Intrinsics.compare(stateRecord3.snapshotId, j) >= 0) {
                                break;
                            }
                            if (Intrinsics.compare(stateRecord4.snapshotId, stateRecord3.snapshotId) < 0) {
                                stateRecord4 = stateRecord3;
                            }
                            stateRecord3 = stateRecord3.next;
                        }
                    }
                    stateRecord2.snapshotId = 0L;
                    stateRecord2.assign(stateRecord3);
                    stateRecord2 = stateRecord;
                }
            }
        }
        return i > 1;
    }

    public static final void processForUnusedRecordsLocked(StateObject stateObject) {
        if (overwriteUnusedRecordsLocked(stateObject)) {
            XmlParser xmlParser = extraStateObjects;
            int i = xmlParser.lastVersionCode;
            int identityHashCode = System.identityHashCode(stateObject);
            int i2 = -1;
            if (i > 0) {
                int i3 = xmlParser.lastVersionCode - 1;
                int i4 = 0;
                while (true) {
                    if (i4 > i3) {
                        i2 = -(i4 + 1);
                        break;
                    }
                    int i5 = (i4 + i3) >>> 1;
                    int i6 = ((int[]) xmlParser.xmlPullParser)[i5];
                    if (i6 < identityHashCode) {
                        i4 = i5 + 1;
                    } else if (i6 > identityHashCode) {
                        i3 = i5 - 1;
                    } else {
                        WeakReference weakReference = ((WeakReference[]) xmlParser.result)[i5];
                        if (stateObject != (weakReference != null ? weakReference.get() : null)) {
                            for (int i7 = i5 - 1; -1 < i7 && ((int[]) xmlParser.xmlPullParser)[i7] == identityHashCode; i7--) {
                                WeakReference weakReference2 = ((WeakReference[]) xmlParser.result)[i7];
                                if ((weakReference2 != null ? weakReference2.get() : null) == stateObject) {
                                    i2 = i7;
                                    break;
                                }
                            }
                            i5++;
                            int i8 = xmlParser.lastVersionCode;
                            while (true) {
                                if (i5 >= i8) {
                                    i2 = -(xmlParser.lastVersionCode + 1);
                                    break;
                                } else {
                                    if (((int[]) xmlParser.xmlPullParser)[i5] != identityHashCode) {
                                        i2 = -(i5 + 1);
                                        break;
                                    }
                                    WeakReference weakReference3 = ((WeakReference[]) xmlParser.result)[i5];
                                    if ((weakReference3 != null ? weakReference3.get() : null) == stateObject) {
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                            }
                        }
                        i2 = i5;
                    }
                }
                if (i2 >= 0) {
                    return;
                }
            }
            int i9 = -(i2 + 1);
            WeakReference[] weakReferenceArr = (WeakReference[]) xmlParser.result;
            int length = weakReferenceArr.length;
            if (i == length) {
                int i10 = length * 2;
                WeakReference[] weakReferenceArr2 = new WeakReference[i10];
                int[] iArr = new int[i10];
                int i11 = i9 + 1;
                System.arraycopy(weakReferenceArr, i9, weakReferenceArr2, i11, i - i9);
                System.arraycopy((WeakReference[]) xmlParser.result, 0, weakReferenceArr2, 0, i9);
                ArraysKt___ArraysKt.copyInto(i11, i9, i, (int[]) xmlParser.xmlPullParser, iArr);
                ArraysKt___ArraysKt.copyInto$default(0, i9, 6, (int[]) xmlParser.xmlPullParser, iArr);
                xmlParser.result = weakReferenceArr2;
                xmlParser.xmlPullParser = iArr;
            } else {
                int i12 = i9 + 1;
                System.arraycopy(weakReferenceArr, i9, weakReferenceArr, i12, i - i9);
                int[] iArr2 = (int[]) xmlParser.xmlPullParser;
                ArraysKt___ArraysKt.copyInto(i12, i9, i, iArr2, iArr2);
            }
            ((WeakReference[]) xmlParser.result)[i9] = new WeakReference(stateObject);
            ((int[]) xmlParser.xmlPullParser)[i9] = identityHashCode;
            xmlParser.lastVersionCode++;
        }
    }

    public static final void readError() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final StateRecord readable(StateRecord stateRecord, StateObject stateObject) {
        StateRecord readable;
        Snapshot currentSnapshot = currentSnapshot();
        Function1 readObserver = currentSnapshot.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        StateRecord readable2 = readable(stateRecord, currentSnapshot.getSnapshotId(), currentSnapshot.getInvalid$runtime());
        if (readable2 != null) {
            return readable2;
        }
        synchronized (lock) {
            Snapshot currentSnapshot2 = currentSnapshot();
            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
            firstStateRecord.getClass();
            readable = readable(firstStateRecord, currentSnapshot2.getSnapshotId(), currentSnapshot2.getInvalid$runtime());
            if (readable == null) {
                readError();
                throw null;
            }
        }
        return readable;
    }

    public static final void releasePinningLocked(int i) {
        SupportedOutputSizesSorter supportedOutputSizesSorter = pinningTable;
        int i2 = ((int[]) supportedOutputSizesSorter.mSupportedOutputSizesSorterLegacy)[i];
        supportedOutputSizesSorter.swap(i2, supportedOutputSizesSorter.mSensorOrientation - 1);
        supportedOutputSizesSorter.mSensorOrientation--;
        long[] jArr = (long[]) supportedOutputSizesSorter.mCameraInfoInternal;
        long j = jArr[i2];
        int i3 = i2;
        while (i3 > 0) {
            int i4 = ((i3 + 1) >> 1) - 1;
            if (Intrinsics.compare(jArr[i4], j) <= 0) {
                break;
            }
            supportedOutputSizesSorter.swap(i4, i3);
            i3 = i4;
        }
        long[] jArr2 = (long[]) supportedOutputSizesSorter.mCameraInfoInternal;
        int i5 = supportedOutputSizesSorter.mSensorOrientation >> 1;
        while (i2 < i5) {
            int i6 = (i2 + 1) << 1;
            int i7 = i6 - 1;
            if (i6 < supportedOutputSizesSorter.mSensorOrientation && Intrinsics.compare(jArr2[i6], jArr2[i7]) < 0) {
                if (Intrinsics.compare(jArr2[i6], jArr2[i2]) >= 0) {
                    break;
                }
                supportedOutputSizesSorter.swap(i6, i2);
                i2 = i6;
            } else {
                if (Intrinsics.compare(jArr2[i7], jArr2[i2]) >= 0) {
                    break;
                }
                supportedOutputSizesSorter.swap(i7, i2);
                i2 = i7;
            }
        }
        ((int[]) supportedOutputSizesSorter.mSupportedOutputSizesSorterLegacy)[i] = supportedOutputSizesSorter.mLensFacing;
        supportedOutputSizesSorter.mLensFacing = i;
    }

    public static final Object resetGlobalSnapshotLocked(GlobalSnapshot globalSnapshot2, Function1 function1) {
        long j = globalSnapshot2.snapshotId;
        Object invoke = function1.invoke(openSnapshots.clear(j));
        long j2 = nextSnapshotId;
        nextSnapshotId = 1 + j2;
        SnapshotIdSet clear = openSnapshots.clear(j);
        openSnapshots = clear;
        globalSnapshot2.snapshotId = j2;
        globalSnapshot2.invalid = clear;
        globalSnapshot2.writeCount = 0;
        globalSnapshot2.modified = null;
        globalSnapshot2.releasePinnedSnapshotLocked$runtime();
        openSnapshots = openSnapshots.set(j2);
        return invoke;
    }

    public static final StateRecord writableRecord(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord readable;
        if (snapshot.getReadOnly()) {
            snapshot.recordModified$runtime(stateObject);
        }
        long snapshotId = snapshot.getSnapshotId();
        StateRecord readable2 = readable(stateRecord, snapshotId, snapshot.getInvalid$runtime());
        if (readable2 == null) {
            readError();
            throw null;
        }
        if (readable2.snapshotId == snapshot.getSnapshotId()) {
            return readable2;
        }
        synchronized (lock) {
            readable = readable(stateObject.getFirstStateRecord(), snapshotId, snapshot.getInvalid$runtime());
            if (readable == null) {
                readError();
                throw null;
            }
            if (readable.snapshotId != snapshotId) {
                StateRecord newOverwritableRecordLocked = newOverwritableRecordLocked(readable, stateObject);
                newOverwritableRecordLocked.assign(readable);
                newOverwritableRecordLocked.snapshotId = snapshot.getSnapshotId();
                readable = newOverwritableRecordLocked;
            }
        }
        if (readable2.snapshotId != 1) {
            snapshot.recordModified$runtime(stateObject);
        }
        return readable;
    }

    public static final StateRecord current(StateRecord stateRecord, Snapshot snapshot) {
        StateRecord readable;
        StateRecord readable2 = readable(stateRecord, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        if (readable2 != null) {
            return readable2;
        }
        synchronized (lock) {
            readable = readable(stateRecord, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        }
        if (readable != null) {
            return readable;
        }
        readError();
        throw null;
    }

    public static final StateRecord readable(StateRecord stateRecord, long j, SnapshotIdSet snapshotIdSet) {
        StateRecord stateRecord2 = null;
        while (stateRecord != null) {
            long j2 = stateRecord.snapshotId;
            if (j2 != 0 && Intrinsics.compare(j2, j) <= 0 && !snapshotIdSet.get(j2) && (stateRecord2 == null || Intrinsics.compare(stateRecord2.snapshotId, stateRecord.snapshotId) < 0)) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.next;
        }
        if (stateRecord2 != null) {
            return stateRecord2;
        }
        return null;
    }
}
