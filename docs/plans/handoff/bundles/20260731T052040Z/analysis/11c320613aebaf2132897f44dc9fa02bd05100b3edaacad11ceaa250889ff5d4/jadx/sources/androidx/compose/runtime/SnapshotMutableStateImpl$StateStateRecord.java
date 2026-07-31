package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotMutableStateImpl$StateStateRecord extends StateRecord {
    public Object value;

    public SnapshotMutableStateImpl$StateStateRecord(long j, Object obj) {
        super(j);
        this.value = obj;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void assign(StateRecord stateRecord) {
        stateRecord.getClass();
        this.value = ((SnapshotMutableStateImpl$StateStateRecord) stateRecord).value;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord create(long j) {
        return new SnapshotMutableStateImpl$StateStateRecord(SnapshotKt.currentSnapshot().getSnapshotId(), this.value);
    }
}
