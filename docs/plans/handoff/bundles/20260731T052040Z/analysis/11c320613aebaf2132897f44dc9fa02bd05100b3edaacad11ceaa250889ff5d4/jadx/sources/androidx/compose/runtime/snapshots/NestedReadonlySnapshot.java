package androidx.compose.runtime.snapshots;

import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NestedReadonlySnapshot extends Snapshot {
    public final Snapshot parent;
    public final Function1 readObserver;

    public NestedReadonlySnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1, Snapshot snapshot) {
        super(j, snapshotIdSet);
        this.readObserver = function1;
        this.parent = snapshot;
        snapshot.nestedActivated$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void dispose() {
        Snapshot snapshot = this.parent;
        if (this.disposed) {
            return;
        }
        if (this.snapshotId != snapshot.getSnapshotId()) {
            closeAndReleasePinning$runtime();
        }
        snapshot.nestedDeactivated$runtime();
        this.disposed = true;
        synchronized (SnapshotKt.lock) {
            releasePinnedSnapshotLocked$runtime();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Function1 getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final boolean getReadOnly() {
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Function1 getWriteObserver$runtime() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void nestedActivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void nestedDeactivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void recordModified$runtime(StateObject stateObject) {
        SaversKt$$ExternalSyntheticLambda2 saversKt$$ExternalSyntheticLambda2 = SnapshotKt.emptyLambda;
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot takeNestedSnapshot(Function1 function1) {
        return new NestedReadonlySnapshot(this.snapshotId, this.invalid, SnapshotKt.mergedReadObserver(function1, this.readObserver, true), this.parent);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void notifyObjectsInitialized$runtime() {
    }
}
