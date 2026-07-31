package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnapshotMutableIntStateImpl$IntStateStateRecord extends StateRecord {
    public int value;

    public SnapshotMutableIntStateImpl$IntStateStateRecord(int i, long j) {
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
        return new SnapshotMutableIntStateImpl$IntStateStateRecord(this.value, j);
    }
}
