package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapshotMutableIntStateImpl$IntStateStateRecord extends StateRecord {
    public int value;

    public SnapshotMutableIntStateImpl$IntStateStateRecord(long j, int i) {
        super(j);
        this.value = i;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void assign(StateRecord stateRecord) {
        stateRecord.getClass();
        this.value = ((SnapshotMutableIntStateImpl$IntStateStateRecord) stateRecord).value;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord create(long j) {
        return new SnapshotMutableIntStateImpl$IntStateStateRecord(j, this.value);
    }
}
