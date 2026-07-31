package androidx.compose.runtime.snapshots;

import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnapshotApplyResult$Failure extends SnapshotId_jvmKt {
    public final MutableSnapshot snapshot;

    public SnapshotApplyResult$Failure(MutableSnapshot mutableSnapshot) {
        this.snapshot = mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotId_jvmKt
    public final void check() {
        this.snapshot.dispose();
        throw new InstanceCreationException();
    }
}
