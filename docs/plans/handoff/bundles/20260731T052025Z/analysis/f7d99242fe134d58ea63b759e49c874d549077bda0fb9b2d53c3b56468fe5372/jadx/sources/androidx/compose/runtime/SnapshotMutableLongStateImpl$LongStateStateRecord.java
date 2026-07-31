package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnapshotMutableLongStateImpl$LongStateStateRecord extends StateRecord {
    public long value;

    public SnapshotMutableLongStateImpl$LongStateStateRecord(long j, long j2) {
        super(j);
        this.value = j2;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void assign(StateRecord stateRecord) {
        stateRecord.getClass();
        this.value = ((SnapshotMutableLongStateImpl$LongStateStateRecord) stateRecord).value;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord create(long j) {
        return new SnapshotMutableLongStateImpl$LongStateStateRecord(j, this.value);
    }
}
