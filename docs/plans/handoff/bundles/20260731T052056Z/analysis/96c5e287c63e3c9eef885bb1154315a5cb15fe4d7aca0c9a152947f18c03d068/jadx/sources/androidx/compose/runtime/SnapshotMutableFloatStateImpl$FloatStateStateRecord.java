package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapshotMutableFloatStateImpl$FloatStateStateRecord extends StateRecord {
    public float value;

    public SnapshotMutableFloatStateImpl$FloatStateStateRecord(float f, long j) {
        super(j);
        this.value = f;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void assign(StateRecord stateRecord) {
        stateRecord.getClass();
        this.value = ((SnapshotMutableFloatStateImpl$FloatStateStateRecord) stateRecord).value;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord create(long j) {
        return new SnapshotMutableFloatStateImpl$FloatStateStateRecord(this.value, j);
    }
}
