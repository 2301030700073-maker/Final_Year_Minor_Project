package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DerivedState.kt */
/* loaded from: classes.dex */
final class DerivedSnapshotState extends StateObjectImpl implements DerivedState {
    private final Function0 calculation;
    private ResultRecord first = new ResultRecord();
    private final SnapshotMutationPolicy policy;

    @Override // androidx.compose.runtime.DerivedState
    public SnapshotMutationPolicy getPolicy() {
        return this.policy;
    }

    public DerivedSnapshotState(Function0 function0, SnapshotMutationPolicy snapshotMutationPolicy) {
        this.calculation = function0;
        this.policy = snapshotMutationPolicy;
    }

    /* compiled from: DerivedState.kt */
    public static final class ResultRecord extends StateRecord implements DerivedState.Record {
        private ObjectIntMap dependencies = ObjectIntMapKt.emptyObjectIntMap();
        private Object result = Unset;
        private int resultHash;
        private int validSnapshotId;
        private int validSnapshotWriteCount;
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;
        private static final Object Unset = new Object();

        /* compiled from: DerivedState.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Object getUnset() {
                return ResultRecord.Unset;
            }
        }

        public final void setValidSnapshotId(int i) {
            this.validSnapshotId = i;
        }

        public final void setValidSnapshotWriteCount(int i) {
            this.validSnapshotWriteCount = i;
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public ObjectIntMap getDependencies() {
            return this.dependencies;
        }

        public void setDependencies(ObjectIntMap objectIntMap) {
            this.dependencies = objectIntMap;
        }

        public final Object getResult() {
            return this.result;
        }

        public final void setResult(Object obj) {
            this.result = obj;
        }

        public final void setResultHash(int i) {
            this.resultHash = i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>");
            ResultRecord resultRecord = (ResultRecord) stateRecord;
            setDependencies(resultRecord.getDependencies());
            this.result = resultRecord.result;
            this.resultHash = resultRecord.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new ResultRecord();
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public Object getCurrentValue() {
            return this.result;
        }

        public final boolean isValid(DerivedState derivedState, Snapshot snapshot) {
            boolean z;
            boolean z2;
            synchronized (SnapshotKt.getLock()) {
                z = true;
                if (this.validSnapshotId == snapshot.getId()) {
                    if (this.validSnapshotWriteCount == snapshot.getWriteCount$runtime_release()) {
                        z2 = false;
                    }
                }
                z2 = true;
            }
            if (this.result == Unset || (z2 && this.resultHash != readableHash(derivedState, snapshot))) {
                z = false;
            }
            if (z && z2) {
                synchronized (SnapshotKt.getLock()) {
                    this.validSnapshotId = snapshot.getId();
                    this.validSnapshotWriteCount = snapshot.getWriteCount$runtime_release();
                    Unit unit = Unit.INSTANCE;
                }
            }
            return z;
        }

        public final int readableHash(DerivedState derivedState, Snapshot snapshot) {
            ObjectIntMap dependencies;
            int i;
            int i2;
            StateRecord current;
            synchronized (SnapshotKt.getLock()) {
                dependencies = getDependencies();
            }
            char c = 7;
            if (!dependencies.isNotEmpty()) {
                return 7;
            }
            MutableVector derivedStateObservers = SnapshotStateKt.derivedStateObservers();
            int size = derivedStateObservers.getSize();
            if (size > 0) {
                Object[] content = derivedStateObservers.getContent();
                int i3 = 0;
                do {
                    ((DerivedStateObserver) content[i3]).start(derivedState);
                    i3++;
                } while (i3 < size);
            }
            try {
                Object[] objArr = dependencies.keys;
                int[] iArr = dependencies.values;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i4 = 7;
                    int i5 = 0;
                    while (true) {
                        long j = jArr[i5];
                        if ((((~j) << c) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i6 = 8;
                            int i7 = 8 - ((~(i5 - length)) >>> 31);
                            int i8 = 0;
                            while (i8 < i7) {
                                if ((j & 255) < 128) {
                                    int i9 = (i5 << 3) + i8;
                                    StateObject stateObject = (StateObject) objArr[i9];
                                    if (iArr[i9] == 1) {
                                        if (stateObject instanceof DerivedSnapshotState) {
                                            current = ((DerivedSnapshotState) stateObject).current(snapshot);
                                        } else {
                                            current = SnapshotKt.current(stateObject.getFirstStateRecord(), snapshot);
                                        }
                                        i4 = (((i4 * 31) + ActualJvm_jvmKt.identityHashCode(current)) * 31) + current.getSnapshotId$runtime_release();
                                    }
                                    i2 = 8;
                                } else {
                                    i2 = i6;
                                }
                                j >>= i2;
                                i8++;
                                i6 = i2;
                            }
                            if (i7 != i6) {
                                break;
                            }
                        }
                        if (i5 == length) {
                            break;
                        }
                        i5++;
                        c = 7;
                    }
                    i = i4;
                } else {
                    i = 7;
                }
                Unit unit = Unit.INSTANCE;
                int size2 = derivedStateObservers.getSize();
                if (size2 <= 0) {
                    return i;
                }
                Object[] content2 = derivedStateObservers.getContent();
                int i10 = 0;
                do {
                    ((DerivedStateObserver) content2[i10]).done(derivedState);
                    i10++;
                } while (i10 < size2);
                return i;
            } catch (Throwable th) {
                int size3 = derivedStateObservers.getSize();
                if (size3 > 0) {
                    Object[] content3 = derivedStateObservers.getContent();
                    int i11 = 0;
                    do {
                        ((DerivedStateObserver) content3[i11]).done(derivedState);
                        i11++;
                    } while (i11 < size3);
                }
                throw th;
            }
        }
    }

    public final StateRecord current(Snapshot snapshot) {
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, snapshot), snapshot, false, this.calculation);
    }

    /* JADX WARN: Finally extract failed */
    private final ResultRecord currentRecord(ResultRecord resultRecord, Snapshot snapshot, boolean z, Function0 function0) {
        SnapshotThreadLocal snapshotThreadLocal;
        Snapshot.Companion companion;
        SnapshotThreadLocal snapshotThreadLocal2;
        SnapshotMutationPolicy policy;
        SnapshotThreadLocal snapshotThreadLocal3;
        SnapshotThreadLocal snapshotThreadLocal4;
        int i;
        int i2;
        SnapshotThreadLocal snapshotThreadLocal5;
        ResultRecord resultRecord2 = resultRecord;
        int i3 = 1;
        if (!resultRecord2.isValid(this, snapshot)) {
            int i4 = 0;
            final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
            snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
            final IntRef intRef = (IntRef) snapshotThreadLocal.get();
            if (intRef == null) {
                intRef = new IntRef(0);
                snapshotThreadLocal3 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                snapshotThreadLocal3.set(intRef);
            }
            final int element = intRef.getElement();
            MutableVector derivedStateObservers = SnapshotStateKt.derivedStateObservers();
            int size = derivedStateObservers.getSize();
            if (size > 0) {
                Object[] content = derivedStateObservers.getContent();
                int i5 = 0;
                while (true) {
                    ((DerivedStateObserver) content[i5]).start(this);
                    int i6 = i5 + 1;
                    if (i6 >= size) {
                        break;
                    }
                    i5 = i6;
                }
            }
            try {
                intRef.setElement(element + 1);
                Object observe = Snapshot.Companion.observe(new Function1() { // from class: androidx.compose.runtime.DerivedSnapshotState$currentRecord$result$1$1$result$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        m1020invoke(obj);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m1020invoke(Object obj) {
                        if (obj == DerivedSnapshotState.this) {
                            throw new IllegalStateException("A derived state calculation cannot read itself");
                        }
                        if (obj instanceof StateObject) {
                            int element2 = intRef.getElement();
                            MutableObjectIntMap mutableObjectIntMap2 = mutableObjectIntMap;
                            mutableObjectIntMap2.set(obj, Math.min(element2 - element, mutableObjectIntMap2.getOrDefault(obj, Integer.MAX_VALUE)));
                        }
                    }
                }, null, function0);
                intRef.setElement(element);
                int size2 = derivedStateObservers.getSize();
                if (size2 > 0) {
                    Object[] content2 = derivedStateObservers.getContent();
                    do {
                        ((DerivedStateObserver) content2[i4]).done(this);
                        i4++;
                    } while (i4 < size2);
                }
                synchronized (SnapshotKt.getLock()) {
                    try {
                        companion = Snapshot.Companion;
                        Snapshot current = companion.getCurrent();
                        if (resultRecord.getResult() == ResultRecord.Companion.getUnset() || (policy = getPolicy()) == null || !policy.equivalent(observe, resultRecord.getResult())) {
                            resultRecord2 = (ResultRecord) SnapshotKt.newWritableRecord(this.first, this, current);
                            resultRecord2.setDependencies(mutableObjectIntMap);
                            resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                            resultRecord2.setResult(observe);
                        } else {
                            resultRecord2.setDependencies(mutableObjectIntMap);
                            resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                snapshotThreadLocal2 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                IntRef intRef2 = (IntRef) snapshotThreadLocal2.get();
                if (intRef2 != null && intRef2.getElement() == 0) {
                    companion.notifyObjectsInitialized();
                    synchronized (SnapshotKt.getLock()) {
                        Snapshot current2 = companion.getCurrent();
                        resultRecord2.setValidSnapshotId(current2.getId());
                        resultRecord2.setValidSnapshotWriteCount(current2.getWriteCount$runtime_release());
                        Unit unit = Unit.INSTANCE;
                    }
                }
                return resultRecord2;
            } catch (Throwable th2) {
                int size3 = derivedStateObservers.getSize();
                if (size3 > 0) {
                    Object[] content3 = derivedStateObservers.getContent();
                    do {
                        ((DerivedStateObserver) content3[i4]).done(this);
                        i4++;
                    } while (i4 < size3);
                }
                throw th2;
            }
        }
        if (z) {
            MutableVector derivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
            int size4 = derivedStateObservers2.getSize();
            if (size4 > 0) {
                Object[] content4 = derivedStateObservers2.getContent();
                int i7 = 0;
                do {
                    ((DerivedStateObserver) content4[i7]).start(this);
                    i7++;
                } while (i7 < size4);
            }
            try {
                ObjectIntMap dependencies = resultRecord.getDependencies();
                snapshotThreadLocal4 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                IntRef intRef3 = (IntRef) snapshotThreadLocal4.get();
                if (intRef3 == null) {
                    intRef3 = new IntRef(0);
                    snapshotThreadLocal5 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                    snapshotThreadLocal5.set(intRef3);
                }
                int element2 = intRef3.getElement();
                Object[] objArr = dependencies.keys;
                int[] iArr = dependencies.values;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i8 = 0;
                    while (true) {
                        long j = jArr[i8];
                        long[] jArr2 = jArr;
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i9 = 8;
                            int i10 = 8 - ((~(i8 - length)) >>> 31);
                            int i11 = 0;
                            while (i11 < i10) {
                                if ((j & 255) < 128) {
                                    int i12 = (i8 << 3) + i11;
                                    StateObject stateObject = (StateObject) objArr[i12];
                                    intRef3.setElement(element2 + iArr[i12]);
                                    Function1 readObserver = snapshot.getReadObserver();
                                    if (readObserver != null) {
                                        readObserver.invoke(stateObject);
                                    }
                                    i2 = 8;
                                } else {
                                    i2 = i9;
                                }
                                j >>= i2;
                                i11++;
                                i9 = i2;
                                i3 = 1;
                            }
                            int i13 = i9;
                            i = i3;
                            if (i10 != i13) {
                                break;
                            }
                        } else {
                            i = i3;
                        }
                        if (i8 == length) {
                            break;
                        }
                        i8 += i;
                        i3 = i;
                        jArr = jArr2;
                    }
                }
                intRef3.setElement(element2);
                Unit unit2 = Unit.INSTANCE;
                int size5 = derivedStateObservers2.getSize();
                if (size5 > 0) {
                    Object[] content5 = derivedStateObservers2.getContent();
                    int i14 = 0;
                    do {
                        ((DerivedStateObserver) content5[i14]).done(this);
                        i14++;
                    } while (i14 < size5);
                }
            } catch (Throwable th3) {
                int size6 = derivedStateObservers2.getSize();
                if (size6 > 0) {
                    Object[] content6 = derivedStateObservers2.getContent();
                    int i15 = 0;
                    do {
                        ((DerivedStateObserver) content6[i15]).done(this);
                        i15++;
                    } while (i15 < size6);
                }
                throw th3;
            }
        }
        return resultRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.first;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>");
        this.first = (ResultRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.State
    public Object getValue() {
        Snapshot.Companion companion = Snapshot.Companion;
        Function1 readObserver = companion.getCurrent().getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(this);
        }
        Snapshot current = companion.getCurrent();
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, true, this.calculation).getResult();
    }

    @Override // androidx.compose.runtime.DerivedState
    public DerivedState.Record getCurrentRecord() {
        Snapshot current = Snapshot.Companion.getCurrent();
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, false, this.calculation);
    }

    public String toString() {
        return "DerivedState(value=" + displayValue() + ")@" + hashCode();
    }

    private final String displayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.Companion.getCurrent())) {
            return String.valueOf(resultRecord.getResult());
        }
        return "<Not calculated>";
    }
}
