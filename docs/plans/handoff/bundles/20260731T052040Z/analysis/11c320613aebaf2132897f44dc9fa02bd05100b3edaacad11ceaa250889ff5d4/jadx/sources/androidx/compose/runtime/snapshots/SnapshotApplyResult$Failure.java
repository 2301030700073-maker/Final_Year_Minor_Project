package androidx.compose.runtime.snapshots;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotApplyResult$Failure extends SnapshotId_jvmKt {
    public final MutableSnapshot snapshot;

    public SnapshotApplyResult$Failure(MutableSnapshot mutableSnapshot) {
        this.snapshot = mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotId_jvmKt
    public final void check() {
        MutableSnapshot mutableSnapshot = this.snapshot;
        mutableSnapshot.dispose();
        throw new SnapshotApplyConflictException(mutableSnapshot);
    }
}
