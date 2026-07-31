package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotId_jvmKt apply() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void dispose() {
        synchronized (SnapshotKt.lock) {
            releasePinnedSnapshotLocked$runtime();
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void nestedActivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void nestedDeactivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void notifyObjectsInitialized$runtime() {
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot takeNestedMutableSnapshot(Function1 function1, Function1 function12) {
        return (MutableSnapshot) ((Snapshot) SnapshotKt.advanceGlobalSnapshot(new NavHostKt$$ExternalSyntheticLambda14(2, new Latch$await$2$2(6, function1, function12))));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot takeNestedSnapshot(Function1 function1) {
        return (ReadonlySnapshot) ((Snapshot) SnapshotKt.advanceGlobalSnapshot(new NavHostKt$$ExternalSyntheticLambda14(2, new MonotonicFrameClockKt$withFrameMillis$2(1, function1))));
    }
}
