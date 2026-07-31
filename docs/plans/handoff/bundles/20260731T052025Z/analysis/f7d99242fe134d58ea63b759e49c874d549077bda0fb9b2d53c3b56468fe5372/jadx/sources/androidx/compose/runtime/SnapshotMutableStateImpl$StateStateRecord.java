package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
