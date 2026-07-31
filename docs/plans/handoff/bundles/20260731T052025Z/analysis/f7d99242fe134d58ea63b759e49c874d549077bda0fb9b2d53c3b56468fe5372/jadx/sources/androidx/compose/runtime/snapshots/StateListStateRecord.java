package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateListStateRecord extends StateRecord {
    public AbstractPersistentList list;
    public int modification;
    public int structuralChange;

    public StateListStateRecord(long j, AbstractPersistentList abstractPersistentList) {
        super(j);
        this.list = abstractPersistentList;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void assign(StateRecord stateRecord) {
        synchronized (SnapshotId_jvmKt.sync) {
            stateRecord.getClass();
            this.list = ((StateListStateRecord) stateRecord).list;
            this.modification = ((StateListStateRecord) stateRecord).modification;
            this.structuralChange = ((StateListStateRecord) stateRecord).structuralChange;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord create(long j) {
        return new StateListStateRecord(j, this.list);
    }
}
