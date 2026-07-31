package androidx.compose.runtime.snapshots;

import kotlin.reflect.full.IllegalCallableAccessException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapshotApplyResult$Failure extends SnapshotId_jvmKt {
    public final MutableSnapshot snapshot;

    public SnapshotApplyResult$Failure(MutableSnapshot mutableSnapshot) {
        this.snapshot = mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotId_jvmKt
    public final void check() {
        this.snapshot.dispose();
        throw new IllegalCallableAccessException();
    }
}
