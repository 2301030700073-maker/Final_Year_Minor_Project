package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
